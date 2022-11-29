#ifndef R_ODBC_UTILS_H
#define R_ODBC_UTILS_H

#ifndef SQL_COPT_SS_ACCESS_TOKEN
#define SQL_COPT_SS_ACCESS_TOKEN (1256UL)
#endif

namespace odbc {
namespace utils {
  std::shared_ptr< void > serialize_azure_token( const std::string& token );
}}
#endif
