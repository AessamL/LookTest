view: location {
  sql_table_name: Orders.orders ;;

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: region {
    label: "Regionz"
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
    map_layer_name: us_states
  }
  }
