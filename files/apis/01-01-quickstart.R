# plumber.R

#' Repite el parámetro que fué enviado
#' @param msg El mensaje para repetir.
#' @get /repite
function(msg=""){
  list(msg = paste0("El mensaje es: '", msg, "'"))
}

#' Grafica el conjunto de datos iris
#' @param spec Si se envia, filtra los datos a para solamente incluir esta especie (por ejemplo 'setosa')
#' @get /grafico
#' @png
function(spec){
  mis_datos <- iris
  title <- "All Species"

  # Filter if the species was specified
  if (!missing(spec)){
    title <- paste0("Solo la especie '", spec, "'")
    mis_datos <- subset(iris, Species == spec)
  }

  plot(mis_datos$Sepal.Length, mis_datos$Petal.Length,
       main = title, xlab = "Sepal Length", ylab = "Petal Length")
}
