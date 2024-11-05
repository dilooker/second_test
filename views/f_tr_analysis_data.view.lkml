view: f_tr_analysis_data {
  sql_table_name: dbo.F_TR_ANALYSIS_DATA ;;

  dimension: analysis_cd {
    type: string
    sql: ${TABLE}.ANALYSIS_CD ;;
  }
  dimension: attribute_cd {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CD ;;
  }
  dimension: crawled_cd {
    type: string
    sql: ${TABLE}.CRAWLED_CD ;;
  }
  dimension: crawled_ymd {
    type: string
    sql: ${TABLE}.CRAWLED_YMD ;;
  }
  dimension: match_word {
    type: string
    sql: ${TABLE}.MATCH_WORD ;;
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
  dimension: sntmn_cd {
    type: string
    sql: ${TABLE}.SNTMN_CD ;;
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
  measure: count {
    type: count
  }
}
