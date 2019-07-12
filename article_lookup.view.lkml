view: article_lookup {
  sql_table_name: BOBJ.ARTICLE_LOOKUP ;;

  dimension: article_code {
    label: "SKU number"
    description: "Stock Keeping Unit number (SKU).The lowest level of product description."
    group_label: "Product"
    type: number
    hidden: no
    primary_key: yes
    sql: ${TABLE}.article_code ;;
  }

  dimension: article_label {
    label: "SKU desc"
    description: "Stock Keeping Unit description (SKU). Lowest level of product description. Each product comes in several different colors."
    group_label: "Product"
    type: string
    hidden: no
    sql: ${TABLE}.article_label ;;
  }

  dimension: sale_price {
    label: "Unit Price MSRP"
    description: "This is the manufacturers suggested retail price per SKU and color."
    group_label: "Product"
    type: number
    hidden: no
    sql: ${TABLE}.sale_price ;;
  }

  measure: extended_price {
    label: "Extended price"
    description: "The extended price let's you display the sum of prices over another dimension (such as outlet). When used with SKU number all the color variations (of each SKU) are added together."
    group_label: "Product"
    type: sum
    hidden: no
    sql: ${sale_price} ;;
  }

}
