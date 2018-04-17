view: shop_clone {
  sql_table_name: PUBLIC.SHOP_CLONE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: amount_sold {
    type: number
    sql: ${TABLE}.AMOUNT_SOLD ;;
  }

  dimension: article_code {
    type: number
    sql: ${TABLE}.ARTICLE_CODE ;;
  }

  dimension: color_code {
    type: number
    sql: ${TABLE}.COLOR_CODE ;;
  }

  dimension: margin {
    type: number
    sql: ${TABLE}.MARGIN ;;
  }

  dimension: quantity_sold {
    type: number
    sql: ${TABLE}.QUANTITY_SOLD ;;
  }

  dimension: shop_code {
    type: number
    sql: ${TABLE}.SHOP_CODE ;;
  }

  dimension: week_key {
    type: number
    sql: ${TABLE}.WEEK_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
