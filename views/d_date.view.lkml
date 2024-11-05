view: d_date {
  sql_table_name: dbo.D_DATE ;;
  # fields_hidden_by_default: yes

  dimension: dd_id {
    hidden: yes
    type: string
    sql: ${TABLE}.DD_ID ;;
  }
  dimension: dd_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.DD_NM ;;
  }
  dimension: dd_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.DD_PARTC_NM ;;
  }
  dimension: dt_class_cd {
    hidden: yes
    type: number
    sql: ${TABLE}.DT_CLASS_CD ;;
  }
  dimension_group: last_load_dtime {
    hidden: yes
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.LAST_LOAD_DTIME ;;
  }
  dimension: mon_id {
    hidden: yes
    type: string
    sql: ${TABLE}.MON_ID ;;
  }
  dimension: mon_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.MON_NM ;;
  }
  dimension: mon_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.MON_PARTC_NM ;;
  }
  dimension: sort_desc_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SORT_DESC_ID ;;
  }
  dimension: sort_desc_year_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SORT_DESC_YEAR_ID ;;
  }
  dimension: sort_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SORT_ID ;;
  }
  dimension: use_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.USE_YN ;;
  }
  dimension: wday_id {
    hidden: yes
    type: string
    sql: ${TABLE}.WDAY_ID ;;
  }
  dimension: wday_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.WDAY_NM ;;
  }
  dimension: wday_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.WDAY_PARTC_NM ;;
  }
  dimension: year_id {
    label: "연도"
    type: string
    sql: ${TABLE}.YEAR_ID ;;
  }
  dimension: year_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YEAR_NM ;;
  }
  dimension: year_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YEAR_PARTC_NM ;;
  }
  dimension: ym_id {
    hidden: yes
    type: string
    sql: ${TABLE}.YM_ID ;;
  }
  dimension: ym_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YM_NM ;;
  }
  dimension: ym_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YM_PARTC_NM ;;
  }
  dimension: ymwk_id {
    hidden: yes
    type: string
    sql: ${TABLE}.YMWK_ID ;;
  }
  dimension: ymwk_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YMWK_NM ;;
  }
  dimension: ymwk_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YMWK_PARTC_NM ;;
  }
  dimension: ywk_id {
    hidden: yes
    type: string
    sql: ${TABLE}.YWK_ID ;;
  }
  dimension: ywk_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YWK_NM ;;
  }
  dimension: ywk_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YWK_PARTC_NM ;;
  }
  dimension: yyyyhh_id {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYHH_ID ;;
  }
  dimension: yyyyhh_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYHH_NM ;;
  }
  dimension: yyyyhh_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYHH_PARTC_NM ;;
  }
  dimension: yyyymmdd_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.YYYYMMDD_ID ;;
  }
  dimension: yyyymmdd_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYMMDD_NM ;;
  }
  dimension: yyyymmdd_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYMMDD_PARTC_NM ;;
  }
  dimension: yyyymmdd_partc_dt {
    label: "년월일"
    type: date
    sql: ${TABLE}.YYYYMMDD_PARTC_NM ;;
  }
  dimension: yyyyqt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYQT_ID ;;
  }
  dimension: yyyyqt_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYQT_NM ;;
  }
  dimension: yyyyqt_partc_nm {
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYQT_PARTC_NM ;;
  }
  measure: count {
    type: count
  }
}
