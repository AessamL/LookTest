connection: "bigqueryorders"

# include all the views
include: "*.view"

datagroup: orders_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: orders_default_datagroup

explore: PegasusOrders {
  label: "Pegasus Orders"
}
explore: location {}

map_layer: SMI_Solar_Stations {
  file: "map.topojson"
}
