# Rule Induction of CNP Explanations 

Rule Induction of CNP Explanations (RICE) is a methodology for extracting human-readable explanation models from machine learning models. The current code in this repository contains an implementation for our paper, ["Why did you do that?": Explaining black box models with inductive synthesis](https://arxiv.org/abs/1904.09273).

If you find RICE useful, please consider citing:

> Paçacı G., Johnson D., McKeever S., Hamfelt A. (2019) "Why Did You Do That?" Explaining black box models with Inductive Synthesis. In: Rodrigues J. et al. (eds) Computational Science – ICCS 2019. ICCS 2019. Lecture Notes in Computer Science, vol 11540. Springer, Cham

```
@InProceedings{10.1007/978-3-030-22750-0_27,
author="Pa{\c{c}}ac{\i}, G{\"o}rkem and Johnson, David and McKeever, Steve and Hamfelt, Andreas",
editor="Rodrigues, Jo{\~a}o M. F. and Cardoso, Pedro J. S. and Monteiro, J{\^a}nio and Lam, Roberto and Krzhizhanovskaya, Valeria V. and Lees, Michael H. and Dongarra, Jack J. and Sloot, Peter M.A.",
title="``Why Did You Do That?'' Explaining black box models with Inductive Synthesis",
booktitle="Computational Science -- ICCS 2019",
year="2019",
publisher="Springer International Publishing",
address="Cham",
pages="334--345",
isbn="978-3-030-22750-0"
}

```

## Requirements

- Python 3
- SWI Prolog 8

## Usage

To train the TensorFlow model:

    py lights_train.py  

This script saves the trained model in `lights_model.h5`

To start probing the model:

    py lights_probe.py  

This script loads `lights_model.h5` and outputs the examples it found to `lights_examples.pl`

To start the inductive synthesis using CNPInduce:

    cd cnp  
    swipl loader.pl  
    ?- jobFromLocalFile('../lights_examples.pl').  

The synthesis engine takes the examples output from the probing in `lights_examples.pl` and generates explanation models as CNP programs.
