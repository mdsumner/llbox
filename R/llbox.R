# library(crs2crs)
# crs2crs::crs_set_engine(crs2crs::crs_engine_sf(authority_compliant = FALSE))
#
# box0 <- function(x =c(-180, 180, -90, 90)) {
#   y <- x[3:4]
#   x <- x[1:2]  ## do some sanity checking
#
#   c(wk::wk_linestring(wk::xy(x[c(1, 1)], y[c(1, 2)], crs = "OGC:CRS84")),
#             wk::wk_linestring(wk::xy(x[c(1, 2)], y[c(2, 2)], crs = "OGC:CRS84")),
#             wk::wk_linestring(wk::xy(x[c(2, 2)], y[c(2, 1)], crs = "OGC:CRS84")),
#             wk::wk_linestring(wk::xy(x[c(2, 1)], y[c(1, 1)], crs = "OGC:CRS84")))
# }
#
#
# subdivide <- function(x) {
#   x <- wk::wk_coords(x)[, c("x", "y"), drop = FALSE]
#   wk::wk_linestring(wk::xy(c(x$x[1L], mean(x$x), x$x[2L]),
#   c(x$y[1L], mean(x$y), x$y[2L])))
#
# }
# llbox <- function(x = c(-180, 180), y = c(-90, 90), proj = NULL) {
#   s <- box0(c(x[1:2], y[1:2]))
#   if (!is.null(proj)) {
#     i <- 2L
#     l1 <- subdivide(s[i])
#     p1 <- subdivide(crs2crs::crs_transform(s[i], proj))
#
#
#     par(mfrow = c(2, 1))
#     plot(l1)
#     plot(p1)
#   }
# }
