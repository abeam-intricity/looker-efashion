view: article_color_lookup {
  sql_table_name: ARTICLE_COLOR_LOOKUP ;;

  dimension: article_code {
    label: "Article Code"
    sql: ${TABLE}.article_code ;;
    primary_key: yes
  }

  dimension: color_code {
    label: "Color Code"
    sql: ${TABLE}.color_code ;;
  }

  dimension: color_label {
    label: "Color"
    description: "Color of an article. Each SKU number has many color variations (there is not a unique SKU for each color). Color is not compatible with Product Promotions, only SKU."
    group_label: "Product"
    type: string
    hidden: no
    sql: (SELECT Color_label FROM Article_Color_Lookup) ;;
  }

}
