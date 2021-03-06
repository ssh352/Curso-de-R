#' meap93
#'
#' Wooldridge Source: I collected these data from the old Michigan Department of Education web site. See MATHPNL.RAW for the current web site. I used data on most high schools in the state of Michigan for 1993. I dropped some high schools that had suspicious-looking data. Data loads lazily.
#'
#' @section Notes: Many states have data, at either the district or building level, on student performance and spending. A good exercise in data collection and cleaning is to have students find such data for a particular state, and to put it into a form that can be used for econometric analysis.
#'
#' Used in Text: pages 50, 65, 111-112, 127-128, 155-156, 219, 336, 339, 696-697
#'
#' @docType data
#'
#' @usage data('meap93')
#'
#' @format A data.frame with 408 observations on 17 variables:
#' \itemize{
#'  \item \strong{lnchprg:} perc of studs in sch lnch prog
#'  \item \strong{enroll:} school enrollment
#'  \item \strong{staff:} staff per 1000 students
#'  \item \strong{expend:} expend. per stud, $
#'  \item \strong{salary:} avg. teacher salary, $
#'  \item \strong{benefits:} avg. teacher benefits, $
#'  \item \strong{droprate:} school dropout rate, perc
#'  \item \strong{gradrate:} school graduation rate, perc
#'  \item \strong{math10:} perc studs passing MEAP math
#'  \item \strong{sci11:} perc studs passing MEAP science
#'  \item \strong{totcomp:} salary + benefits
#'  \item \strong{ltotcomp:} log(totcomp)
#'  \item \strong{lexpend:} log of expend
#'  \item \strong{lenroll:} log(enroll)
#'  \item \strong{lstaff:} log(staff)
#'  \item \strong{bensal:} benefits/salary
#'  \item \strong{lsalary:} log(salary)
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(meap93)
"meap93"
 
 
