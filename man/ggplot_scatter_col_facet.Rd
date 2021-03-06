% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot_scatter_fun.R
\name{ggplot_scatter_col_facet}
\alias{ggplot_scatter_col_facet}
\title{Scatter ggplot that is coloured and facetted.}
\usage{
ggplot_scatter_col_facet(data, x_var, y_var, col_var, facet_var,
  hover_var = NULL, size = 1, pal = NULL, rev_pal = FALSE,
  remove_na = FALSE, x_scale_zero = TRUE, x_scale_trans = "identity",
  y_scale_zero = TRUE, y_scale_trans = "identity",
  col_scale_drop = FALSE, facet_scales = "fixed", facet_nrow = NULL,
  col_method = NULL, quantile_cuts = NULL, quantile_by_facet = TRUE,
  bin_cuts = NULL, legend_ncol = 3, legend_digits = 1,
  title = "[Title]", subtitle = NULL, x_title = "[X title]",
  y_title = "[Y title]", col_title = "", caption = "",
  legend_labels = NULL, font_family = "Arial", font_size_title = 11,
  font_size_body = 10, wrap_title = 75, wrap_subtitle = 80,
  wrap_x_title = 50, wrap_y_title = 50, wrap_col_title = 25,
  wrap_caption = 80, isMobile = FALSE)
}
\arguments{
\item{data}{An ungrouped summarised tibble or dataframe. Required input.}

\item{x_var}{Unquoted numeric variable to be on the x axis. Required input.}

\item{y_var}{Unquoted numeric variable to be on the y axis. Required input.}

\item{col_var}{Unquoted variable for points to be coloured by. Required input.}

\item{facet_var}{Unquoted categorical variable to facet the data by. Required input.}

\item{hover_var}{Unquoted variable to be an additional hover variable for when used inside plotly::ggplotly(). Defaults to NULL.}

\item{size}{Size of points. Defaults to 1.}

\item{pal}{Character vector of hex codes. Defaults to NULL, which selects the Stats NZ palette or viridis.}

\item{rev_pal}{Reverses the palette. Defaults to FALSE.}

\item{remove_na}{TRUE or FALSE of whether to remove NAs of the colour variable. Defaults to FALSE.}

\item{x_scale_zero}{TRUE or FALSE whether the minimum of the x scale is zero. Defaults to TRUE.}

\item{x_scale_trans}{A string specifying a transformation for the x scale. Defaults to "identity".}

\item{y_scale_zero}{TRUE or FALSE whether the minimum of the y scale is zero. Defaults to TRUE.}

\item{y_scale_trans}{A string specifying a transformation for the y scale. Defaults to "identity".}

\item{col_scale_drop}{TRUE or FALSE of whether to drop unused levels from the legend. Defaults to FALSE.}

\item{facet_scales}{Whether facet_scales should be "fixed" across facets, "free" in both directions, or free in just one direction (i.e. "free_x" or "free_y"). Defaults to "fixed".}

\item{facet_nrow}{The number of rows of facetted plots. Defaults to NULL, which generally chooses 2 rows. Not applicable to where isMobile is TRUE.}

\item{col_method}{The method of colouring features, either "bin", "quantile" or "category." Defaults to "bin".}

\item{quantile_cuts}{A vector of probability cuts applicable where col_method of "quantile" is selected. The first number in the vector should 0 and the final number 1. Defaults to quartiles.}

\item{quantile_by_facet}{TRUE of FALSE whether quantiles should be calculated for each group of the facet variable. Defaults to TRUE.}

\item{bin_cuts}{A vector of bin cuts applicable where col_method of "bin" is selected. The first number in the vector should be either -Inf or 0, and the final number Inf. If NULL, 'pretty' breaks are used.}

\item{legend_ncol}{The number of columns in the legend.}

\item{legend_digits}{Select the appropriate number of decimal places for numeric variable auto legend labels. Defaults to 1.}

\item{title}{Title string. Defaults to "[Title]".}

\item{subtitle}{Subtitle string. Defaults to "[Subtitle]".}

\item{x_title}{X axis title string. Defaults to "[X title]".}

\item{y_title}{Y axis title string. Defaults to "[Y title]".}

\item{col_title}{Colour title string for the legend. Defaults to NULL.}

\item{caption}{Caption title string. Defaults to NULL.}

\item{legend_labels}{A vector of manual legend label values. Defaults to NULL, which results in automatic labels.}

\item{font_family}{Font family to use. Defaults to "Arial".}

\item{font_size_title}{Font size for the title text. Defaults to 11.}

\item{font_size_body}{Font size for all text other than the title. Defaults to 10.}

\item{wrap_title}{Number of characters to wrap the title to. Defaults to 75. Not applicable where isMobile equals TRUE.}

\item{wrap_subtitle}{Number of characters to wrap the subtitle to. Defaults to 80. Not applicable where isMobile equals TRUE.}

\item{wrap_x_title}{Number of characters to wrap the x title to. Defaults to 50. Not applicable where isMobile equals TRUE.}

\item{wrap_y_title}{Number of characters to wrap the y title to. Defaults to 50. Not applicable where isMobile equals TRUE.}

\item{wrap_col_title}{Number of characters to wrap the colour title to. Defaults to 25. Not applicable where isMobile equals TRUE.}

\item{wrap_caption}{Number of characters to wrap the caption to. Defaults to 80. Not applicable where isMobile equals TRUE.}

\item{isMobile}{Whether the plot is to be displayed on a mobile device. Defaults to FALSE. In a shinyapp, isMobile should be specified as input$isMobile.}
}
\value{
A ggplot object.
}
\description{
Scatter ggplot that is coloured and facetted.
}
\examples{
plot_data <- diamonds \%>\%
  dplyr::sample_frac(0.05) \%>\%
  dplyr::mutate(cut = stringr::str_to_sentence(cut))

plot <- ggplot_scatter_col_facet(data = plot_data, x_var = carat, y_var = price, col_var = color,
                                 facet_var = cut)

plot

plotly::ggplotly(plot, tooltip = "text")
}
