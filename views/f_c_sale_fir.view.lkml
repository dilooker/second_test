view: f_c_sale {
  sql_table_name: dbo.F_C_SALE_FIR ;;

  dimension: ABNORMAL_DESC {
    alias: [이상설명]
    type: string
    sql: ${TABLE}.ABNORMAL_DESC ;;
  }
  dimension: abnormal_yn {
    alias: [이상여부]
    type: string
    sql: ${TABLE}.ABNORMAL_YN is not null ;;
  }
  dimension: ABNORMAL_YN {
    type: yesno
    sql: ${TABLE}.ABNORMAL_YN = 'Y' ;;
  }
  dimension: BP_CD {
    alias: [사업장코드]
    primary_key: yes
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: comp_cd {
    alias: [계열사코드]
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: OPRTN_INCOME {
    alias: [영업이익]
    type: number
    sql: ${TABLE}.OPRTN_INCOME ;;
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
  dimension: REVENUE {
    alias: [매출액]
    type: number
    sql: ${TABLE}.REVENUE ;;
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
  dimension: YYYYMMDD {
    alias: [년월일]
    type: string
    sql: ${TABLE}.YYYYMMDD ;;
  }
  measure: count {
    type: count
  }
}
