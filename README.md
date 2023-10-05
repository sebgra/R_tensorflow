# R_tensorflow
Set of tutorials using R and TensorFlow


## Install

```bash
mamba create -n tensorflow_r python==3.9
mamba activate tensorflow_r 
sudo apt-get install python3-venv
mamba install -c conda-forge tensorflow
which python
```

```R
remotes::install_github("rstudio/tensorflow")
install.packages("keras")
Sys.setenv(TENSORFLOW_PYTHON="/usr/bin/python") #result of which python

library(tensorflow)
library(keras)

tf$constant("Hello TensorFlow!")
```