view: sales_external_test {
  sql_table_name: Orders.SalesExternalTest ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.Item_Type ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: order_priority {
    type: string
    sql: ${TABLE}.Order_Priority ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}.Sales_Channel ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Ship_Date ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.Total_Cost ;;
  }

  dimension: total_profit {
    type: number
    sql: ${TABLE}.Total_Profit ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}.Total_Revenue ;;
  }

  dimension: unit_cost {
    type: number
    sql: ${TABLE}.Unit_Cost ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.Unit_Price ;;
  }

  dimension: units_sold {
    type: number
    sql: ${TABLE}.Units_Sold ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
