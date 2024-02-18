# Start the server
port <- commandArgs(trailingOnly = TRUE)
port <- if (length(port) > 0 && !is.na(as.numeric(port))) as.numeric(port) else 3000
shiny::runApp(
    appDir = getwd(),
    host = "0.0.0.0",
    port = port,
)
