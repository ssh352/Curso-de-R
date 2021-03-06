#' fish
#'
#' Wooldridge Source: K Graddy (1995), “Testing for Imperfect Competition at the Fulton Fish Market,” RAND Journal of Economics 26, 75-92. Professor Graddy's collaborator on a later paper, Professor Joshua Angrist at MIT, kindly provided me with these data. Data loads lazily.
#'
#' @section Notes: This is a nice example of how to go about finding exogenous variables to use as instrumental variables. Often, weather conditions can be assumed to affect supply while having a negligible effect on demand. If so, the weather variables are valid instrumental variables for price in the demand equation. It is a simple matter to test whether prices vary with weather conditions by estimating the reduced form for price.
#'
#' Used in Text: pages 443, 580
#'
#' @docType data
#'
#' @usage data('fish')
#'
#' @format A data.frame with 97 observations on 20 variables:
#' \itemize{
#'  \item \strong{prca:} price for Asian buyers
#'  \item \strong{prcw:} price for white buyers
#'  \item \strong{qtya:} quantity sold to Asians
#'  \item \strong{qtyw:} quantity sold to whites
#'  \item \strong{mon:} =1 if Monday
#'  \item \strong{tues:} =1 if Tuesday
#'  \item \strong{wed:} =1 if Wednesday
#'  \item \strong{thurs:} =1 if Thursday
#'  \item \strong{speed2:} min past 2 days wind speeds
#'  \item \strong{wave2:} avg max last 2 days wave height
#'  \item \strong{speed3:} 3 day lagged max windspeed
#'  \item \strong{wave3:} avg max wave hghts of 3 & 4 day lagged hghts
#'  \item \strong{avgprc:} ((prca*qtya) + (prcw*qtyw))/(qtya + qtyw)
#'  \item \strong{totqty:} qtya + qtyw
#'  \item \strong{lavgprc:} log(avgprc)
#'  \item \strong{ltotqty:} log(totqty)
#'  \item \strong{t:} time trend
#'  \item \strong{lavgp_1:} lavgprc[_n-1]
#'  \item \strong{gavgprc:} lavgprc - lavgp_1
#'  \item \strong{gavgp_1:} gavgprc[_n-1]
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(fish)
"fish"
 
 
