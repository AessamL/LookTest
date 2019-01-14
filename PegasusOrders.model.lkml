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
  join: dimensiontest {
    #foreign_key: PegasusOrders.order_id
    sql_on: ${dimensiontest.pegasusorders_order_id_1} = ${PegasusOrders.order_id} ;;
    relationship: one_to_one
  }
}
explore: testview {
  description: "a quicktest to add data from google Sheet"
  label: "GoogleSheetData"
}
explore: location {
  #group_label: "Custome Test"
  view_label: "Where are You !?"
}


map_layer: SMI_Solar_Stations {
  file: "map.topojson"
}
