connection: "esg"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: esg_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: esg_default_datagroup

explore: f_c_sale {
  view_label: "경제-매출/영업이익"
  join: d_bp_master {
    type: left_outer
    relationship: many_to_one
    sql_on: ${d_bp_master.bp_cd} = ${f_c_sale.BP_CD} ;;
  }
  join: d_date {
    type: left_outer
    sql_on: ${f_c_sale.YYYYMMDD} = ${d_date.yyyymmdd_id} ;;
    relationship: many_to_one
  }
  # join: d_org {
  #   type: left_outer
  #   sql_on: ${f_c_sale.comp_cd} = ${d_org.org_cd} ;;
  #   relationship: many_to_one
  # }
}

# explore: f_e_energy_fir {}

# explore: f_e_energy_fir_g {}

# explore: f_e_energy_sec {}

# explore: f_e_energy_sec_g {}

# explore: f_e_ghg_fir {}

# explore: f_e_ghg_fir_g {}

# explore: f_e_ghg_frth {}

# explore: f_e_ghg_frth_0612 {}

# explore: f_e_ghg_thd {}

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
