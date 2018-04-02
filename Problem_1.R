# I got 99 problems but a ...
# (original version)

# a)
x <- c(4, 1, 1, 4)

# b)
y <- c(1, 4)

# c)
# WARNING: Verbosity follows.
# prints out 3 -3 0 0. This is basic vector subtraction => each number in the first vector is
# reduced by it's corresponding number in the second, i.e. 4 - 1, 1 - 4, 1 - 0, 4 - 0. R
# automatically pads out vector y with 0's for the missing values.
x - y

# d)
s <- c(x, y)

# e)
length(rep(s, 10))

# f) This is getting repetitive... 
rep(s, each=3)

# g)
#   i)
seq(from = 7, to = 21)
#   ii)
7 : 21

# h)
length(7:21)