view: derivedtabletest1 {
  derived_table: {
    sql: SELECT COUNT(Order_ID) AS OrderId , Region , SUM(Sales_Total) AS TotalSales , State  FROM `bigquery-looker-203611.Orders.orders` GROUP BY Region , State  LIMIT 100
      ;;
      #indexes: ["order_id"]
      sql_trigger_value: SELECT CURRENT_TIME() ;;

  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderId ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.TotalSales ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  set: detail {
    fields: [order_id, region, total_sales, state]
  }
}
