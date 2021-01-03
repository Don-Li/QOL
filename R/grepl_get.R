#' grepl names
#'
#' @param pattern 
#' character string containing a regular experssion.
#' @param x 
#' An indexable object with optional names.
#' @param x_names 
#' logical. If \code{TRUE}, return matching names of \code{x}. Otherwise,
#' return the matching elements of \code{x}.
#' @param ignore.case 
#' if \code{FALSE}, the pattern matching is case sensitive.
#'
#' @return
#' Returns a subset of \code{x} or the names of \code{x} that are matched to the
#' supplied regex.
#' @export
#'
#' @examples
grepl_get = function( pattern, x, x_names = T, ignore.case = FALSE ){
    if ( x_names ){
        return_ = names(x)[ grepl( pattern, x, ) ]
    } else{
        return_ = x[ grepl( pattern, x, ) ]
    }
    return_
}

