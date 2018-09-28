connection: "bigqueryorders"

# include all the views
include: "*.view"

datagroup: orders_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

label: "Pegasus Orders"

#persist_with: orders_default_datagroup

explore: PegasusOrders {
  description: "This is The Main Model Based on The famous Order Sheet"
  label: "Pegasus Orders"
}
explore: location {
  #group_label: "Custome Test"
  view_label: "Where are You !?"
}
explore: derivedtabletest1 {
  description: "Just a derived Table Test"
  label: "SalesTotal"
  #persist_with: orders_default_datagroup
  persist_for: "2 hours"
}

map_layer: SMI_Solar_Stations {
  file: "map.topojson"
}
