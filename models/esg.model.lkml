connection: "esg"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: esg_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: esg_default_datagroup

explore: f_c_sale {
  label: "경제-매출/영업이익"
  view_label: "F_경제-매출/영업이익"
  join: d_bp_master {
    view_label: "D_사업장"
    type: left_outer
    relationship: many_to_one
    sql_on: ${d_bp_master.bp_cd} = ${f_c_sale.BP_CD} ;;
  }
  join: d_date {
    view_label: "D_연도"
    fields: [year_id]
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_c_sale.YYYYMMDD} = ${d_date.yyyymmdd_id} ;;
  }
  join: d_org {
    view_label: "D_사업장"
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_c_sale.comp_cd} = ${d_org.org_cd} ;;
  }
}

# explore: f_e_energy_fir {}

# explore: f_e_energy_fir_g {}

# explore: f_e_energy_sec {}

# explore: f_e_energy_sec_g {}

explore: f_e_ghg_fir {
  label: "환경-온실가스"
  view_label: "온실가스"
  join: d_bp_master {
    view_label: "D_사업장"
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_e_ghg_fir.bp_cd} = ${d_bp_master.bp_cd} ;;
  }
  join: d_date {
    view_label: "D_연도"
    fields: [year_id]
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_e_ghg_fir.yyyymmdd} = ${d_date.yyyymmdd_id} ;;
  }
  join: d_org {
    view_label: "D_사업장"
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_e_ghg_fir.comp_cd} = ${d_org.org_cd} ;;
  }
  join: f_e_ghg_fir_g {
    view_label: "온실가스"
    type: inner
    relationship: one_to_one
    sql_on: ${f_e_ghg_fir.new_pk} = ${f_e_ghg_fir_g.new_pk} ;;
  }
}

# explore: f_e_ghg_fir_g {
#   view_label: "F_환경-온실가스"
#   join: d_bp_master {
#     view_label: "D_사업장"
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${f_e_ghg_fir_g.bp_cd} = ${d_bp_master.bp_cd} ;;
#   }
#   join: d_date {
#     view_label: "D_일자"
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${f_e_ghg_fir_g.yyyymmdd} = ${d_date.yyyymmdd_id} ;;
#   }
#   join: d_org {
#     view_label: "D_조직"
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${f_e_ghg_fir_g.comp_cd} = ${d_org.org_cd} ;;
#   }
# }

explore: f_e_ghg_frth {
  label: "환경-탄소배출권 시세"
  fields: [view_set*]
  join: d_date {
    view_label: "D_연도"
    fields: [d_date.yyyymmdd_partc_dt]
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_e_ghg_frth.yyyymmdd} = ${d_date.yyyymmdd_id} ;;
  }
}

explore: f_e_ghg_thd {
  fields: [view_set*]
  label: "환경-탄소배출권"
  join: d_bp_master {
    view_label: "D_사업장"
    type: left_outer
    relationship: many_to_one
    sql_on: ${d_bp_master.bp_cd} = ${f_e_ghg_thd.bp_cd} ;;
  }
  join: d_date {
    view_label: "D_연도"
    fields: [year_id]
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_e_ghg_thd.yyyymmdd} = ${d_date.yyyymmdd_id} ;;
  }
  join: d_org {
    view_label: "D_사업장"
    type: left_outer
    relationship: many_to_one
    sql_on: ${f_e_ghg_thd.comp_cd} = ${d_org.org_cd} ;;
  }
}

# explore: f_e_rnwmtrl_fir {}

# explore: f_e_trnd_001_my_inq {}

# explore: f_e_uswtr_fir {}

# explore: f_e_uswtr_fir_g {}

# explore: f_e_waste_fir {}

# explore: f_e_waste_fir_g {}

# explore: f_g_board_directors {}

# explore: f_g_board_esg_agenda {}

# explore: f_g_board_esg_emp_status {}

# explore: f_g_board_esg_opmt {}

# explore: f_s_community_fir {}

# explore: f_s_community_sec {}

# explore: f_s_dei_fir {}

# explore: f_s_dei_frth {}

# explore: f_s_dei_sec {}

# explore: f_s_hr_fir {}

# explore: f_s_hr_frth {}

# explore: f_s_hr_sec {}

# explore: f_s_hr_thd {}

# explore: f_s_safety_fir {}

# explore: f_s_safety_sec {}

# explore: f_tr_analysis_data {}

# explore: f_tr_analysis_data_bk_230303 {}

# explore: f_tr_analysis_data_test {}

# explore: f_tr_crawl_data {}

# explore: f_tr_tp_result {}
