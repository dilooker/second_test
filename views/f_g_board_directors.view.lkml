view: f_g_board_directors {
  sql_table_name: dbo.F_G_BOARD_DIRECTORS ;;

  dimension: attr1 {
    type: string
    sql: ${TABLE}.ATTR1 ;;
  }
  dimension: attr2 {
    type: string
    sql: ${TABLE}.ATTR2 ;;
  }
  dimension: attr3 {
    type: string
    sql: ${TABLE}.ATTR3 ;;
  }
  dimension: attr4 {
    type: string
    sql: ${TABLE}.ATTR4 ;;
  }
  dimension: attr5 {
    type: string
    sql: ${TABLE}.ATTR5 ;;
  }
  dimension: attr6 {
    type: string
    sql: ${TABLE}.ATTR6 ;;
  }
  dimension: attr7 {
    type: string
    sql: ${TABLE}.ATTR7 ;;
  }
  dimension: board_rspofc_cd {
    type: string
    sql: ${TABLE}.BOARD_RSPOFC_CD ;;
  }
  dimension: chairman_yn {
    type: string
    sql: ${TABLE}.CHAIRMAN_YN ;;
  }
  dimension: cmt_cd {
    type: string
    sql: ${TABLE}.CMT_CD ;;
  }
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: gender_cd {
    type: string
    sql: ${TABLE}.GENDER_CD ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
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
  dimension: use_yn {
    type: string
    sql: ${TABLE}.USE_YN ;;
  }
  dimension: yyyy {
    type: string
    sql: ${TABLE}.YYYY ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
