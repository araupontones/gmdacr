#'checks if the required libraries are installed in the system
#'@param libraries A vector with the libraries that the project uses


check.installed<-function(libraries){

  check <- libraries %in% utils::installed.packages()

  if(any(check)){

    cli::cli_alert_success("Yes! All required packages are inslled in your system")

  } else {
    #this packages are not installed
    uninstalled <- libraries[!check]
    unisnsalled_msg <- stringr::str_flatten(uninstalled, collapse = ", ")

    cli::cli_alert_warning(
      (glue::glue("Ups! you must installed these packages:\n
                  {unisnsalled_msg}"))
    )

  }



}
