## R functions to cache potentially time consuming opperations
## Assignment 2 of R Programing through Coursera/John Hopkins
## Instructors: Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD

## Function from assignment creates a special "vector", which is 
## really a list containing a function to

## 1. set the value of the vector
## 2. get the value of the vector
## 3. set the value of the mean
## 4. get the value of the mean

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}