# Step 0: Packages you will need:
#   devtools, roxygen2
# Step 1: Create your package directory
#   setwd("folder_where_the_package_folder_will_be_created")
#   devtools::create("package_name_goes_here")
# Step 2: Add function(s)
#   Save the R code with your function to the R within the package folder folder created by devtools
# Step 3a: Add documentation
#   setwd("package_folder_path")
#   devtools::document()
#   how to write documentation https://github.com/r-lib/roxygen2#roxygen2
#   (use roxygen2 comments to add documentation)
# Step 3b: add dependencies
#   usethis::use_package("package_name_goes_here")
#   usethis::use_package("tidyverse", type = "depends")
# Step 4: Install!
#   setwd("..")
#   devtools::install("path_to_the_folder_where_the_package_exists_goes_here")

#' A special setwd function
#'
#' This sets the wd to the file location.
#' @export
my_setwd <- function(){

  if(rstudioapi::isAvailable()){
    setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
  }

}
