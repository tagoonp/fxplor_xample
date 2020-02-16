args <- commandArgs(TRUE)

N <- args[1]
Prefix <- args[2]
#N <- 100
x <- rnorm(N,0,1)

# Writing mtcars data
rnd_url <- "/var/www/html/fxplor_xample/tmp_result/"
rnd_string <- Prefix
static_fname <- "_temp.png"

result_filefullname <- paste(rnd_url, rnd_string, static_fname,sep="")

# result_filefullname
png(filename = result_filefullname, width=500, height=500)
hist(x, col="lightblue")
dev.off()
