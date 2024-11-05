view: f_tr_tp_result {
  sql_table_name: dbo.F_TR_TP_RESULT ;;

  dimension: attribute_cd {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CD ;;
  }
  dimension: crawled_ymd {
    type: string
    sql: ${TABLE}.CRAWLED_YMD ;;
  }
  dimension: keyword_name {
    type: string
    sql: ${TABLE}.KEYWORD_NAME ;;
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
  dimension: word_cnt {
    type: number
    sql: ${TABLE}.WORD_CNT ;;
  }
  measure: count {
    type: count
    drill_fields: [keyword_name]
  }
}
