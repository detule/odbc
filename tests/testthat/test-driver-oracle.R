test_that("Oracle", {
  DBItest::make_context(
    odbc(),
    test_connection_string("ORACLE"),
    tweaks = DBItest::tweaks(temporary_tables = FALSE, placeholder_pattern = "?"),
    name = "PostgreSQL"
  )

  DBItest::test_result(c(
    "fetch_n_bad", # TODO
    "fetch_n_good_after_bad", # TODO
    "fetch_no_return_value", # TODO
    "get_query_n_bad", # todo
    "get_query_good_after_bad_n", # todo
    "get_query_n_zero_rows", # todo
    "fetch_no_return_value", # TODO
    "data_raw.*", # cast(1 bytea) is not valid `cannot cast type integer to bytea`
    "^data_time$", "^data_time_.*", # `time()` function is not valid syntax
    "^data_timestamp.*", # We explicitly want to set tzone to UTC
    "data_64_bit_numeric_warning", # TODO
    "data_64_bit_lossless", # TODO
    "data_integer", # Fails, unreliably on Windows
    "send_query_syntax_error", # TODO
    "get_query_syntax_error", # TODO
    "send_query_params", # TODO
    "fetch_n_multi_row_inf", # TODO
    "get_query_n_multi_row_inf", # TODO
    "get_query_n_incomplete", # TODO
    "get_query_params", # TODO
    "send_statement_params", # TODO
    "execute_params", # TODO
    NULL
  ))
  DBItest::test_sql(c(
    "quote_identifier_vectorized", # Can't implement until https://github.com/rstats-db/DBI/issues/71 is closed
    "quote_identifier_special", # TODO
    "roundtrip_timestamp", # We explicitly want to set tzone to UTC
    "roundtrip_time",
    "roundtrip_raw", # TODO
    "list_tables",
    ".*_table_name",
    "write_table_error", # TODO
    "unquote_identifier_vectorized", # TODO
    "create_table_overwrite", # TODO
    "create_table_error", # TODO
    "create_temporary_table", # TODO
    "append_table_.*", # TODO
    "append_roundtrip_.*", # TODO
    "append_table_.*", # TODO
    "roundtrip_64_bit_roundtrip", # TODO
    "roundtrip_character", # TODO
    "roundtrip_field_types", # TODO
    "write_table_append_incompatible",
    "write_table_row_names_default", # TODO
    "remove_table_temporary_arg", # TODO
    "remove_table_missing_succeed", # TODO
    "remove_table_temporary", # TODO
    "list_objects_features", # TODO
    "list_fields_wrong_table", # TODO
    "list_fields_quoted", # TODO
    "list_fields_object", # TODO
    NULL
  ))
  DBItest::test_meta(c(
    "bind_.*", # TODO
    "has_completed_statement",
    "get_statement_statement",
    "column_info_consistent", # TODO
    "row_count_statement", # TODO
    "rows_affected_statement", # TODO
    "rows_affected_query", # TODO
    "get_info_result", # TODO
    NULL
  ))
  DBItest::test_transaction(c(
    NULL
  ))
  DBItest::test_compliance(c(
    "compliance", # We are defining additional subclasses for OdbcConnections
    "reexport", # TODO
    NULL
  ))

  test_roundtrip()
})
