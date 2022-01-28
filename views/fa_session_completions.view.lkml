view: fa_session_completions {
  sql_table_name: `steady-cat-772.hc_financial_screener.fa_session_completions`
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
    sql: ${TABLE}.date ;;
  }

  measure: fa_count {
    type: sum
    sql: ${TABLE}.fa_count ;;
  }

  measure: goal_count {
    type: sum
    sql: ${TABLE}.goal_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
