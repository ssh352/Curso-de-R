% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gpa1.R
\docType{data}
\name{gpa1}
\alias{gpa1}
\title{gpa1}
\format{A data.frame with 141 observations on 29 variables:
\itemize{
 \item \strong{age:} in years
 \item \strong{soph:} =1 if sophomore
 \item \strong{junior:} =1 if junior
 \item \strong{senior:} =1 if senior
 \item \strong{senior5:} =1 if fifth year senior
 \item \strong{male:} =1 if male
 \item \strong{campus:} =1 if live on campus
 \item \strong{business:} =1 if business major
 \item \strong{engineer:} =1 if engineering major
 \item \strong{colGPA:} MSU GPA
 \item \strong{hsGPA:} high school GPA
 \item \strong{ACT:} 'achievement' score
 \item \strong{job19:} =1 if job <= 19 hours
 \item \strong{job20:} =1 if job >= 20 hours
 \item \strong{drive:} =1 if drive to campus
 \item \strong{bike:} =1 if bicycle to campus
 \item \strong{walk:} =1 if walk to campus
 \item \strong{voluntr:} =1 if do volunteer work
 \item \strong{PC:} =1 of pers computer at sch
 \item \strong{greek:} =1 if fraternity or sorority
 \item \strong{car:} =1 if own car
 \item \strong{siblings:} =1 if have siblings
 \item \strong{bgfriend:} =1 if boy- or girlfriend
 \item \strong{clubs:} =1 if belong to MSU club
 \item \strong{skipped:} avg lectures missed per week
 \item \strong{alcohol:} avg # days per week drink alc.
 \item \strong{gradMI:} =1 if Michigan high school
 \item \strong{fathcoll:} =1 if father college grad
 \item \strong{mothcoll:} =1 if mother college grad
}}
\source{
\url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
}
\usage{
data('gpa1')
}
\description{
Wooldridge Source: Christopher Lemmon, a former MSU undergraduate, collected these data from a survey he took of MSU students in Fall 1994. Data loads lazily.
}
\section{Notes}{
 This is a nice example of how students can obtain an original data set by focusing locally and carefully composing a survey.

Used in Text: pages 75, 77, 81, 129-130, 160, 232, 262, 295-296, 300-301
}

\examples{
 str(gpa1)
}
\keyword{datasets}
