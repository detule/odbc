#include <memory>
#include <string>

namespace odbc {
namespace utils {

  /// \brief Serialize authentication token for Microsoft Azure.
  ///
  /// Format is described in:
  /// https://learn.microsoft.com/en-us/sql/connect/odbc/using-azure-active-directory?view=sql-server-ver16#authenticating-with-an-access-token
  ///
  /// \param token The authentication token.
  /// \return A shared pointer to the buffer containing the serialized structure.
  std::shared_ptr< void > serialize_azure_token( const std::string& token )
  {
    unsigned long tokenSize = 2 * token.length();
    std::shared_ptr< void > ret( malloc( 4 + tokenSize ), std::free );
    std::uint32_t* buffer32_t = ( std::uint32_t* ) ret.get();
    buffer32_t[ 0 ] = tokenSize;
    std::uint8_t* buffer8_t = ( std::uint8_t* ) ret.get();
    for ( int i = 0, j = 0; i < tokenSize; i += 2, j++ )
    {
      buffer8_t[ 4 + i ] = token[ j ];
      buffer8_t[ 4 + i + 1 ] = 0;
    }
    return ret;
  }
}}
