% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Connection.R
\name{odbcListDrivers}
\alias{odbcListDrivers}
\title{List Available ODBC Drivers}
\usage{
odbcListDrivers()
}
\value{
A data frame with three columns.
If a given driver does not have any attributes the last two columns will be
\code{NA}.
\describe{
\item{name}{Name of the driver}
\item{attribute}{Driver attribute name}
\item{value}{Driver attribute value}
}
}
\description{
List Available ODBC Drivers
}