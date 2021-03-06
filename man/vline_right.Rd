% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/borders.R
\name{vline_right}
\alias{vline_right}
\title{set flextable right vertical borders}
\usage{
vline_right(x, i = NULL, border = NULL, part = "all")
}
\arguments{
\item{x}{a flextable object}

\item{i}{rows selection}

\item{border}{border properties defined by a call to \code{\link[=fp_border]{fp_border()}}}

\item{part}{partname of the table (one of 'all', 'body', 'header', 'footer')}
}
\description{
The function is applying vertical borders to the
right side of one or all parts of a flextable. The line is the
right border of selected cells of the last column.
}
\section{Illustrations}{


\if{html}{\figure{fig_vline_right_1.png}{options: width=50\%}}
}

\examples{
library(officer)
std_border = fp_border(color="orange")

ft <- flextable(head(iris))
ft <- border_remove(x = ft)

# add vertical border on the left side of the table
ft <- vline_right(ft, border = std_border )
ft
}
\seealso{
Other borders management: 
\code{\link{border_inner_h}()},
\code{\link{border_inner_v}()},
\code{\link{border_inner}()},
\code{\link{border_outer}()},
\code{\link{border_remove}()},
\code{\link{border}()},
\code{\link{hline_bottom}()},
\code{\link{hline_top}()},
\code{\link{hline}()},
\code{\link{vline_left}()},
\code{\link{vline}()}
}
\concept{borders management}
