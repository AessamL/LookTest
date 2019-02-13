view: testhisham {
  derived_table: {
    sql: SELECT
        PegasusOrders.Order_ID  AS pegasusorders_order_id_1,
        COALESCE(SUM(PegasusOrders.Gross_Profit ), 0) AS pegasusorders_sumgrossprofit_1
      FROM Orders.orders  AS PegasusOrders

      GROUP BY 1
      ORDER BY 2 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: pegasusorders_order_id_1 {
    type: number
    sql: ${TABLE}.pegasusorders_order_id_1 ;;
  }

  dimension: pegasusorders_sumgrossprofit_1 {
    type: number
    sql: ${TABLE}.pegasusorders_sumgrossprofit_1 ;;
  }

  set: detail {
    fields: [pegasusorders_order_id_1, pegasusorders_sumgrossprofit_1]
  }
}
