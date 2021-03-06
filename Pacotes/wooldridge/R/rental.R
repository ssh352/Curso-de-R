#' rental
#'
#' Wooldridge Source: David Harvey, a former MSU undergraduate, collected the data for 64 “college towns” from the 1980 and 1990 United States censuses. Data loads lazily.
#'
#' @section Notes: These data can be used in a somewhat crude simultaneous equations analysis, either focusing on one year or pooling the two years. (In the latter case, in an advanced class, you might have students compute the standard errors robust to serial correlation across the two time periods.) The demand equation would have ltothsg as a function of lrent, lavginc, and lpop. The supply equation would have ltothsg as a function of lrent, pctst, and lpop. Thus, in estimating the demand function, pctstu is used as an IV for lrent. Clearly one can quibble with excluding pctstu from the demand equation, but the estimated demand function gives a negative price effect. Getting information for 2000, and adding many more college towns, would make for a much better analysis. Information on number of spaces in on-campus dormitories would be a big improvement, too.
#'
#' Used in Text: pages 160, 477, 503-504
#'
#' @docType data
#'
#' @usage data('rental')
#'
#' @format A data.frame with 128 observations on 23 variables:
#' \itemize{
#'  \item \strong{city:} city label, 1 to 64
#'  \item \strong{year:} 80 or 90
#'  \item \strong{pop:} city population
#'  \item \strong{enroll:} # college students enrolled
#'  \item \strong{rent:} average rent
#'  \item \strong{rnthsg:} renter occupied units
#'  \item \strong{tothsg:} occupied housing units
#'  \item \strong{avginc:} per capita income
#'  \item \strong{lenroll:} log(enroll)
#'  \item \strong{lpop:} log(pop)
#'  \item \strong{lrent:} log(rent)
#'  \item \strong{ltothsg:} log(tothsg)
#'  \item \strong{lrnthsg:} log(rnthsg)
#'  \item \strong{lavginc:} log(avginc)
#'  \item \strong{clenroll:} change in lrent from 80 to 90
#'  \item \strong{clpop:} change in lpop
#'  \item \strong{clrent:} change in lrent
#'  \item \strong{cltothsg:} change in ltothsg
#'  \item \strong{clrnthsg:} change in lrnthsg
#'  \item \strong{clavginc:} change in lavginc
#'  \item \strong{pctstu:} percent of population students
#'  \item \strong{cpctstu:} change in pctstu
#'  \item \strong{y90:} =1 if year == 90
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(rental)
"rental"
 
 
