connection: "snowflake-efashion"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: efashion_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: efashion_default_datagroup

explore: shop_clone {}

explore: outlet_lookup {
  label: "TBD"
  view_label: "TBD"
  join: shop_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${outlet_lookup.shop_code}=${shop_facts.shop_code} ;;
  }

}

explore: shop_facts {
  label: "TBD"
  view_label: "TBD"
  join: outlet_lookup {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${outlet_lookup.shop_code}=${shop_facts.shop_code} ;;
  }

  join: article_lookup {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${article_lookup.article_code}=${shop_facts.article_code} ;;
  }

  join: article_color_lookup {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${article_color_lookup.article_code}=${shop_facts.article_code} and ${article_color_lookup.color_code}=${shop_facts.color_code} ;;
  }

  join: calendar_year_lookup {
    view_label: "TBD"
    relationship: many_to_one
    sql_on: ${shop_facts.week_key}=${calendar_year_lookup.week_key} ;;
  }

  join: product_promotion_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${product_promotion_facts.article_code}=${shop_facts.article_code} ;;
  }

}

explore: article_color_lookup {
  label: "Article Color Lookup"
  view_label: "Article Color Lookup"
  join: shop_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${article_color_lookup.article_code}=${shop_facts.article_code} and ${article_color_lookup.color_code}=${shop_facts.color_code} ;;
  }

}

explore: article_lookup_criteria {
  label: "Article Lookup Criteria"
  view_label: "Article Lookup Criteria"
  join: article_lookup {
    view_label: "TBD"
    relationship: many_to_one
    sql_on: ${article_lookup_criteria.article_code}=${article_lookup.article_code} ;;
  }

}

explore: product_promotion_facts {
  label: "TBD"
  view_label: "TBD"
  join: promotion_lookup {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${promotion_lookup.promotion_key}=${product_promotion_facts.promotion_key} ;;
  }

  join: calendar_year_lookup {
    view_label: "TBD"
    relationship: many_to_one
    sql_on: ${product_promotion_facts.week_key}=${calendar_year_lookup.week_key} ;;
  }

  join: article_lookup {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${article_lookup.article_code}=${product_promotion_facts.article_code} ;;
  }

  join: shop_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${product_promotion_facts.article_code}=${shop_facts.article_code} ;;
  }

}

explore: promotion_lookup {
  label: "TBD"
  view_label: "TBD"
  join: product_promotion_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${promotion_lookup.promotion_key}=${product_promotion_facts.promotion_key} ;;
  }

}

explore: calendar_year_lookup {
  label: "TBD"
  view_label: "TBD"
  join: product_promotion_facts {
    view_label: "TBD"
    relationship: many_to_one
    sql_on: ${product_promotion_facts.week_key}=${calendar_year_lookup.week_key} ;;
  }

  join: shop_facts {
    view_label: "TBD"
    relationship: many_to_one
    sql_on: ${shop_facts.week_key}=${calendar_year_lookup.week_key} ;;
  }

}

explore: article_lookup {
  label: "TBD"
  view_label: "TBD"
  join: article_lookup_criteria {
    view_label: "TBD"
    relationship: many_to_one
    sql_on: ${article_lookup_criteria.article_code}=${article_lookup.article_code} ;;
  }

  join: shop_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${article_lookup.article_code}=${shop_facts.article_code} ;;
  }

  join: product_promotion_facts {
    view_label: "TBD"
    relationship: one_to_many
    sql_on: ${article_lookup.article_code}=${product_promotion_facts.article_code} ;;
  }

}
