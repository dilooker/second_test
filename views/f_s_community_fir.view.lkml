view: f_s_community_fir {
  sql_table_name: dbo.F_S_COMMUNITY_FIR ;;

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
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
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
  dimension: sc_cd {
    type: string
    sql: ${TABLE}.SC_CD ;;
  }
  dimension: sc_cost {
    type: number
    sql: ${TABLE}.SC_COST ;;
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
