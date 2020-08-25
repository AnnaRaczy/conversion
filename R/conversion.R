
#' Conversion of units
#'
#'This function lets you convert units of length, area, volume
#' @param x A number or numeric vector
#' @param from_unit Name of the unit to convert from
#' @param to_unit Name of the unit to convert to
#'
#' @return Converted values
#' @export
#'
#' @examples
#' convert(1, 'Centimeter', 'Meter')
#' convert(100, 'Meter', 'Centimeter')
convert <- function(x, from_unit, to_unit){
  multiply <- dplyr::filter(df,
                            from  == from_unit,
                            to == to_unit)

  if (nrow(multiply) == 0) {
    warning('It is impossible to convert given unit. Please provide correct one.')
    stop()
  }
  multiply <- dplyr::pull(multiply, multiply_by)

  return(x * multiply)


}
