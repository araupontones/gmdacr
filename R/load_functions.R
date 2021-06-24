#' Loads all the functions created in a project
#' @param dir A directory where the functions are saved in the project i.e. functions/
#' @result All the functions saved in dir will be loaded to the global environment
#' @examples
#' Define a directory where all the functions are saved (dir_functions <- functions)
#' Run \code{load_functions(dir_functions)} to load all the functions at the same time
#' @author  Andres Arau (jarau@iom.int)


load_functions <- function(dir){

  functions<- list.files(dir, pattern = ".R", full.names = T)

  for(x in functions){

    source(x, encoding = 'utf-8')


  }
}
