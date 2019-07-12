view: outlet_lookup {
  sql_table_name: BOBJ.OUTLET_LOOKUP ;;

  dimension: long_opening_hours_flag {
    label: "Long opening hours"
    description: "Y=Late night opening, N=Normal store hours."
    group_label: "Store details"
    type: string
    hidden: no
    sql: ${TABLE}.long_opening_hours_flag ;;
  }

  dimension: manager {
    label: "Name of manager"
    description: "Manager's name."
    group_label: "Store details"
    type: string
    hidden: no
    sql: ${TABLE}.manager ;;
  }

  dimension: date_open {
    label: "Opening date"
    description: "Date store opened."
    group_label: "Store details"
    type: string
    hidden: no
    sql: ${TABLE}.date_open ;;
  }

  dimension: owned_outright_flag {
    label: "Owned (y/n)"
    description: "Y=Wholly owned by e-Fashion, N=Franchise"
    group_label: "Store details"
    type: string
    hidden: no
    sql: ${TABLE}.owned_outright_flag ;;
  }

  dimension: floor_space {
    label: "Sales floor size group"
    description: "Sales floor size group: 0-999, 1000-1999, 2000-2999, 3000-3999, 4000-4999, 5000+."
    group_label: "Store details"
    type: string
    hidden: no
    sql: ${TABLE}.floor_space ;;
  }

  dimension: shop_code {
    label: "Shop Code"
    sql: ${TABLE}.shop_code ;;
    primary_key: yes
  }

  measure: extended_floor_space {
    label: "Extended sales floor size"
    description: "Summed sales floor size. Can only be mixed with geography information relating to a store or group of stores. It cannot be used to show the SqFt of a store over time for instance."
    group_label: "Store details"
    type: sum
    hidden: no
    sql: ${floor_space} ;;
  }

}
