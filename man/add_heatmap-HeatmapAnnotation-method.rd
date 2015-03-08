\name{add_heatmap-HeatmapAnnotation-method}
\alias{add_heatmap,HeatmapAnnotation-method}
\title{
Add two row annotations or add heatmaps as a heatmap list  


}
\description{
Add two row annotations or add heatmaps as a heatmap list  


}
\usage{
\S4method{add_heatmap}{HeatmapAnnotation}(object, x)
}
\arguments{

  \item{object}{a \code{\link{HeatmapAnnotation-class}} object.}
  \item{x}{a \code{\link{Heatmap-class}} object, a \code{\link{HeatmapAnnotation-class}} object or a \code{\link{HeatmapList-class}} object.}

}
\details{
There is a shortcut function \code{+.HeatmapAnnotation}.  


}
\value{
A \code{\link{HeatmapList-class}} object.  


}
\author{
Zuguang Gu <z.gu@dkfz.de>  


}
\examples{
mat = matrix(rnorm(80, 2), 8, 10)
mat = rbind(mat, matrix(rnorm(40, -2), 4, 10))
rownames(mat) = letters[1:12]
colnames(mat) = letters[1:10]

ht = Heatmap(mat)

ha = HeatmapAnnotation(points = anno_simple(1:12, type = "p", which = "row"), 
    which = "row")
add_heatmap(ha, ht)
}
