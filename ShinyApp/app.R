# Install and load needed packages
needed_packages <- c("shiny",
                     "shinydashboard",
                     "leaflet",
                     "shinyWidgets",
                     "colorspace",
                     "htmltools",
                     "rstudioapi")
for (package in needed_packages) {
  if (!require(package, character.only=TRUE)) {install.packages(package, character.only=TRUE)}
  library(package, character.only=TRUE)
}
rm("needed_packages", "package")

# Set working directory to the one where the file is located
# setwd(dirname(sys.frame(1)$ofile)) # This works when sourcing
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) # This works when running the code directly

# Load helper functions and other scripts
source("ui.R", chdir = TRUE)
source("server.R", chdir = TRUE)
load("workspace_for_shinyapp.RData")