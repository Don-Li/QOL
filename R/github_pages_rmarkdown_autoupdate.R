#' Rmarkdown github pages
#'
#' @description 
#' Make some markdown so that when you knit an `Rmarkdown` file, it will 
#' automatically also make a corresponding `index.html`. This is used for when you want to 
#' use `github` pages.
#'
#' @return
#' Returns a string that contains code.
#' 
#' @export github_pages_rmarkdown_autoupdate
#'
#'
#'
#' @examples
#' \dontrun{
#' github_pages_rmarkdown_autoupdate()
#' }
#' 

github_pages_rmarkdown_autoupdate = function( out_dir = "" ){
    x = "knit: (
        function(input_file, encoding) {
        output_file = file.path( dirname(input_file), out_dir, 'index.html')
        
        rmarkdown::render(
            input    = input_file, 
            encoding = encoding,
            output_file = output_file)
        }
        )\n"
    if ( out_dir != "" ){
        x = gsub("out_dir", out_dir, x)
    } else{
        x = gsub("out_dir, ", "", x)
    }
    cat(x)
}