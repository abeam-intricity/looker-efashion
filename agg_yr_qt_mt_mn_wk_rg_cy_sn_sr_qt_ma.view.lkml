view: agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma {
  sql_table_name: AGG_YR_QT_MT_MN_WK_RG_CY_SN_SR_QT_MA ;;

  dimension: mth {
    label: "Month"
    description: "Month number in year, 1-12."
    group_label: "Time period"
    type: number
    hidden: no
    sql: (SELECT Mth FROM Agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma) ;;
  }

  dimension: wk {
    label: "Week"
    description: "Week1-53. Week 53 may overlap with week 1 of the following year."
    group_label: "Time period"
    type: number
    hidden: no
    sql: (SELECT Wk FROM Agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma) ;;
  }

  dimension: city {
    label: "City"
    description: "City located."
    group_label: "Store"
    type: string
    hidden: no
    sql: (SELECT City FROM Agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma) ;;
  }

  dimension: store_name {
    label: "Store name"
    description: "Name of store."
    group_label: "Store"
    type: string
    hidden: no
    sql: (SELECT Store_name FROM Agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma) ;;
  }

  measure: quantity_sold {
    label: "Quantity sold"
    description: "Quantity sold - number of SKU sold"
    group_label: "Measures"
    type: sum
    hidden: no
    sql: (SELECT sum(Quantity_sold) FROM Agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma) ;;
  }

  measure: margin {
    label: "Margin"
    description: "Margin $ = Revenue - Cost of sales"
    group_label: "Measures"
    type: sum
    hidden: no
    sql: (SELECT sum(Margin) FROM Agg_yr_qt_mt_mn_wk_rg_cy_sn_sr_qt_ma) ;;
  }

}
