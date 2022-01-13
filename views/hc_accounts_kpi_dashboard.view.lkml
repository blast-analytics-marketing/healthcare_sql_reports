view: hc_accounts_kpi_dashboard {
  sql_table_name:  `steady-cat-772.hc_accounts.hc_accounts_kpi_dashboard`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: PARSE_DATE('%Y%m%d',LEFT(${TABLE}.date,8));;
  }

  measure: initiation_login {
    type: sum
    sql: ${TABLE}.initiation_login ;;
  }

  measure: completed_account_creation_page {
    type: sum
    sql: ${TABLE}.completed_account_creation_page ;;
  }

  measure: account_creation_no_error {
    type: sum
    sql: ${TABLE}.account_creation_no_error ;;
  }

  measure: login_no_error {
    type: sum
    sql: ${TABLE}.login_no_error ;;
  }

  measure: logged_in {
    type: sum
    sql: ${TABLE}.logged_in ;;
  }

  measure: reset_after_creation {
    type: sum
    sql: ${TABLE}.reset_after_creation ;;
  }

  measure: created_account {
    type: sum
    sql: ${TABLE}.created_account ;;
  }

  measure: reset_password {
    type: sum
    sql: ${TABLE}.reset_password ;;
  }

  measure: reset_password_page {
    type: sum
    sql: ${TABLE}.reset_password_page ;;
  }

  measure: create_password_illegal_characters {
    type: sum
    sql: ${TABLE}.create_password_illegal_characters ;;
  }

  measure: create_security_questions_illegal_characters {
    type: sum
    sql: ${TABLE}.create_security_questions_illegal_characters ;;
  }

  measure: reset_illegal_characters {
    type: sum
    sql: ${TABLE}.reset_illegal_characters ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
