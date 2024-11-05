view: f_e_ghg_frth {
  sql_table_name: dbo.F_E_GHG_FRTH ;;
  set: view_set {
    fields: [
      item,
      closing_price,
      compare,
      flctt_rate,
      high_price,
      low_price,
      open_price,
      trdng_amt,
      trdng_vlm,
      weighted_avg
    ]
  }

  dimension: new_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.YYYYMMDD+${TABLE}.item ;;
  }
  dimension: closing_price {
    label: "종가"
    type: number
    sql: ${TABLE}.CLOSING_PRICE ;;
  }
  dimension: compare {
    label: "대비"
    type: number
    sql: ${TABLE}.COMPARE ;;
  }
  dimension: flctt_rate {
    label: "등락율"
    type: number
    sql: ${TABLE}.FLCTT_RATE ;;
  }
  dimension: high_price {
    label: "고가"
    type: number
    sql: ${TABLE}.HIGH_PRICE ;;
  }
  dimension: item {
    label: "종목"
    type: string
    sql: ${TABLE}.ITEM ;;
  }
  dimension: low_price {
    label: "저가"
    type: number
    sql: ${TABLE}.LOW_PRICE ;;
  }
  dimension: open_price {
    label: "시가"
    type: number
    sql: ${TABLE}.OPEN_PRICE ;;
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
  dimension: trdng_amt {
    label: "거래대금"
    type: number
    sql: ${TABLE}.TRDNG_AMT ;;
  }
  dimension: trdng_vlm {
    label: "거래량"
    type: number
    sql: ${TABLE}.TRDNG_VLM ;;
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
  dimension: weighted_avg {
    label: "가중평균"
    type: number
    sql: ${TABLE}.WEIGHTED_AVG ;;
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
  measure: i_closing_price {
    label: "종가"
    type: number
    sql: avg(${TABLE}.CLOSING_PRICE) ;;
  }
  measure: p_compare {
    label: "대비"
    type: number
    sql: avg(${TABLE}.COMPARE) ;;
  }
  measure: i_flctt_rate {
    label: "등락율"
    type: number
    sql: avg(${TABLE}.FLCTT_RATE) ;;
  }
  measure: i_high_price {
    label: "고가"
    type: number
    sql: avg(${TABLE}.HIGH_PRICE) ;;
  }
  measure: i_low_price {
    label: "저가"
    type: number
    sql: avg(${TABLE}.LOW_PRICE) ;;
  }
  measure: i_open_price {
    label: "시가"
    type: number
    sql: avg(${TABLE}.OPEN_PRICE) ;;
  }
  measure: tot_trdng_amt {
    label: "거래대금"
    type: number
    sql: sum(${TABLE}.TRDNG_AMT) ;;
  }
  measure: i_trdng_vlm {
    label: "거래량"
    type: number
    sql: avg(${TABLE}.TRDNG_VLM) ;;
  }
}
