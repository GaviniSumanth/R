library(shiny)
#' Create a general page
#'
#' @param name The name of the page
#' @param sidebar The sidebar of the page
#' @param main The main content of the page
#' @return A shiny tag
#'
#' @examples
#' general_page(
#'     "Histogram",
#'     sliderInput(
#'         "obs",
#'         "Number of observations:",
#'         min = 1,
#'         max = 1000,
#'         value = 500
#'     ),
#'     plotOutput("distPlot")
#' )
general_page <- function(name = ?character, sidebar = ?shiny::tag, main = ?shiny::tag) {
    tabPanel(
        name,
        class = "tab padding",
        sidebarLayout(
            sidebarPanel(
                sidebar
            ),
            mainPanel(
                main
            )
        )
    )
}

#' Create pagination for general pages
#' @param title The title of the page
#' @param class_name The class name of the page
#' @param ... The general pages
#' @return A shiny tag
#'
#' @examples
#' general_pages(
#'     title = "pagename",
#'     class_name = "visuals",
#'     general_page(
#'         "Histogram",
#'         sidebar = sliderInput(
#'             "obs",
#'             "Number of observations:",
#'             min = 1, max = 1000, value = 500
#'         ),
#'         main = plotOutput("distPlot")
#'     ),
#'     general_page(
#'         "Histogram 2",
#'         sidebar = sliderInput(
#'             "obs2",
#'             "Number of observations:",
#'             min = 1, max = 1000, value = 500
#'         ),
#'         main = plotOutput("distPlot2")
#'     )
#' )
general_pages <- function(title = ?character, class_name = ?character, ... = ?general_page) {
    tags$div(
        class = class_name,
        navbarPage(
            title,
            collapsible = TRUE,
            ...
        )
    )
}
