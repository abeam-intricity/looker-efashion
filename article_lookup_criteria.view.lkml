view: article_lookup_criteria {
  sql_table_name: BOBJ.ARTICLE_LOOKUP_CRITERIA ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: article_code {
    type: number
    sql: ${TABLE}.ARTICLE_CODE ;;
  }

  dimension: criteria {
    type: string
    sql: ${TABLE}.CRITERIA ;;
  }

  dimension: criteria_label {
    type: string
    sql: ${TABLE}.CRITERIA_LABEL ;;
  }

  dimension: criteria_type {
    type: string
    sql: ${TABLE}.CRITERIA_TYPE ;;
  }

  dimension: criteria_type_label {
    type: string
    sql: ${TABLE}.CRITERIA_TYPE_LABEL ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
