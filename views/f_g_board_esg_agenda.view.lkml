view: f_g_board_esg_agenda {
  sql_table_name: dbo.F_G_BOARD_ESG_AGENDA ;;

  dimension: agenda_desc {
    type: string
    sql: ${TABLE}.AGENDA_DESC ;;
  }
  dimension: agenda_id {
    type: number
    sql: ${TABLE}.AGENDA_ID ;;
  }
  dimension: esg_opmt_id {
    type: number
    sql: ${TABLE}.ESG_OPMT_ID ;;
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
  measure: count {
    type: count
  }
}
