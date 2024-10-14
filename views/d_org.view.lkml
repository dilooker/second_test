view: d_org {
  sql_table_name: dbo.D_ORG ;;

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
  dimension: bs_afltn_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.BS_AFLTN_CD ;;
  }
  dimension: org_cd {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.ORG_CD ;;
  }
  dimension: org_nm {
    view_label: "D_사업장"
    label: "조직명"
    type: string
    sql: ${TABLE}.ORG_NM ;;
  }
  dimension: p_org_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.P_ORG_CD ;;
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
  dimension: seq {
    hidden: yes
    type: string
    sql: ${TABLE}.SEQ ;;
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
  dimension: use_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.USE_YN ;;
  }
  measure: count {
    hidden: yes
    type: count
  }
}
