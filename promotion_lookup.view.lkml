view: promotion_lookup {
  sql_table_name: BOBJ.PROMOTION_LOOKUP ;;

  dimension: promotion_flag {
    label: "Promotion (y/n)"
    description: "Promotion flag (yes or no) by SKU unit."
    group_label: "Promotions"
    type: string
    hidden: no
    sql: ${TABLE}.promotion_flag ;;
  }

  dimension: promotion_key {
    label: "Promotion Key"
    sql: ${TABLE}.promotion_key ;;
    primary_key: yes
  }

}
