view: location {
  label: "Location Copy"
  sql_table_name: Orders.orders ;;

  dimension: latitude {
    view_label: "Stars"
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    view_label: "Stars"
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: region {
    description: "Where you Can find Places"
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
