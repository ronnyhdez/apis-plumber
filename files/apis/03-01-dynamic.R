users <- data.frame(
  uid = c(12,13),
  username = c("maria", "oswaldo")
)

#' Busca un usuario
#' @get /users/<id>
function(id){
  subset(users, uid == id)
}
