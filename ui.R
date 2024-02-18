library(thematic)
library(rjson)

source("components/hero.R")
source("components/pages.R")
source("components/inputs.R")

project_info <- as.data.frame(fromJSON(file = "project.json"))
thematic_shiny(
    bg = "auto",
    fg = "auto",
    accent = "auto",
    font = font_spec(
        families = "Roboto",
        scale = 1.2
    )
)
header <- tags$head(
    HTML(
        paste("<title>", project_info$name, "</title> <link rel='icon' type='image' href='favicon.svg'>")
    ),
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css"),
    tags$script(src = "script.js")
)

visuals <- general_pages(
    title = project_info$name,
    class_name = "visuals",
    general_page(
        "Histogram",
        sidebar = sliderInput(
            "obs",
            "Number of observations:",
            min = 1, max = 1000, value = 500
        ),
        main = plotOutput("distPlot")
    ),
    general_page(
        "Histogram 2",
        sidebar = sliderInput(
            "obs2",
            "Number of observations:",
            min = 1, max = 1000, value = 500
        ),
        main = plotOutput("distPlot2")
    )
)
ui <- bootstrapPage(
    header,
    theme = bslib::bs_theme(
        bootswatch = project_info$ui_theme
    ),
    fluidPage(
        hero(project_info$name, project_info$description), visuals
    ),
)
