# full_clean()
#
# An easy way to remove undesired items from your environment and
# clear up memory space. Wraps around rm(list = ls()) and gc()
# functions while also allowing users to keep specific files via
# an optional argument.

full_clean <- function(keep = NULL, plots = F) {
  if(plots == T){
    dev.off(dev.list()["RStudioGD"])
  }
  if(!(is.null(keep))){
    keep <- as.character(keep)
    env.obj <- ls(envir = .GlobalEnv)
    env.obj <- env.obj[!env.obj %in% keep]
    rm(list = env.obj, envir = .GlobalEnv)
    gc()
  } else {
    rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)
    gc()
  }
}
