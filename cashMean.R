## R functions to cache potentially time consuming opperations
## Assignment 2 of R Programing through Coursera/John Hopkins
## Instructors: Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD

## The following function calculates the mean of the special "vector" 
## created with makeVector. However, it first checks to see if the 
## mean has already been calculated. If so, it gets the mean from the 
## cache and skips the computation. Otherwise, it calculates the mean 
## of the data and sets the value of the mean in the cache via the 
## setmean function.

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}