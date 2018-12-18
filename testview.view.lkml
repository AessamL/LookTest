view: testview {
  derived_table: {
    sql: select '1' as ID,'Volvo' as Name
      union select '2', 'BMW'
      union select '3', 'Honda'
      union select '4', 'peugeot'
      union select '5', 'hyundai'
      union select '6', 'mercedes'
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  set: detail {
    fields: [id, name]
  }
}
