args <- commandArgs(TRUE)

N <- args[1]
x <- rnorm(N,0,1)

# Writing mtcars data
rnd_url <- "/var/www/html/fxplor_xample/tmp_result/"
myFun <- function(n = 5000) {
  a <- do.call(paste0, replicate(5, sample(LETTERS, n, TRUE), FALSE))
  paste0(a, sprintf("%04d", sample(9999, n, TRUE)), sample(LETTERS, n, TRUE))
}
rnd_string <- myFun(1)
static_fname <- "_temp.png"

png(filename = static_fname, width=500, height=500)
hist(x, col="lightblue")
dev.off()
