view: f_tr_crawl_data {
  sql_table_name: dbo.F_TR_CRAWL_DATA ;;

  dimension: content {
    type: string
    sql: ${TABLE}.CONTENT ;;
  }
  dimension: crawl_cd {
    type: string
    sql: ${TABLE}.CRAWL_CD ;;
  }
  dimension: crawled_ymd {
    type: string
    sql: ${TABLE}.CRAWLED_YMD ;;
  }
  dimension: media_detail_cd {
    type: string
    sql: ${TABLE}.MEDIA_DETAIL_CD ;;
  }
  dimension: reg_comp_cd {
    type: string
    sql: ${TABLE}.REG_COMP_CD ;;
  }
  dimension_group: reg_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.REG_DT ;;
  }
  dimension: reg_id {
    type: string
    sql: ${TABLE}.REG_ID ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }
  dimension: up_comp_cd {
    type: string
    sql: ${TABLE}.UP_COMP_CD ;;
  }
  dimension_group: up_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.UP_DT ;;
  }
  dimension: up_id {
    type: string
    sql: ${TABLE}."UP ID" ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }
  measure: count {
    type: count
  }
}
