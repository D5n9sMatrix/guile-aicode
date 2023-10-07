#!/usr/bin/r

# Integer Vectors

# Description
# Creates or tests for objects of type "integer".

# Usage
integer(length = 0)
as.integer(x, ...)
is.integer(x)

# Arguments

# length	
#A non-negative integer specifying the desired length. Double values will be coerced 
# to integer: supplying an argument of length other than one is an error.

# x	
# object to be coerced or tested.

# ...	
# further arguments passed to or from other methods.

# Details
# Integer vectors exist so that data can be passed to C or Fortran code which expects them, 
# and so that (small) integer data can be represented exactly and compactly.

# Note that current implementations of R use 32-bit integers for integer vectors, so the range 
# of representable integers is restricted to about +/-2*10^9: doubles can hold much larger integers 
# exactly.

# Value
# integer creates a integer vector of the specified length. Each element of the vector is equal 
# to 0.

# as.integer attempts to coerce its argument to be of integer type. The answer will be NA unless 
# the coercion succeeds. Real values larger in modulus than the largest integer are coerced to NA 
# (unlike S which gives the most extreme integer of the same sign). Non-integral numeric values are 
# truncated towards zero (i.e., as.integer(x) equals trunc(x) there), and imaginary parts of complex 
# numbers are discarded (with a warning). Character strings containing optional whitespace followed 
# by either a decimal representation or a hexadecimal representation (starting with 0x or 0X) can be 
# converted, as well as any allowed by the platform for real numbers. Like as.vector it strips 
# attributes including names. (To ensure that an object x is of integer type without stripping 
# attributes, use storage.mode(x) <- "integer".)

# is.integer returns TRUE or FALSE depending on whether its argument is of integer type or not, 
# unless it is a factor when it returns FALSE.

# Note
# is.integer(x) does not test if x contains integer numbers! For that, use round, as in the function 
# is.wholenumber(x) in the examples.

# References
# Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. Wadsworth 
# & Brooks/Cole.

# See Also
# numeric, storage.mode.

# round (and ceiling and floor on that help page) to convert to integral values.

# Examples
## as.integer() truncates:
x <- pi * c(-1:1, 10)
as.integer(x)

is.integer(1) # is FALSE !

is.wholenumber <-
    function(x, tol = .Machine$double.eps^0.5)  abs(x - round(x)) < tol
is.wholenumber(1) # is TRUE
(x <- seq(1, 5, by = 0.5) )
is.wholenumber( x ) #-->  TRUE FALSE TRUE ...
