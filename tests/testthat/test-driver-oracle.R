test_that("Oracle", {
  DBItest::make_context(
    odbc(),
    test_connection_string("ORACLE"),
    tweaks = DBItest::tweaks(temporary_tables = FALSE, placeholder_pattern = "?"),
    name = "PostgreSQL"
  )

  # Long/outstanding issue with batch inserting
  # date/datetime for Oracle.  See for example
  # #349
  test_roundtrip(columns = c("date", "datetime"))

  local({
    # Test custom dbExistsTable implementation for
    # Oracle
    con <- DBItest:::connect(DBItest:::get_default_context())
    dbWriteTable(con, "mtcarstest", mtcars)
    expect_true(dbExistsTable(con, "mtcarstest"))
    dbWriteTable(con, "mtcars_test", mtcars)
    expect_true(dbExistsTable(con, "mtcars_test"))
    on.exit({
      dbExecute(con, "DROP TABLE mtcarstest")
      dbExecute(con, "DROP TABLE mtcars_test")
    })
  })
})
