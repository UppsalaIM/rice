# This script loads the trained model from the file lights_model.h5 file,
# displays the plots and prints out the observables in the CNP form.
# December 8th, Gorkem
import os
os.environ['TF_CPP_MIN_LOG_LEVEL']='2'
import tensorflow as tf
from tensorflow import keras
import numpy as np
import matplotlib.pyplot as plt
from itertools import islice
import sys

if ('-plot' not in sys.argv):
    print('Use argument -plot for displaying the plots.')

filename = 'lights_model.h5'

model = keras.models.load_model(filename)
# model.summary()

STEPS = 100

def distance_sweep(lights_state):
    return np.array(np.array([lights_state + [x] for x in np.linspace(0, 1, STEPS+1)]))

red_sweep = distance_sweep([1, 0, 0])
red_o = [np.rint(x[0]) for x in model.predict(red_sweep)]
amb_sweep = distance_sweep([0, 1, 0])
amb_o = [np.rint(x[0]) for x in model.predict(amb_sweep)]
gre_sweep = distance_sweep([0, 0, 1])
gre_o = [np.rint(x[0]) for x in model.predict(gre_sweep)]

red_amb_sweep = distance_sweep([1, 1, 0])
red_amb_o = [round(x[0]) for x in model.predict(red_amb_sweep)]
amb_gre_sweep = distance_sweep([0, 1, 1])
amb_gre_o = [round(x[0]) for x in model.predict(amb_gre_sweep)]
red_gre_sweep = distance_sweep([1, 0, 1])
red_gre_o = [round(x[0]) for x in model.predict(red_gre_sweep)]
all_on_sweep = distance_sweep([1, 1, 1])
all_on_o = [round(x[0]) for x in model.predict(all_on_sweep)]

def intervals(ts):
    # [(t0, t1), (t1, t2), (t2, t3), ...]
    return zip(ts, islice(ts, 1, None))

def printnl(es):
    print(*es, sep='\n')

def first_last(es):
    # (e0, en)
    first = None
    last = None
    for e in es:
        if first is None:
            first = e
        last = e
    return (first, last)


# threshold for identifying critical values. doesn't matter as long as mu>epsilon since the outputs are rounded
mu = 1
# [([i0, i1,...], [o0, o1,...]), ([i0, i1,...], [o0, o1,...]), ...]
sweeps = [(red_sweep, red_o), (amb_sweep, amb_o), (gre_sweep, gre_o)]
# [[(i0, o0), (i1, o1), ...], [(i0, o0),(i1, o1),...], ...]
sweeps_io_paired = [list(zip(inputs, outputs)) for (inputs, outputs) in sweeps]
# [[((i0, o0),(i1,o1)), ((i1,o1),(i2,o2)), ...], [((i0, o0), (i1, o1),...)], ...]
sweeps_intervals = [intervals(ios) for ios in sweeps_io_paired]
# [[((i0, o0),(i1,o1)), ((i1,o1),(i2,o2)), ...], [((i0, o0), (i1, o1),...)], ...]
sweeps_critical_intervals = [[[(i1,o1),(i2,o2)] for ((i1,o1),(i2,o2)) in swp_intervals if abs(o2-o1)>=mu] for swp_intervals in sweeps_intervals]
# [[(i0,o0), ..., (in,on)], [(i0,o0), ..., (in,on)], ...]
sweeps_critical_samples = [sum(io_intervals, []) for io_intervals in sweeps_critical_intervals]
# [((i0,o0),(iz,oz)), ((i0,o0),(iz,oz)), ...]
sweeps_limits = [first_last(sweep_io) for sweep_io in sweeps_io_paired]
# [[(i0,o0), (i1,o1), ..., (in,on), (iz,oz)], [(i0,o0), (i1,o1), ..., (in,on), (iz,oz)], ...]
# not distinct (!)
sweeps_all_points = [[first]+criticals+[last] for (criticals, (first, last)) in zip(sweeps_critical_samples, sweeps_limits)]
# [(i0a,o0a), (i1a,o1a), ..., (i0b,o0b), (i1b,o1b), ...]
sweeps_flattened = sum(sweeps_all_points, [])
# [c0, c1, c2, ...] not distinct
all_constants = sum([list(i)+[o] for (i,o) in sweeps_flattened], [])
# [{c0, c1, c2, ...}] distinct
distinct_constants = sorted(set(all_constants))


