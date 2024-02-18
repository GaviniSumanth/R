library(shiny)

#' Upload an image
#' @param id The id of the image
#' @param label The label of the image
#' @return A shiny tag
#'
#' @examples
#' img_upload("img", "Upload an image")
img_upload <- function(id = ?character, label = ?character) {
    fileInput(id, label, accept = c("image/png", "image/jpeg"))
}
