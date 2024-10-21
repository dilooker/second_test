view: f_e_ghg_thd {
  sql_table_name: dbo.F_E_GHG_THD ;;
  set: view_set {
    fields: [
      yyyymmdd,
      comp_cd,
      bp_cd,
      cer_s_cost,
      cer_s_amt,
      cer_quota,
      cer_p_cost,
      cer_p_amt,
      ABNORMAL_YN
    ]
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
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: cer_p_amt {
    label: "탄소배출권 구매량"
    type: number
    sql: ${TABLE}.CER_P_AMT ;;
  }
  dimension: cer_p_cost {
    label: "탄소배출권 구매비용"
    type: number
    sql: ${TABLE}.CER_P_COST ;;
  }
  dimension: cer_quota {
    label: "탄소배출권 할당량"
    type: number
    sql: ${TABLE}.CER_QUOTA ;;
  }
  dimension: cer_s_amt {
    label: "탄소배출권 판매량"
    type: number
    sql: ${TABLE}.CER_S_AMT ;;
  }
  dimension: cer_s_cost {
    label: "탄소배출권 판매비용"
    type: number
    sql: ${TABLE}.CER_S_COST ;;
  }
  dimension: comp_cd {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYMMDD ;;
  }
  measure: count {
    type: count
  }
}
