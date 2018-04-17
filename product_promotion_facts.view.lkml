view: product_promotion_facts {
  sql_table_name: BOBJ.PRODUCT_PROMOTION_FACTS ;;

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

  dimension: duration {
    label: "Duration"
    description: "Duration in weeks of promotion."
    group_label: "Promotions"
    type: number
    hidden: no
    sql: (SELECT Duration FROM product_promotion_facts) ;;
  }

  dimension: promotion_key {
    label: "Promotion Key"
    sql: ${TABLE}.promotion_key ;;
  }

  dimension: week_key {
    label: "Week Key"
    sql: ${TABLE}.week_key ;;
  }

  measure: promotion_cost {
    label: "Promotion Cost USD"
    description: "Cost of promoting the SKU (in US dollars)."
    group_label: "Promotions"
    type: sum
    hidden: no
    sql: (SELECT sum(Promotion_cost) FROM product_promotion_facts) ;;
  }

}
