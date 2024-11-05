view: f_e_energy_fir_g {
  sql_table_name: dbo.F_E_ENERGY_FIR_G ;;

  dimension: new_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: concat(${yyyymmdd},${comp_cd},${bp_cd},${engcs_cd}) ;;
  }
  dimension: abnormal_desc {
    label: "이상설명"
    type: string
    sql: ${TABLE}.ABNORMAL_DESC ;;
  }
  dimension: abnormal_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.ABNORMAL_YN ;;
  }
  dimension: ABNORMAL_YN {
    label: "이상여부"
    type: yesno
    sql: ${TABLE}.ABNORMAL_YN is not null  ;;
  }
  dimension: bp_cd {
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: comp_cd {
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: engcs_cd {
    type: string
    sql: ${TABLE}.ENGCS_CD ;;
  }
  dimension: g_eng_amt {
    label: "목표 에너지사용량"
    type: number
    sql: ${TABLE}.G_ENG_AMT ;;
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
  measure: s_g_eng_amt {
    label: "목표 에너지사용량 합계"
    type: number
    sql: sum(${TABLE}.G_ENG_AMT) ;;
  }
}
