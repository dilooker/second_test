view: f_e_ghg_fir_g {
  sql_table_name: dbo.F_E_GHG_FIR_G ;;

  dimension: abnormal_desc {
    label: "목표 이상설명"
    type: string
    sql: ${TABLE}.ABNORMAL_DESC ;;
  }
  dimension: abnormal_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.ABNORMAL_YN ;;
  }
  dimension: abnormal {
    label: "목표 이상여부"
    type: yesno
    sql: ${TABLE}.ABNORMAL_YN is not null ;;
  }
  dimension: new_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: concat(${yyyymmdd},${comp_cd},${bp_cd},${ghg_cd} ;;
  }
  dimension: bp_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: comp_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: g_scope_dsc_amt {
    label: "목표 온실가스 배출량"
    type: number
    sql: ${TABLE}.G_SCOPE_DSC_AMT ;;
  }
  dimension: ghg_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.GHG_CD ;;
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
  dimension: yyyymmdd {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYMMDD ;;
  }
  measure: count {
    hidden: yes
    type: count
  }
}
