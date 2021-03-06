#' athlet1
#'
#' Wooldridge Sources: Peterson's Guide to Four Year Colleges, 1994 and 1995 (24th and 25th editions). Princeton University Press. Princeton, NJ. The Official 1995 College Basketball Records Book, 1994, NCAA. 1995 Information Please Sports Almanac (6th edition). Houghton Mifflin. New York, NY. Data loads lazily.
#'
#' @section Notes: These data were collected by Patrick Tulloch, an MSU economics major, for a term project. The “athletic success” variables are for the year prior to the enrollment and academic data. Updating these data to get a longer stretch of years, and including appearances in the “Sweet 16” NCAA basketball tournaments, would make for a more convincing analysis. With the growing popularity of women’s sports, especially basketball, an analysis that includes success in women’s athletics would be interesting.
#'
#' Used in Text: page 697
#'
#' @docType data
#'
#' @usage data('athlet1')
#'
#' @format A data.frame with 118 observations on 23 variables:
#' \itemize{
#'  \item \strong{year:} 1992 or 1993
#'  \item \strong{apps:} # applics for admission
#'  \item \strong{top25:} perc frsh class in 25 hs perc
#'  \item \strong{ver500:} perc frsh >= 500 on verbal SAT
#'  \item \strong{mth500:} perc frsh >= 500 on math SAT
#'  \item \strong{stufac:} student-faculty ratio
#'  \item \strong{bowl:} = 1 if bowl game in prev yr
#'  \item \strong{btitle:} = 1 if men's cnf chmps prv yr
#'  \item \strong{finfour:} = 1 if men's final 4 prv yr
#'  \item \strong{lapps:} log(apps)
#'  \item \strong{d93:} =1 if year = 1993
#'  \item \strong{avg500:} (ver500+mth500)/2
#'  \item \strong{cfinfour:} change in finfour
#'  \item \strong{clapps:} change in lapps
#'  \item \strong{cstufac:} change in stufac
#'  \item \strong{cbowl:} change in bowl
#'  \item \strong{cavg500:} change in avg500
#'  \item \strong{cbtitle:} change in btitle
#'  \item \strong{lapps_1:} lapps lagged
#'  \item \strong{school:} name of university
#'  \item \strong{ctop25:} change in top25
#'  \item \strong{bball:} =1 if btitle or finfour
#'  \item \strong{cbball:} change in bball
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(athlet1)
"athlet1"
 
 
