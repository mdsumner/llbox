  edge0 <- function(x, y, nverts = 6) {
  segmentize(cbind(x, y), nverts)
}
segmentize <- function(x, nverts = 6) {
  xx <- seq(x[1L, 1L], x[2L, 1L], length.out = nverts)
  cbind(xx, approxfun(x)(xx))
}
north <- function(x = c(-180, 180), y = 90, nverts = 18) {
 edge0(x, y, nverts)
}

south <- function(x = c(180, -180), y = -90, nverts = 18) {
  edge0(x, y, nverts)
}

west <- function(x = -180, y = c(-90, 90), nverts = 18) {
  edge0(y, x, nverts)[,2:1]
}
east <- function(x = 180, y = c(90, -90), nverts = 18) {
  edge0(y, x, nverts)[,2:1]
}

linearize <- function(x) {
  dupes <- duplicated(x)
  x[!dupes, ]
}

polygonate <- function(x) {
  x <- linearize(x)
 rbind(x, x[1L, , drop = FALSE])
}




