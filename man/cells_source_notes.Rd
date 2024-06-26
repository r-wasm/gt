% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{cells_source_notes}
\alias{cells_source_notes}
\title{Location helper for targeting the source notes}
\usage{
cells_source_notes()
}
\value{
A list object with the classes \code{cells_source_notes} and
\code{location_cells}.
}
\description{
The \code{cells_source_notes()} function is used to target all source notes in the
footer section of the table. This is useful for adding custom styles to the
source notes with \code{\link[=tab_style]{tab_style()}} (using the \code{locations} argument). The
'source_notes' location is generated by the \code{\link[=tab_source_note]{tab_source_note()}} function.
This location helper function cannot be used for the \code{locations} argument of
\code{\link[=tab_footnote]{tab_footnote()}} and doing so will result in a warning (with no change made
to the table).
}
\section{Overview of location helper functions}{


Location helper functions can be used to target cells with virtually any
function that has a \code{locations} argument. Here is a listing of all of the
location helper functions, with locations corresponding roughly from top to
bottom of a table:
\itemize{
\item \code{\link[=cells_title]{cells_title()}}: targets the table title or the table subtitle depending on
the value given to the \code{groups} argument (\code{"title"} or \code{"subtitle"}).
\item \code{\link[=cells_stubhead]{cells_stubhead()}}: targets the stubhead location, a cell of which is only
available when there is a stub; a label in that location can be created by
using the \code{\link[=tab_stubhead]{tab_stubhead()}} function.
\item \code{\link[=cells_column_spanners]{cells_column_spanners()}}: targets the spanner column labels with the
\code{spanners} argument; spanner column labels appear above the column labels.
\item \code{\link[=cells_column_labels]{cells_column_labels()}}: targets the column labels with its \code{columns}
argument.
\item \code{\link[=cells_row_groups]{cells_row_groups()}}: targets the row group labels in any available row
groups using the \code{groups} argument.
\item \code{\link[=cells_stub]{cells_stub()}}: targets row labels in the table stub using the \code{rows}
argument.
\item \code{\link[=cells_body]{cells_body()}}: targets data cells in the table body using intersections of
\code{columns} and \code{rows}.
\item \code{\link[=cells_summary]{cells_summary()}}: targets summary cells in the table body using the
\code{groups} argument and intersections of \code{columns} and \code{rows}.
\item \code{\link[=cells_grand_summary]{cells_grand_summary()}}: targets cells of the table's grand summary using
intersections of \code{columns} and \code{rows}
\item \code{\link[=cells_stub_summary]{cells_stub_summary()}}: targets summary row labels in the table stub using
the \code{groups} and \code{rows} arguments.
\item \code{\link[=cells_stub_grand_summary]{cells_stub_grand_summary()}}: targets grand summary row labels in the table
stub using the \code{rows} argument.
\item \code{\link[=cells_footnotes]{cells_footnotes()}}: targets all footnotes in the table footer (cannot be
used with \code{\link[=tab_footnote]{tab_footnote()}}).
\item \code{\link[=cells_source_notes]{cells_source_notes()}}: targets all source notes in the table footer
(cannot be used with \code{\link[=tab_footnote]{tab_footnote()}}).
}

When using any of the location helper functions with an appropriate function
that has a \code{locations} argument (e.g., \code{\link[=tab_style]{tab_style()}}), multiple locations
can be targeted by enclosing several \verb{cells_*()} helper functions in a
\code{list()} (e.g., \code{list(cells_body(), cells_grand_summary())}).
}

\section{Examples}{


Let's use a subset of the \code{\link{gtcars}} dataset to create a \strong{gt} table. Add a
source note (with \code{\link[=tab_source_note]{tab_source_note()}}) and style the source notes section
inside the \code{\link[=tab_style]{tab_style()}} call by using the \code{cells_source_notes()} helper
function for the targeting via the \code{locations} argument.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{gtcars |>
  dplyr::select(mfr, model, msrp) |>
  dplyr::slice(1:5) |>
  gt() |>
  tab_source_note(source_note = "From edmunds.com") |>
  tab_style(
    style = cell_text(
      color = "#A9A9A9",
      size = "small"
    ),
    locations = cells_source_notes()
  )
}\if{html}{\out{</div>}}

\if{html}{\out{
<img src="https://raw.githubusercontent.com/rstudio/gt/master/images/man_cells_source_notes_1.png" alt="This image of a table was generated from the first code example in the `cells_source_notes()` help file." style="width:100\%;">
}}
}

\section{Function ID}{

8-23
}

\section{Function Introduced}{

\code{v0.3.0} (May 12, 2021)
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
\code{\link{cells_stub}()},
\code{\link{cells_stub_grand_summary}()},
\code{\link{cells_stub_summary}()},
\code{\link{cells_stubhead}()},
\code{\link{cells_summary}()},
\code{\link{cells_title}()},
\code{\link{currency}()},
\code{\link{default_fonts}()},
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
