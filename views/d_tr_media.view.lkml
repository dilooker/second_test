view: d_tr_media {
  sql_table_name: dbo.D_TR_MEDIA ;;

  dimension: media_cd {
    primary_key: yes
    type: string
    sql: ${TABLE}.MEDIA_CD ;;
  }
  dimension: media_nm {
    type: string
    sql: ${TABLE}.MEDIA_NM ;;
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
