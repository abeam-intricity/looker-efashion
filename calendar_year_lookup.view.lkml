view: calendar_year_lookup {
  sql_table_name: CALENDAR_YEAR_LOOKUP ;;

  dimension: holiday_flag {
    label: "Holiday (y/n)"
    description: "Holiday flag in week. Y=US public holiday during the time period, N=No holiday. Can be mixed with any time period dimension."
    group_label: "Time period"
    type: string
    hidden: no
    sql: (SELECT ucase(Holiday_Flag) FROM Calendar_year_lookup) ;;
  }

  dimension: week_key {
    label: "Week Key"
    sql: ${TABLE}.week_key ;;
    primary_key: yes
  }

}
