view: d_region {
  sql_table_name: dbo.D_REGION ;;

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
  dimension: p_region_cd {
    type: string
    sql: ${TABLE}.P_REGION_CD ;;
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
  dimension: region_cd {
    primary_key: yes
    type: string
    sql: ${TABLE}.REGION_CD ;;
  }
  dimension: region_nm {
    type: string
    sql: ${TABLE}.REGION_NM ;;
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
