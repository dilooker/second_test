view: f_c_sale {
  sql_table_name: dbo.F_C_SALE_FIR ;;

  dimension: ABNORMAL_DESC {
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
  dimension: BP_CD {
    primary_key: yes
    label: "사업장코드"
    type: string
    sql: ${TABLE}.BP_CD ;;
  }
  dimension: comp_cd {
    label: "계열사코드"
    type: string
    sql: ${TABLE}.COMP_CD ;;
  }
  dimension: OPRTN_INCOME {
    label: "영업이익"
    type: number
    sql: ${TABLE}.OPRTN_INCOME ;;
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
  dimension: REVENUE {
    label: "매출액"
    type: number
    sql: ${TABLE}.REVENUE ;;
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
  dimension: YYYYMMDD {
    label: "년월일"
    type: string
    sql: ${TABLE}.YYYYMMDD ;;
  }
  dimension: NEW_PK {
    hidden: yes
    type: string
    sql: concat(${YYYYMMDD},${comp_cd},${BP_CD}) ;;
  }
  measure: count {
    type: count
  }
}
