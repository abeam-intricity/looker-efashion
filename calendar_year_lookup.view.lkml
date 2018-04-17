view: calendar_year_lookup {
  sql_table_name: BOBJ.CALENDAR_YEAR_LOOKUP ;;

  dimension: holiday_flag {
    label: "Holiday (y/n)"
    description: "Holiday flag in week. Y=US public holiday during the time period, N=No holiday. Can be mixed with any time period dimension."
    group_label: "Time period"
    type: string
    hidden: no
    sql: UPPER(${TABLE}.holiday_flag) ;;
  }

  dimension: week_key {
    label: "Week Key"
    sql: ${TABLE}.week_key ;;
    primary_key: yes
  }

}
