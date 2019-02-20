view: ziga {
  sql_table_name: Orders.Ziga ;;

  dimension: _usd_ob__ {
    type: number
    sql: ${TABLE}._USD_OB__ ;;
  }

  dimension: _usd_ob_gm__ {
    type: number
    sql: ${TABLE}._USD_OB_GM__ ;;
  }

  dimension: awarding_month {
    type: string
    sql: ${TABLE}.Awarding_Month ;;
  }

  dimension: awarding_q {
    type: string
    sql: ${TABLE}.Awarding_Q ;;
  }

  dimension: awarding_year {
    type: number
    sql: ${TABLE}.Awarding_Year ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: new_date {
    type: string
    sql: ${TABLE}.New_Date ;;
  }

  dimension: profitability_ {
    type: number
    sql: ${TABLE}.Profitability_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
