# lazywd()
#
# A wrapper around setwd(), copying the file path from clipboard.
# This should mean that Windows users can copy directories from
# windows explorer without having to manually replace the separators
# due to escaping-errors

lazywd <- function() {
  wd.path <- clipr::read_clip()
  setwd(wd.path)
}
