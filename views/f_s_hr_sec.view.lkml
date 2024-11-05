view: f_s_hr_sec {
  sql_table_name: dbo.F_S_HR_SEC ;;

  dimension: abnormal_desc {
    type: string
    sql: ${TABLE}.ABNORMAL_DESC ;;
  }
  dimension: abnormal_yn {
    type: string
    sql: ${TABLE}.ABNORMAL_YN ;;
  }
  dimension: age_cd {
    type: string
    sql: ${TABLE}.AGE_CD ;;
  }
  dimension: bp_cd {
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: f_tr_cnt {
    type: number
    sql: ${TABLE}.F_TR_CNT ;;
  }
  dimension: f_vltr_cnt {
    type: number
    sql: ${TABLE}.F_VLTR_CNT ;;
  }
  dimension: m_tr_cnt {
    type: number
    sql: ${TABLE}.M_TR_CNT ;;
  }
  dimension: m_vltr_cnt {
    type: number
    sql: ${TABLE}.M_VLTR_CNT ;;
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
  dimension: rspn_cd {
    type: string
    sql: ${TABLE}.RSPN_CD ;;
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
    sql: ${TABLE}.UP_ID ;;
  }
  dimension: yyyymmdd {
    type: string
    sql: ${TABLE}.YYYYMMDD ;;
  }
  measure: count {
    type: count
  }
}
