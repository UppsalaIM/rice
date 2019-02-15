# rice

Rule Induction of CNP Explanations (RICE) is a methodology for extracting human-readable explanation models from machine learning models.

## Requirements

- Python 3
- SWI Prolog 8

## Running the code

To start the learning:

    py lights_train.py  

It saves the trained model in `lights_model.h5`

To start the probing:

    py lights_probe.py  

It loads `lights_model.h5` and outputs the examples it found to `lights_examples.pl`

To start the synthesis:

    cd cnp  
    swipl loader.pl  
    ?- jobFromLocalFile('../lights_examples.pl').  
