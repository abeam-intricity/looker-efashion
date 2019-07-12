view: agg_yr_qt_rn_st_ln_ca_sr {
  sql_table_name: AGG_YR_QT_RN_ST_LN_CA_SR ;;

  dimension: yr {
    label: "Year"
    description: "Year 2003 - 2006."
    group_label: "Time period"
    type: string
    hidden: no
    sql: (SELECT Yr FROM Agg_yr_qt_rn_st_ln_ca_sr) ;;
  }

  dimension: qtr {
    label: "Quarter"
    description: "Quarter number: Q1, Q2, Q3, Q4."
    group_label: "Time period"
    type: string
    hidden: no
    sql: (SELECT Qtr FROM Agg_yr_qt_rn_st_ln_ca_sr) ;;
  }

  dimension: state {
    label: "State"
    description: "State located."
    group_label: "Store"
    type: string
    hidden: no
    sql: (SELECT State FROM Agg_yr_qt_rn_st_ln_ca_sr) ;;
  }

  dimension: line {
    label: "Lines"
    description: "Product line. Each line contains a set of categories."
    group_label: "Product"
    type: string
    hidden: no
    sql: (SELECT Line FROM Agg_yr_qt_rn_st_ln_ca_sr) ;;
  }

  dimension: category {
    label: "Category"
    description: "Each category contains the individual SKU codes (and product descriptions)."
    group_label: "Product"
    type: string
    hidden: no
    sql: (SELECT Category FROM Agg_yr_qt_rn_st_ln_ca_sr) ;;
  }

  measure: sales_revenue {
    label: "Sales revenue"
    description: "Sales revenue $ - $ revenue of SKU sold"
    group_label: "Measures"
    type: sum
    hidden: no
    sql: (SELECT sum(Sales_revenue) FROM Agg_yr_qt_rn_st_ln_ca_sr) ;;
  }

}
