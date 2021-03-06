% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/printers.R
\name{flextable_to_rmd}
\alias{flextable_to_rmd}
\title{flextable raw code}
\usage{
flextable_to_rmd(
  x,
  ft.align = opts_current$get("ft.align"),
  ft.split = opts_current$get("ft.split"),
  ft.tabcolsep = opts_current$get("ft.tabcolsep"),
  ft.arraystretch = opts_current$get("ft.arraystretch"),
  ft.left = opts_current$get("ft.left"),
  ft.top = opts_current$get("ft.top"),
  webshot = opts_current$get("webshot"),
  bookdown = FALSE,
  pandoc2 = TRUE,
  print = TRUE
)
}
\arguments{
\item{x}{a flextable object}

\item{ft.align}{flextable alignment, supported values are 'left', 'center' and 'right'.}

\item{ft.split}{Word option 'Allow row to break across pages' can be
activated when TRUE.}

\item{ft.tabcolsep}{space between the text and the left/right border of its containing
cell, the default value is 8 points.}

\item{ft.arraystretch}{height of each row relative to its default
height, the default value is 1.5.}

\item{ft.left, ft.top}{Position should be defined with options \code{ft.left}
and \code{ft.top}. Theses are the top left coordinates in inches
of the placeholder that will contain the table. Their
default valuues are 1 and 2 inches.}

\item{webshot}{webshot package as a scalar character, one of "webshot" or
"webshot2".}

\item{bookdown}{\code{TRUE} or \code{FALSE} (default) to support cross referencing with bookdown.}

\item{pandoc2}{\code{TRUE} (default) or \code{FALSE} to get the string in a pandoc raw HTML attribute
(only valid when pandoc version is \verb{>= 2}.}

\item{print}{print output if TRUE}
}
\description{
Print openxml, latex or html code of a
flextable. The function is particularly useful when you want
to generate flextable in a loop from a R Markdown document.

Inside R Markdown document, chunk option \code{results} must be
set to 'asis'.

All arguments whose name starts with \code{ft.} can be set in the chunk options.

See \link{knit_print.flextable} for more details.
}
\examples{
demo_loop <- system.file(package = "flextable", "examples/rmd", "loop_with_flextable.Rmd")
rmd_file <- tempfile(fileext = ".Rmd")
file.copy(demo_loop, to = rmd_file, overwrite = TRUE)
rmd_file # R Markdown document used for demo
if(require("rmarkdown", quietly = TRUE)){
#  render(input = rmd_file, output_format = "word_document",
#    output_file = "loop_with_flextable.docx")
#  render(input = rmd_file, output_format = "html_document",
#    output_file = "loop_with_flextable.html")
#  render(input = rmd_file,
#    output_format = rmarkdown::pdf_document(latex_engine = "xelatex"),
#    output_file = "loop_with_flextable.pdf")
}

}
\seealso{
Other flextable print function: 
\code{\link{as_raster}()},
\code{\link{htmltools_value}()},
\code{\link{knit_print.flextable}()},
\code{\link{plot.flextable}()},
\code{\link{print.flextable}()},
\code{\link{save_as_docx}()},
\code{\link{save_as_html}()},
\code{\link{save_as_image}()},
\code{\link{save_as_pptx}()}
}
\concept{flextable print function}
