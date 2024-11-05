view: d_org_v {
  sql_table_name: dbo.D_ORG_V ;;

  dimension: attr1 {
    type: string
    sql: ${TABLE}.ATTR1 ;;
  }
  dimension: bs_afltn_cd {
    type: string
    sql: ${TABLE}.BS_AFLTN_CD ;;
  }
  dimension: depth {
    type: string
    sql: ${TABLE}.DEPTH ;;
  }
  dimension: depth_1 {
    type: string
    sql: ${TABLE}.DEPTH_1 ;;
  }
  dimension: depth_2 {
    type: string
    sql: ${TABLE}.DEPTH_2 ;;
  }
  dimension: depth_cd_1 {
    type: string
    sql: ${TABLE}.DEPTH_CD_1 ;;
  }
  dimension: depth_cd_2 {
    type: string
    sql: ${TABLE}.DEPTH_CD_2 ;;
  }
  dimension: level {
    type: number
    sql: ${TABLE}.LEVEL ;;
  }
  dimension: org_cd {
    type: string
    sql: ${TABLE}.ORG_CD ;;
  }
  dimension: org_nm {
    type: string
    sql: ${TABLE}.ORG_NM ;;
  }
  dimension: p_org_cd {
    type: string
    sql: ${TABLE}.P_ORG_CD ;;
  }
  dimension: seq {
    type: string
    sql: ${TABLE}.SEQ ;;
  }
  measure: count {
    type: count
  }
}
