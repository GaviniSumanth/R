library(shiny)
hero <- function(name = ?character, description = ?character) {
    tags$section(
        tags$div(
            class = "hero",
            tags$h1(
                lapply(strsplit(name, " ")[[1]], function(x) tags$span(x, class = "title")),
                class = "title"
            ),
            tags$p(description, class = "description"),
        ),
    )
}
