savepng <- function(x) {
        fname <- paste("plot", x, ".png")
        png(filename = fname, width = 480, height = 480, bg = "white")
}