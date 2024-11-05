view: f_s_hr_frth {
  sql_table_name: dbo.F_S_HR_FRTH ;;

  dimension: abnormal_desc {
    type: string
    sql: ${TABLE}.ABNORMAL_DESC ;;
  }
  dimension: abnormal_yn {
    type: string
    sql: ${TABLE}.ABNORMAL_YN ;;
  }
  dimension: bp_cd {
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: clclv_cd {
    type: string
    sql: ${TABLE}.CLCLV_CD ;;
  }
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: f_emp_cnt {
    type: number
    sql: ${TABLE}.F_EMP_CNT ;;
  }
  dimension: m_emp_cnt {
    type: number
    sql: ${TABLE}.M_EMP_CNT ;;
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
