
# we need that to not crash galaxy with an UTF8 error on German LC settings.
loc <- Sys.setlocale("LC_MESSAGES", "en_US.UTF-8")

require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output = args[2]

RGSet <- get(load(input))

swan <-  preprocessSWAN(RGSet, mSet = NULL, verbose = FALSE) 

save(swan, file = output)


