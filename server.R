library(shiny)
library(thematic)
server <- function(input, output, session) {
    output$distPlot <- renderPlot({
        hist(rnorm(input$obs), col = thematic_get_option("accent"))
    })
    output$distPlot2 <- renderPlot({
        hist(rnorm(input$obs2), col = thematic_get_option("fg"))
    })
}
