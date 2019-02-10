#' @get /
search <- function(q = "", pretty = 0){
  paste0("El parametro q es '", q, "'. ",
         "El parametro bonito es '", pretty, "'.")
}
