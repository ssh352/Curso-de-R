% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBConnection.R
\name{dbSendStatement}
\alias{dbSendStatement}
\title{Execute a data manipulation statement on a given database connection}
\usage{
dbSendStatement(conn, statement, ...)
}
\arguments{
\item{conn}{A \linkS4class{DBIConnection} object, as returned by
\code{\link[=dbConnect]{dbConnect()}}.}

\item{statement}{a character string containing SQL.}

\item{...}{Other parameters passed on to methods.}
}
\value{
\code{dbSendStatement()} returns
an S4 object that inherits from \linkS4class{DBIResult}.
The result set can be used with \code{\link[=dbGetRowsAffected]{dbGetRowsAffected()}} to
determine the number of rows affected by the query.
Once you have finished using a result, make sure to clear it
with \code{\link[=dbClearResult]{dbClearResult()}}.
An error is raised when issuing a statement over a closed
or invalid connection,
if the syntax of the statement is invalid,
or if the statement is not a non-\code{NA} string.
}
\description{
The \code{dbSendStatement()} method only submits and synchronously executes the
SQL data manipulation statement (e.g., \code{UPDATE}, \code{DELETE},
\code{INSERT INTO}, \code{DROP TABLE}, ...) to the database engine.  To query
the number of affected rows, call \code{\link[=dbGetRowsAffected]{dbGetRowsAffected()}} on the
returned result object.  You must also call \code{\link[=dbClearResult]{dbClearResult()}} after
that. For interactive use, you should almost always prefer
\code{\link[=dbExecute]{dbExecute()}}.

\Sexpr[results=rd,stage=render]{DBI:::methods_as_rd("dbSendStatement")}
}
\details{
\code{\link[=dbSendStatement]{dbSendStatement()}} comes with a default implementation that simply
forwards to \code{\link[=dbSendQuery]{dbSendQuery()}}, to support backends that only
implement the latter.
}
\section{Additional arguments}{


The following argument is not part of the \code{dbSendStatement()} generic
(to improve compatibility across backends)
but is part of the DBI specification:
\itemize{
\item \code{params} (default: \code{NULL})
}

It must be provided as named arguments.
See the "Specification" sections for details on its usage.

}

\section{Specification}{


No warnings occur under normal conditions.
When done, the DBIResult object must be cleared with a call to
\code{\link[=dbClearResult]{dbClearResult()}}.
Failure to clear the result set leads to a warning
when the connection is closed.
If the backend supports only one open result set per connection,
issuing a second query invalidates an already open result set
and raises a warning.
The newly opened result set is valid
and must be cleared with \code{dbClearResult()}.



The \code{param} argument allows passing query parameters, see \code{\link[=dbBind]{dbBind()}} for details.

}

\examples{
con <- dbConnect(RSQLite::SQLite(), ":memory:")

dbWriteTable(con, "cars", head(cars, 3))

rs <- dbSendStatement(
  con,
  "INSERT INTO cars (speed, dist) VALUES (1, 1), (2, 2), (3, 3)"
)
dbHasCompleted(rs)
dbGetRowsAffected(rs)
dbClearResult(rs)
dbReadTable(con, "cars")   # there are now 6 rows

# Pass one set of values directly using the param argument:
rs <- dbSendStatement(
  con,
  "INSERT INTO cars (speed, dist) VALUES (?, ?)",
  param = list(4L, 5L)
)
dbClearResult(rs)

# Pass multiple sets of values using dbBind():
rs <- dbSendStatement(
  con,
  "INSERT INTO cars (speed, dist) VALUES (?, ?)"
)
dbBind(rs, list(5:6, 6:7))
dbBind(rs, list(7L, 8L))
dbClearResult(rs)
dbReadTable(con, "cars")   # there are now 10 rows

dbDisconnect(con)
}
\seealso{
For queries: \code{\link[=dbSendQuery]{dbSendQuery()}} and \code{\link[=dbGetQuery]{dbGetQuery()}}.

Other DBIConnection generics: \code{\link{DBIConnection-class}},
  \code{\link{dbAppendTable}}, \code{\link{dbCreateTable}},
  \code{\link{dbDataType}}, \code{\link{dbDisconnect}},
  \code{\link{dbExecute}}, \code{\link{dbExistsTable}},
  \code{\link{dbGetException}}, \code{\link{dbGetInfo}},
  \code{\link{dbGetQuery}}, \code{\link{dbIsReadOnly}},
  \code{\link{dbIsValid}}, \code{\link{dbListFields}},
  \code{\link{dbListObjects}}, \code{\link{dbListResults}},
  \code{\link{dbListTables}}, \code{\link{dbReadTable}},
  \code{\link{dbRemoveTable}}, \code{\link{dbSendQuery}},
  \code{\link{dbWriteTable}}
}
\concept{DBIConnection generics}
