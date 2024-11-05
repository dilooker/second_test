view: d_tr_media_detail {
  sql_table_name: dbo.D_TR_MEDIA_DETAIL ;;

  dimension: media_cd {
    type: string
    sql: ${TABLE}.MEDIA_CD ;;
  }
  dimension: media_detail_cd {
    primary_key: yes
    type: string
    sql: ${TABLE}.MEDIA_DETAIL_CD ;;
  }
  dimension: media_detail_nm {
    type: string
    sql: ${TABLE}.MEDIA_DETAIL_NM ;;
  }
  dimension: media_url {
    type: string
    sql: ${TABLE}.MEDIA_URL ;;
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
