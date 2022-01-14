view: accounts_key_pages {
  sql_table_name: `steady-cat-772.hc_accounts.accounts_key_pages`
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

  measure: account_creation_pages {
    type: sum
    sql: ${TABLE}.account_creation_pages ;;
  }

  measure: password_reset_pages {
    type: sum
    sql: ${TABLE}.password_reset_pages ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
