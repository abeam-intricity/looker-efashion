view: shop_facts {
  sql_table_name: BOBJ.SHOP_FACTS ;;

  dimension: id {
    label: "ID"
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: article_code {
    label: "Article Code"
    sql: ${TABLE}.article_code ;;
  }

  dimension: color_code {
    label: "Color Code"
    sql: ${TABLE}.color_code ;;
  }

  dimension: quantity_sold {
    label: "Quantity Sold"
    sql: ${TABLE}.quantity_sold ;;
  }

  dimension: shop_code {
    label: "Shop Code"
    sql: ${TABLE}.shop_code ;;
  }

  dimension: week_key {
    label: "Week Key"
    sql: ${TABLE}.week_key ;;
  }

  measure: discount {
    label: "Discount"
    description: "Total discount of a SKU. Discount= Qty * Unit Price - Revenue.  Negative sums indicate the product was marked up (increased margin). Note discount is a calculated object (it does not exist in the fact table)."
    group_label: "Measures"
    type: sum
    hidden: no
    sql: ${quantity_sold} * ${article_code} ;;
  }

}
