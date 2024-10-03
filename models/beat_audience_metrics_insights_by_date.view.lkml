# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: beat_audience_metrics_insights_by_date {
  hidden: yes
    join: beat_audience_metrics_insights_by_date__user_id_s {
      view_label: "Beat Audience Metrics Insights By Date: User Id S"
      sql: LEFT JOIN UNNEST(${beat_audience_metrics_insights_by_date.user_id_s}) as beat_audience_metrics_insights_by_date__user_id_s ;;
      relationship: one_to_many
    }
}
view: beat_audience_metrics_insights_by_date {
  sql_table_name: `adsmovil-reports.temp_tables.beat_audience_metrics_insights_by_date` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: city_residence {
    type: string
    sql: ${TABLE}.city_residence ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: nivsocio {
    type: string
    sql: ${TABLE}.nivsocio ;;
  }
  dimension: percent_uniques {
    type: number
    sql: ${TABLE}.percent_uniques ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: total_uniques {
    type: number
    sql: ${TABLE}.total_uniques ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: uniques {
    type: number
    sql: ${TABLE}.uniques ;;
  }
  dimension: user_id_s {
    hidden: yes
    sql: ${TABLE}.user_id_s ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: beat_audience_metrics_insights_by_date__user_id_s {

  dimension: beat_audience_metrics_insights_by_date__user_id_s {
    type: string
    sql: beat_audience_metrics_insights_by_date__user_id_s ;;
  }
}
