# This script generates the data for training the traffic lights sample,
# trains it, and saves the model to the file lights_model.h5 file.
# December 8th, Gorkem

import random
import tensorflow as tf
from tensorflow import keras
import sklearn.model_selection as sk
import numpy as np

def generate_driving_states(n):
    list = []
    for i in range(0, n):
        # [r, y, g], for example [1, 0, 0] means red light is on, amber and green are off
        lightstate = random.choice([[1,0,0], [0,1,0], [0,0,1]])
        distance = random.random() # 1.0 is 100 meters
        lightstate.append(distance) #index 3 becomes distance
        list.append(np.array(lightstate))
    return np.array(list)

def calculate_labels(light_states):
    labels = []
    for s in light_states:
        distance = s[3]
        distanceNoise = random.random() * 0.02 # introduce 2% noise to distance
        distance = min(max(distance + distanceNoise, 0.), 1.)
        label = [] # [0,1] go, [1,0] brake
        if s[0]==1: #red
            if distance <= 0.6:
                label=[0] # brake if less than 60m
            else:
                label=[1] # go
        elif s[1]==1: #amber
            if distance >= 0.1 and distance <= 0.8:
                label=[0] # brake if more than 10m and less than 80m
            else:
                label=[1] # go
        elif s[2]==1: #green
            label=[1] # go
        else:
            print('Error. Two lights on at the same time.')
            quit()
        labels.append(np.array(label))
    return np.array(labels)

states = generate_driving_states(50000)
labels = calculate_labels(states)
train_states, test_states, train_labels, test_labels = sk.train_test_split(states, labels, test_size=0.1)


model = keras.Sequential([
        keras.layers.Flatten(input_shape=[4]),
        keras.layers.Dense(11, activation=tf.nn.relu),
        keras.layers.Dense(11, activation=tf.nn.relu),
        keras.layers.Dense(1, activation=tf.nn.sigmoid)
])

model.compile(optimizer=keras.optimizers.Adam(lr=0.001, beta_1=0.9, beta_2=0.999, epsilon=None, decay=0.0, amsgrad=False),
              loss='mean_squared_error',
              metrics=['accuracy'])

model.fit(train_states, train_labels, epochs=10)

test_loss, test_acc = model.evaluate(test_states, test_labels)

print('Test accuracy:', test_acc)

filename = './lights_model.h5'
print('Saving model to file: ', filename)

model.save(filename)
