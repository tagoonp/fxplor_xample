# Loading mtcars data
data("mtcars")

# Writing mtcars data
rnd_url <- "/var/www/html/fxplor_xample/tmp_result/"
myFun <- function(n = 5000) {
  a <- do.call(paste0, replicate(5, sample(LETTERS, n, TRUE), FALSE))
  paste0(a, sprintf("%04d", sample(9999, n, TRUE)), sample(LETTERS, n, TRUE))
}
rnd_string <- myFun(1)
static_fname <- "_mtcars.txt"

result_filefullname <- paste(rnd_url, rnd_string, static_fname,sep="")
# result_filefullname
write.table(mtcars, file = result_filefullname, sep = "\t",
            row.names = TRUE, col.names = NA)