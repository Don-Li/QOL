#' Open explorer
#'
#' @param path 
#'
#' @return
#' No return values. This function is invoked for the side-effect of opening Windows 
#' explorer at a given directory.
#' 
#' @export open_explorer
#'
#'
#'
#' @examples
#' \dontrun{
#' # Open Windows explorer in the current directory
#' open_explorer()
#' 
#' # Open windows explorer in your desktop
#' open_explorer("C:/whoami/Desktop")
#' }
#' 
open_explorer = function( path = NULL ){
    if ( is.null(path) ){
        cur_wd = normalizePath(path)
    } else{
        cur_wd = normalizePath(getwd())
    }
    system2( "explorer", args = cur_wd, invisible = FALSE, minimized = F )
}
