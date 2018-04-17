view: bo_function__at_select__encountered {
  sql_table_name: BO_FUNCTION__AT_SELECT__ENCOUNTERED ;;

  measure: to_fix {
    label: "Sold at (unit price)"
    description: "This is the actual unit price per SKU obtained at sale time (i.e. Revenue/Quantity)"
    group_label: "Product"
    type: sum
    hidden: no
    sql: (SELECT TO_FIX FROM BO_FUNCTION__AT_SELECT__ENCOUNTERED) ;;
  }

}
