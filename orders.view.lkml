view: orders {
  sql_table_name: Orders.orders ;;

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: carriour {
    type: string
    sql: ${TABLE}.Carriour ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

  dimension: deilverd_days {
    type: number
    sql: ${TABLE}.Deilverd_Days ;;
  }

  dimension_group: delivery {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Delivery_Date ;;
  }

  dimension: delivery_time {
    type: number
    sql: ${TABLE}.Delivery_Time ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.Gross_Profit ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: market_segment {
    type: string
    sql: ${TABLE}.Market_Segment ;;
  }

  dimension: name_of_the_state {
    type: string
    sql: ${TABLE}.Name_of_the_State ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: order_priority {
    type: string
    sql: ${TABLE}.Order_Priority ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.Payment_Type ;;
  }

  dimension: product_category_1 {
    type: string
    sql: ${TABLE}.Product_Category_1 ;;
  }

  dimension: product_category_2 {
    type: string
    sql: ${TABLE}.Product_Category_2 ;;
  }

  dimension: product_category_3 {
    type: string
    sql: ${TABLE}.Product_Category_3 ;;
  }

  dimension: product_category_4 {
    type: string
    sql: ${TABLE}.Product_Category_4 ;;
  }

  dimension: product_inventory {
    type: string
    sql: ${TABLE}.Product_Inventory ;;
  }

  dimension: record_no {
    type: number
    sql: ${TABLE}.Record_No ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sales_total {
    type: number
    sql: ${TABLE}.Sales_Total ;;
  }

  dimension: ship_container {
    type: string
    sql: ${TABLE}.Ship_Container ;;
  }

  dimension: ship_method {
    type: string
    sql: ${TABLE}.Ship_Method ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: target_average_delivery {
    type: number
    sql: ${TABLE}.Target_Average_Delivery ;;
  }

  dimension: target_max_delivery {
    type: number
    sql: ${TABLE}.Target_Max_delivery ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id, customer_name]
  }
}
