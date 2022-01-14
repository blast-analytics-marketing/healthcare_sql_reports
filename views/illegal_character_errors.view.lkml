view: illegal_character_errors {
  sql_table_name: `steady-cat-772.hc_accounts.illegal_character_errors`
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

  dimension: date {
    type: string
    sql:  ${TABLE}.date ;;
  }

  measure: account_creation_password_error {
    type: sum
    sql: ${TABLE}.account_creation_password_error ;;
  }

  measure: account_creation_questions_error {
    type: sum
    sql: ${TABLE}.account_creation_questions_error ;;
  }

  measure: reset_password_illegal_characters {
    type: sum
    sql: ${TABLE}.reset_password_illegal_characters ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
