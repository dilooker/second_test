view: f_e_energy_fir {
  sql_table_name: dbo.F_E_ENERGY_FIR ;;

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
  dimension: eng_amt {
    label: "에너지사용량"
    type: number
    sql: ${TABLE}.ENG_AMT ;;
  }
  dimension: engcs_cd {
    label: "에너지유형"
    type: string
    sql: ${TABLE}.ENGCS_CD ;;
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
  measure: s_eng_amt {
    label: "에너지사용량합계"
    type: number
    sql: sum(${TABLE}.ENG_AMT) ;;
  }
}
