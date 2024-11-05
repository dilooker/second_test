view: f_e_trnd_001_my_inq {
  sql_table_name: dbo.F_E_TRND_001_MY_INQ ;;

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }
  dimension: gubun {
    type: string
    sql: ${TABLE}.GUBUN ;;
  }
  dimension: inquiry_nm {
    type: string
    sql: ${TABLE}.INQUIRY_NM ;;
  }
  dimension: nm {
    type: string
    sql: ${TABLE}.NM ;;
  }
  dimension: reg_date {
    type: string
    sql: ${TABLE}.REG_DATE ;;
  }
  dimension: reg_id {
    type: string
    sql: ${TABLE}.REG_ID ;;
  }
  measure: count {
    type: count
  }
}
