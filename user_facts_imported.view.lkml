include: "/project_that_will_be_imported_b/user_facts.view.lkml"
view: user_facts_imported {
  extends: [user_facts]

  dimension_group: new_date_field {
    type: time
    timeframes: [raw, date, time, week, month, quarter, year]
    sql: DATE_SUB(${created_at_time}, INTERVAL 1 MONTH);;
  }
}
