view: d_comm {
  sql_table_name: dbo.D_COMM ;;

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
  dimension: comm_cd {
    primary_key: yes
    type: string
    sql: ${TABLE}.COMM_CD ;;
  }
  dimension: comm_nm {
    type: string
    sql: ${TABLE}.COMM_NM ;;
  }
  dimension: dim_cd {
    primary_key: yes
    type: string
    sql: ${TABLE}.DIM_CD ;;
  }
  dimension: dim_nm {
    type: string
    sql: ${TABLE}.DIM_NM ;;
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
  dimension: seq {
    type: string
    sql: ${TABLE}.SEQ ;;
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
  measure: count {
    type: count
  }
}
