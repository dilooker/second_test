view: f_g_board_esg_emp_status {
  sql_table_name: dbo.F_G_BOARD_ESG_EMP_STATUS ;;

  dimension: age_cd {
    type: string
    sql: ${TABLE}.AGE_CD ;;
  }
  dimension: cmt_cd {
    type: string
    sql: ${TABLE}.CMT_CD ;;
  }
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: emp_cnt {
    type: number
    sql: ${TABLE}.EMP_CNT ;;
  }
  dimension: gender_cd {
    type: string
    sql: ${TABLE}.GENDER_CD ;;
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
  dimension: yyyy {
    type: string
    sql: ${TABLE}.YYYY ;;
  }
  measure: count {
    type: count
  }
}
