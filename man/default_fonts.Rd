% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{default_fonts}
\alias{default_fonts}
\title{Provide a vector of sensible system fonts for use with \strong{gt} tables}
\usage{
default_fonts()
}
\value{
A character vector of font names.
}
\description{
The vector of fonts given by \code{default_fonts()} can be safely used with a
\strong{gt} table rendered as HTML since the font stack is expected to be
available across a wide set of systems. We can always specify additional
fonts to use and place them higher in precedence order, done through
prepending to this vector (i.e., this font stack should be placed after that
to act as a set of fallbacks).

This vector of fonts is useful when specifying \code{font} values in the
\code{\link[=cell_text]{cell_text()}} function (itself usable in the \code{\link[=tab_style]{tab_style()}} and
\code{\link[=tab_style_body]{tab_style_body()}} functions). If using \code{\link[=opt_table_font]{opt_table_font()}} (which also has a
\code{font} argument) we probably don't need to specify this vector of fonts since
that function prepends font names (this is handled by its \code{add} option, which
is \code{TRUE} by default).
}
\section{Examples}{


Let's use the \code{\link{exibble}} dataset to create a simple, two-column \strong{gt} table
(keeping only the \code{char} and \code{time} columns). Attempting to modify the fonts
used for the \code{time} column is much safer if \code{default_fonts()} is appended to
the end of the \code{font} listing in the \code{cell_text()} call. What will happen,
since the \code{"Comic Sansa"} and \code{"Menloa"} fonts shouldn't exist, is that we'll
get the first available font from vector of fonts that \code{default_fonts()}
provides.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{exibble |>
  dplyr::select(char, time) |>
  gt() |>
  tab_style(
    style = cell_text(
      font = c("Comic Sansa", "Menloa", default_fonts())
    ),
    locations = cells_body(columns = time)
  )
}\if{html}{\out{</div>}}

\if{html}{\out{
<img src="https://raw.githubusercontent.com/rstudio/gt/master/images/man_default_fonts_1.png" alt="This image of a table was generated from the first code example in the `default_fonts()` help file." style="width:100\%;">
}}
}

\section{Function ID}{

8-31
}

\section{Function Introduced}{

\code{v0.2.2} (August 5, 2020)
}

\seealso{
Other helper functions: 
\code{\link{adjust_luminance}()},
\code{\link{cell_borders}()},
\code{\link{cell_fill}()},
\code{\link{cell_text}()},
\code{\link{cells_body}()},
\code{\link{cells_column_labels}()},
\code{\link{cells_column_spanners}()},
\code{\link{cells_footnotes}()},
\code{\link{cells_grand_summary}()},
\code{\link{cells_row_groups}()},
\code{\link{cells_source_notes}()},
\code{\link{cells_stub}()},
\code{\link{cells_stub_grand_summary}()},
\code{\link{cells_stub_summary}()},
\code{\link{cells_stubhead}()},
\code{\link{cells_summary}()},
\code{\link{cells_title}()},
\code{\link{currency}()},
\code{\link{escape_latex}()},
\code{\link{from_column}()},
\code{\link{google_font}()},
\code{\link{gt_latex_dependencies}()},
\code{\link{html}()},
\code{\link{md}()},
\code{\link{nanoplot_options}()},
\code{\link{pct}()},
\code{\link{px}()},
\code{\link{random_id}()},
\code{\link{stub}()},
\code{\link{system_fonts}()}
}
\concept{helper functions}
