# http://web.mit.edu/insong/www/pdf/rpackage_instructions.pdf
# https://stackoverflow.com/questions/69052481/im-trying-to-make-an-rcpp-package-on-windows-10-following-the-guide-instruction

if(rstudioapi::isAvailable()){
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
}

# create a package skeleton
Rcpp::Rcpp.package.skeleton("myutils", cpp_files = r"{C:\Users\novotny\Desktop\analytika\58_rcpp}", example_code = F) 

Rcpp::compileAttributes("myutils", verbose = T) # generates the bindings required to call C++ functions from R

library(devtools)
build("myutils") # converts a package source directory into a single bundled file
install("myutils") # uses R CMD INSTALL to install the package. Will also try to install dependencies


myutils::rcpp_add_n_bus_days(Sys.Date() + 0:100, 1)