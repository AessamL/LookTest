view: ziga_e {
  sql_table_name: Orders.ZigaE ;;

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
    #drill_fields: [ziga_e.count]
    link: {
      label: "SameChartPleasssse"
      url: "{{dummy._link}}&sorts=ziga_e.count+desc&limit=500&query_timezone=Africa%2FCairo&vis=%7B%22series_types%22%3A%7B%7D%2C%22type%22%3A%22looker_line%22%7D&filter_config=%7B%7D"
    }


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

  dimension: ob_type {
    type: string
    sql: ${TABLE}.OB_Type ;;
  }

  dimension: profitability_ {
    type: number
    sql: ${TABLE}.Profitability_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: USD_OB {
    type: sum
    sql: ${_usd_ob__} ;;
    drill_fields: [ziga_e.count]

  }
  measure: dummy {
    type: number
    sql: 1=1 ;;
    drill_fields: [ziga_e.count,ziga_e._usd_ob_gm__]
  }

}
