view: d_bp_master {
  sql_table_name: dbo.D_BP_MASTER ;;

  dimension: attr1 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR1 ;;
  }
  dimension: attr2 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR2 ;;
  }
  dimension: attr3 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR3 ;;
  }
  dimension: attr4 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR4 ;;
  }
  dimension: attr5 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR5 ;;
  }
  dimension: attr6 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR6 ;;
  }
  dimension: attr7 {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTR7 ;;
  }
  dimension: bp_cd {
    label: "사업장코드"
    primary_key: yes
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: reg_comp_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.REG_COMP_CD ;;
  }
  dimension_group: reg_dt {
    hidden: yes
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.REG_DT ;;
  }
  dimension: reg_id {
    hidden: yes
    type: string
    sql: ${TABLE}.REG_ID ;;
  }
  dimension: region_cd {
    label: "지역코드"
    type: string
    sql: ${TABLE}.REGION_CD ;;
  }
  dimension: up_comp_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.UP_COMP_CD ;;
  }
  dimension_group: up_dt {
    hidden: yes
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.UP_DT ;;
  }
  dimension: up_id {
    hidden: yes
    type: string
    sql: ${TABLE}.UP_ID ;;
  }
  measure: count {
    type: count
  }
}
