view: f_g_board_esg_opmt {
  sql_table_name: dbo.F_G_BOARD_ESG_OPMT ;;

  dimension: cmt_cd {
    type: string
    sql: ${TABLE}.CMT_CD ;;
  }
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: esg_opmt_id {
    type: number
    sql: ${TABLE}.ESG_OPMT_ID ;;
  }
  dimension: opmt_dt {
    type: string
    sql: ${TABLE}.OPMT_DT ;;
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
  dimension: year_cnt {
    type: number
    sql: ${TABLE}.YEAR_CNT ;;
  }
  measure: count {
    type: count
  }
}
