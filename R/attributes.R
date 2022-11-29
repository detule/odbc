# Helper class union allowing us to declare individual attributes as nullable
setClassUnion("characterOrNULL", c("character", "NULL"))

#' ConnectionAttributes
#' @details A class that all back-end-specific connection attribute classes
#' are derived from.  If there is an attribute that is shared across back-ends
#' it belongs here.
#' @rdname ConnectionAttributes
#' @export
setClass("ConnectionAttributes", representation('VIRTUAL'))

#' @title MSSQLConnectionAttributes
#' @details A class for MSSQL back-end specific connection attributes
#' @slot azure_token Azure Active Directory token, as character string.
#' @examples
#' \dontrun{
#' r_attr = new("MSSQLConnectionAttributes", azure_token = .token)
#' conn <- dbConnect(
#'   odbc::odbc(),
#'   dsn = "my_azure_mssql_db",
#'   Encrypt = "yes",
#'   attributes = r_attr)
#' }
#' @rdname MSSQLConnectionAttributes
#' @export
setClass("MSSQLConnectionAttributes",
         representation("azure_token" = c("characterOrNULL")),
         contains = "ConnectionAttributes")