# GENERATE SYNTHESIS SCRIPT

file = open("lights_examples.pl", "w")
file.write(':- multifile jobValence/1.\n')
file.write(':- multifile jobConstant/1.\n')
file.write(':- multifile jobObservable/2.\n')
file.write('jobValence([rd:in, am:in, gr:in, dist:in, go:out]).\n')
file.write("%% Constants\n")
for i,c in enumerate(distinct_constants):
    file.write("jobConstant(%(c)s).\n" % {'i':i, 'c':c})
file.write("%% Observables\n")
input_names = ['red', 'amber', 'green', 'distance']
syn_signature = '[rd:in, am:in, gr:in, dist:in, go:out]'
for io in sweeps_flattened:
    ((red, amber, green, distance), go) = io
    file.write('jobObservable([rd:%(r).2f, am:%(a).2f, gr:%(g).2f, dist:%(d).2f, go:%(go).2f], true).\n' % {'r':red, 'a':amber, 'g':green, 'd':distance, 'go':go})

file.close()
print('Examples are printed in lights_examples.pl. ')
# syn_observables = [['i_%(i)d:%(inp)s' % {'i':i, 'inp':inp} for i, inp in enumerate(inps)] + ['o:'+str(o)] for (inps, o) in sweeps_flattened]
# print("[" + ', '.join(map(lambda args: "[" + ', '.join(args) + "]", syn_observables)) + "]")


# ========================================
# QUITS HERE IF NO -plot ARGUMENT IS GIVEN
# ========================================

if ('-plot' not in sys.argv):
    quit()

plt.rcParams["figure.figsize"] = (12, 3) # (w, h)
fig, (ax1, ax2, ax3) = plt.subplots(ncols=3, nrows=1)
ax1.plot([x[3] for x in red_sweep], red_o, c='red')
ax1.set_title('Red')
ax1.set_xlabel('dist. from lights in hundreds of m')
ax1.set_ylabel('stop (0) or go (1)')
ax1.set_xlim([0, 1])
ax1.set_ylim([-0.01, 1.01])

ax2.plot([x[3] for x in amb_sweep], amb_o, c='orange')
ax2.set_title('Amber')
ax2.set_xlabel('dist. from lights in hundreds of m')
ax2.set_xlim([0, 1])
ax2.set_ylim([-0.01, 1.01])

ax3.plot([x[3] for x in gre_sweep], gre_o, c='green')
ax3.set_title('Green')
ax3.set_xlabel('dist. from lights in hundreds of m')
ax3.set_xlim([0, 1])
ax3.set_ylim([-0.01, 1.01])

plt.draw()
plt.waitforbuttonpress(0)



plt.rcParams["figure.figsize"] = (12, 3) # (w, h)
fig, (ax1, ax2, ax3, ax4) = plt.subplots(ncols=4, nrows=1)
ax1.plot([x[3] for x in red_amb_sweep], red_amb_o, c='blue')
ax1.set_title('Red and Amber')
ax1.set_xlabel('dist. from lights in hundreds of m')
ax1.set_ylabel('stop (0) or go (1)')
ax1.set_xlim([0, 1])
ax1.set_ylim([-0.01, 1.01])

ax2.plot([x[3] for x in amb_gre_sweep], amb_gre_o, c='blue')
ax2.set_title('Amber and Green')
ax2.set_xlabel('dist. from lights in hundreds of m')
ax2.set_xlim([0, 1])
ax2.set_ylim([-0.01, 1.01])

ax3.plot([x[3] for x in red_gre_sweep], red_gre_o, c='blue')
ax3.set_title('Red and Green')
ax3.set_xlabel('dist. from lights in hundreds of m')
ax3.set_xlim([0, 1])
ax3.set_ylim([-0.01, 1.01])

ax4.plot([x[3] for x in all_on_sweep], all_on_o, c='blue')
ax4.set_title('All on')
ax4.set_xlabel('dist. from lights in hundreds of m')
ax4.set_xlim([0, 1])
ax4.set_ylim([-0.01, 1.01])

plt.draw()
plt.waitforbuttonpress(0)
