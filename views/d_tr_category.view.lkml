view: d_tr_category {
  sql_table_name: dbo.D_TR_CATEGORY ;;

  dimension: category_cd {
    primary_key: yes
    type: string
    sql: ${TABLE}.CATEGORY_CD ;;
  }
  dimension: category_nm {
    type: string
    sql: ${TABLE}.CATEGORY_NM ;;
  }
  dimension: p_category_cd {
    type: string
    sql: ${TABLE}.P_CATEGORY_CD ;;
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
  dimension: std_cd {
    type: string
    sql: ${TABLE}.STD_CD ;;
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
