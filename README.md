# rice

Required: Python 3, SWI Prolog

To start the learning:

  py lights_train.py

It saves the trained model in lights_model.h5.

To start the probing:

  py lights_probe.py

It loads lights_model.h5 and outputs the examples it found in lights_examples.pl.

to start the synthesis:

  cd cnp
  swipl loader.pl
  ?- jobFromLocalFile('../lights_examples.pl').
