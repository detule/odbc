test_that("SQLite", {
  skip_unless_has_test_db({
    DBItest::make_context(odbc(), list(.connection_string = Sys.getenv("ODBC_CS")),
      tweaks = DBItest::tweaks(placeholder_pattern = "?", strict_identifier = TRUE), name = "SQLite")
  })
  cat("Testing execute immediate\n", file=stderr())
  DBItest::test_result(run_only=c("execute_immediate"))
  cat("Testing execute immediate:done\n", file=stderr())
})
