# If necessary, uncomment the line below to include explore_source.

 include: "PegasusOrders.model.lkml"

view: DerivedView{
  derived_table: {
    explore_source: location {
      column: region {}
      column: state {}
      column: count {}
    }
  }
  dimension: region {
    label: "Where are You !? Regionz"
    description: "Where you Can find Places"
  }
  dimension: state {
    label: "Where are You !? State"
  }
  dimension: count {
    label: "Where are You !? Count"
    type: number
  }
}
