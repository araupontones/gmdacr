#'Say hello to a team member
#'@param name A character with your name
#'@return A message saying hi!
#'@example #tell R to say hi
#' say_hi("andres")


say_hi <- function(name){
  # code name
  message(glue::glue("Hi {name}!!!"))
}
