#!/usr/bin/r

# Access to and Manipulation of the Body of a Function

# Description
# Get or set the body of a function which is basically all 
# of the function definition but its formal arguments (formals), 
# see the ‘Details’.

# Usage
# body(fun = sys.function(sys.parent()))
# body(fun, envir = environment(fun)) <- value

# Arguments
# fun	
# a function object, or see ‘Details’.

# envir	
# environment in which the function should be defined.

# value	
# an object, usually a language object: see section ‘Value’.

# Details
# For the first form, fun can be a character string naming the 
# function to be manipulated, which is searched for from the parent 
# frame. If it is not specified, the function calling body is used.

# The bodies of all but the simplest are braced expressions, that is 
# calls to {: see the ‘Examples’ section for how to create such a call.

# Value
# body returns the body of the function specified. This is normally a 
# language object, most often a call to {, but it can also be a symbol 
# such as pi or a constant (e.g., 3 or "R") to be the return value of 
# the function.

# The replacement form sets the body of a function to the object on the 
# right hand side, and (potentially) resets the environment of the function, 
# and drops attributes. If value is of class "expression" the first element 
# is used as the body: any additional elements are ignored, with a warning.

# See Also
# The three parts of a (non-primitive) function are its formals, body, and 
# environment.

# Further, see alist, args, function.

# Examples
body(body)
f <- function(x) x^5
body(f) <- quote(5^x)
## or equivalently  body(f) <- expression(5^x)
f(3) # = 125
body(f)

## creating a multi-expression body
e <- expression(y <- x^2, return(y)) # or a list
body(f) <- as.call(c(as.name("{"), e))
f
f(8)

## Using substitute() may be simpler than 'as.call(c(as.name("{",..)))':
stopifnot(identical(body(f), substitute({ y <- x^2; return(y) })))