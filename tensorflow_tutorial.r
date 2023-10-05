library(tidyr)
library(ggplot2)
library(keras)
library(tensorflow)
use_condaenv("tensorflow_r", required = TRUE)


# Arrays reminder

## 1D
a <- array(c(1:9))
a
b <- array(1:9, c(3, 3))
b
c <- array(1:27, c(3, 3, 3))
c

# Tensors

a_tf <- as_tensor(a)
a_tf

a_var <- tf$Variable(c(1, 2, 3))
a_var

b_tf <- as_tensor(b)
b_tf

c_tf <- as_tensor(c)
c_tf

## Check details

a_tf$dtype # type of data inside tensor

a_tf$device # device on which tensor is treated

# Gradients

x <- tf$Variable(1.0)

f <- function(x){

    x^2 + 2 * x - 5
}

## Compute gradients

with(tf$GradientTape() %as% tape, {

    y <- f(x)
})

g_x <- tape$gradient(y, x)

g_x
