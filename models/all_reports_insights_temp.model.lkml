connection: "all_report"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: all_reports_insights_temp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: all_reports_insights_temp_default_datagroup


explore: beat_audience_metrics_insights_by_date {}
