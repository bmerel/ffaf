\c test;

CREATE TABLE IF NOT EXISTS test (
  id INT PRIMARY KEY,
  username VARCHAR,
  email VARCHAR
);

CREATE TABLE fb_approvals_process (
  OPRID varchar(30) NOT NULL,
  PROCESS_ID bigint NOT NULL,
  PROCESS_KEY varchar(30) NOT NULL,
  REQUEST_CAT varchar(30) NOT NULL,
  REQUEST_TYPE varchar(100) DEFAULT NULL,
  REQUEST_STATUS varchar(30) DEFAULT NULL,
  REQUESTEE_OPRID varchar(30) DEFAULT NULL,
  REQUESTEE_NAME varchar(92) DEFAULT NULL,
  DATE_CREATED date DEFAULT NULL,
  HRS_ACTION_URL varchar(255) DEFAULT NULL,
  ASSIGN_STAGE_NBR bigint NOT NULL,
  ASSIGN_PATH_ID varchar(2) NOT NULL,
  ASSIGN_STEP_NBR decimal(5,2) NOT NULL,
  PROCESS_STAGE_NBR bigint NOT NULL,
  PROCESS_PATH_ID varchar(2) NOT NULL,
  PROCESS_STEP_NBR decimal(5,2) NOT NULL,
  PRIMARY KEY (OPRID,PROCESS_ID,PROCESS_KEY,ASSIGN_STAGE_NBR,ASSIGN_PATH_ID,ASSIGN_STEP_NBR,PROCESS_STAGE_NBR,PROCESS_PATH_ID,PROCESS_STEP_NBR));




 CREATE TABLE fb_approvals_steps (
  PROCESS_ID bigint NOT NULL,
  PROCESS_KEY varchar(30) NOT NULL,
  STEP_STAGE_NBR bigint NOT NULL,
  STEP_PATH_ID varchar(2) NOT NULL,
  STEP_STEP_NBR decimal(5,2) NOT NULL,
  STEP_STATUS varchar(30) NOT NULL,
  STEP_ASSIGNMENT varchar(92) DEFAULT NULL,
  ASSIGNEE varchar(92) NOT NULL,
  DATE_COMPLETED date DEFAULT NULL,
  PRIMARY KEY (PROCESS_ID,PROCESS_KEY,STEP_STAGE_NBR,STEP_PATH_ID,STEP_STEP_NBR,ASSIGNEE,STEP_STATUS));


CREATE TABLE fb_approved_for_hire (
  ID SERIAL,
  COUNT1 bigint DEFAULT NULL,
  PRIMARY KEY (ID));


CREATE TABLE fb_bio_data (
  oprid varchar(40) NOT NULL,
  first_name varchar(40) DEFAULT NULL,
  last_name varchar(40) DEFAULT NULL,
  position_type_desc varchar(60) DEFAULT NULL,
  emp_id varchar(20) DEFAULT NULL,
  ueid varchar(20) DEFAULT NULL,
  file_number varchar(20) DEFAULT NULL,
  adj_eod_date varchar(20) DEFAULT NULL,
  ra_code varchar(10) DEFAULT NULL,
  rtng_offcl_name varchar(40) DEFAULT NULL,
  PRSNL_RTNG_OFFCL_PRSNL_EMP_ID varchar(20) DEFAULT NULL,
  location varchar(40) DEFAULT NULL,
  cost_code varchar(10) DEFAULT NULL,
  dept_squad varchar(60) DEFAULT NULL,
  building varchar(100) DEFAULT NULL,
  room varchar(40) DEFAULT NULL,
  work_phone varchar(30) DEFAULT NULL,
  mailing_addr varchar(120) DEFAULT NULL,
  home_addr varchar(120) DEFAULT NULL,
  email_addr varchar(60) DEFAULT NULL,
  home_phone varchar(30) DEFAULT NULL,
  mobile_phone varchar(30) DEFAULT NULL,
  emergency_contact varchar(40) DEFAULT NULL,
  emergency_primary varchar(40) DEFAULT NULL,
  disability varchar(100) DEFAULT NULL,
  ethnicity_race varchar(100) DEFAULT NULL,
  national_original varchar(100) DEFAULT NULL,
  gender varchar(20) DEFAULT NULL,
  transgender varchar(20) DEFAULT NULL,
  sexual_orientation varchar(30) DEFAULT NULL,
  health_insurance varchar(40) DEFAULT NULL,
  health_insurance_type varchar(40) DEFAULT NULL,
  life_insurance varchar(60) DEFAULT NULL,
  retirement_type varchar(40) DEFAULT NULL,
  tsp_percent varchar(10) DEFAULT NULL,
  tsp_amount varchar(10) DEFAULT NULL,
  roth_percent varchar(5) DEFAULT NULL,
  roth_amount varchar(10) DEFAULT NULL,
  retirement_eligibility_date varchar(15) DEFAULT NULL,
  mandatory_retirement_date varchar(15) DEFAULT NULL,
  position_type varchar(30) DEFAULT NULL,
  position_assigned varchar(20) DEFAULT NULL,
  position_grade varchar(10) DEFAULT NULL,
  position_step varchar(5) DEFAULT NULL,
  position_adj_salary varchar(30) DEFAULT NULL,
  position_wgi_date varchar(15) DEFAULT NULL,
  last_par_rating varchar(40) DEFAULT NULL,
  par_issued_date varchar(15) DEFAULT NULL,
  leave_annual_hrs varchar(30) DEFAULT NULL,
  use_or_lose_hrs varchar(30) DEFAULT NULL,
  negetive_leave_balance varchar(30) DEFAULT NULL,
  leave_sick_hrs varchar(30) DEFAULT NULL,
  leave_comp_hrs varchar(30) DEFAULT NULL,
  TMP_MVMNT_TYPE_CODE varchar(30) DEFAULT NULL,
  TMP_MVMNT_STATUS_DESC varchar(55) DEFAULT NULL,
  PRSNL_VET_STATUS_DESC varchar(100) DEFAULT NULL,
  scd_retirement varchar(15) DEFAULT NULL,
  prsnl_adj_agnt_eod_date varchar(15) DEFAULT NULL,
  prsnl_adj_eod_date varchar(15) DEFAULT NULL,
  prsnl_agnt_eod_date varchar(15) DEFAULT NULL,
  prsnl_eod_date varchar(15) DEFAULT NULL,
  prsnl_flsa_desc varchar(15) DEFAULT NULL,
  vera_vsip_status_desc varchar(15) DEFAULT NULL,
  VERA_DEPART_START_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  VERA_DEPART_END_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  PERF_RTNG_OFFCL_NAME varchar(50) DEFAULT NULL,
  PERF_RTNG_OFFCL_PRSNL_EMP_ID varchar(40) DEFAULT NULL,
  PRSNL_PERF_PLAN_STATUS_DESC varchar(55) DEFAULT NULL,
  WRAP_UP_STS_DESCR varchar(100) DEFAULT NULL,
  PROB_PERIOD_FLAG varchar(1) DEFAULT NULL,
  PLAN_CHECK_IN_DATE varchar(15) DEFAULT NULL,
  PSTN_PAY_PLAN_CODE varchar(20) DEFAULT NULL,
  PSTN_PAY_GRADE_CODE varchar(20) DEFAULT NULL,
  PROB_SUPV_END_DATE varchar(15) DEFAULT NULL,
  PROB_SES_END_DATE varchar(15) DEFAULT NULL,
  NEXT_BIRTHDAY_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_BIRTHDAY_DATE_UNIX bigint DEFAULT '0',
  NEXT_BIRTHDAY_DESC varchar(255) DEFAULT NULL,
  NEXT_FBI_SVC_ANNIVERSARY_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_FBI_SVC_ANNIVERSARY_DATE_UNIX bigint DEFAULT '0',
  NEXT_FBI_SVC_ANNIVERSARY_DESC varchar(255) DEFAULT NULL,
  NEXT_FBI_SVC_ANNIVERSARY_NNUM varchar(16) DEFAULT NULL,
  NEXT_GOV_SVC_ANNIVERSARY_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_GOV_SVC_ANNIVERSARY_DATE_UNIX bigint DEFAULT '0',
  NEXT_GOV_SVC_ANNIVERSARY_DESC varchar(255) DEFAULT NULL,
  NEXT_GOV_SVC_ANNIVERSARY_NNUM varchar(16) DEFAULT NULL,
  NEXT_RETIRE_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_RETIRE_DESC varchar(255) DEFAULT NULL,
  RETIRE_ELIG_DATE timestamp DEFAULT NULL,
  NEXT_SEP_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_SEP_DESC varchar(255) DEFAULT NULL,
  NEXT_PROB_END_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_PROB_END_DESC varchar(255) DEFAULT NULL,
  NEXT_PROMOTE_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_WGI_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_TDY_START_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_TDY_START_DESC varchar(255) DEFAULT NULL,
  NEXT_TDY_END_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  NEXT_TDY_END_DESC varchar(255) DEFAULT NULL,
  NEXT_TDY_START_TO_LOC varchar(255) DEFAULT NULL,
  TMP_MVMNT_ORDRD_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  TMP_MVMNT_CMPLTD_DATE timestamp DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (oprid));


CREATE TABLE fb_careers_huntsville_job_openings (
  job_opening_id varchar(15) NOT NULL,
  positing_title varchar(200) DEFAULT NULL,
  position_nbr varchar(8) NOT NULL,
  descr varchar(30) DEFAULT NULL,
  descr1 varchar(30) DEFAULT NULL,
  hrs_jo_pst_open_dt varchar(15) DEFAULT NULL,
  hrs_jo_pst_cls_dt varchar(15) DEFAULT NULL,
  fb_hrs_jo_pst_id varchar(20) NOT NULL,
  descr2 varchar(30) DEFAULT NULL,
  hrs_source_id varchar(15) DEFAULT NULL,
  descr3 varchar(50) DEFAULT NULL,
  PRIMARY KEY (job_opening_id,position_nbr,fb_hrs_jo_pst_id));


CREATE TABLE fb_careers_mass_hire (
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  HRS_JO_PST_SEQ varchar(38) NOT NULL,
  POSTING_TITLE varchar(200) NOT NULL,
  HRS_JO_PST_OPN_DT date DEFAULT NULL,
  HRS_JO_PST_OPN_STR varchar(12) DEFAULT NULL,
  HRS_JO_PST_CLS_DT date DEFAULT NULL,
  HRS_JO_PST_CLS_STR varchar(12) DEFAULT NULL,
  URL_1 varchar(15) DEFAULT NULL,
  HRS_JO_PST_TYPE varchar(1) NOT NULL,
  PERSONNEL_TYPE varchar(1) DEFAULT NULL,
  HRS_OPEN_TYPE varchar(1) DEFAULT NULL,
  PRIMARY KEY (HRS_JOB_OPENING_ID,HRS_JO_PST_SEQ));


CREATE TABLE fb_careers_non_mass_hire (
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  HRS_JO_PST_SEQ varchar(38) NOT NULL,
  POSTING_TITLE varchar(200) NOT NULL,
  HRS_JO_PST_OPN_DT date DEFAULT NULL,
  HRS_JO_PST_OPN_STR varchar(10) DEFAULT NULL,
  HRS_JO_PST_CLS_DT date DEFAULT NULL,
  HRS_JO_PST_CLS_STR varchar(10) DEFAULT NULL,
  URL_1 varchar(15) DEFAULT NULL,
  HRS_JO_PST_TYPE varchar(1) NOT NULL,
  PERSONNEL_TYPE varchar(1) DEFAULT NULL,
  HRS_OPEN_TYPE varchar(1) DEFAULT NULL,
  PRIMARY KEY (HRS_JOB_OPENING_ID,HRS_JO_PST_SEQ));

 CREATE TABLE fb_cert_list (
  OPRID varchar(30) NOT NULL,
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  FB_HRS_CERT_NBR varchar(20) NOT NULL,
  FB_LIST_ID varchar(30) NOT NULL,
  NAME varchar(50) DEFAULT NULL,
  DESCR100 varchar(100) DEFAULT NULL,
  POSTING_TITLE varchar(200) DEFAULT NULL,
  URL_1 varchar(11) DEFAULT NULL,
  URL_2 varchar(8) DEFAULT NULL,
  DESCR varchar(24) DEFAULT NULL,
  EXPIRATION_DATE date DEFAULT NULL,
  COUNT1 varchar(15) DEFAULT NULL,
  COUNT2 varchar(15) DEFAULT NULL,
  COUNT3 varchar(15) DEFAULT NULL,
  PRIMARY KEY (OPRID,HRS_JOB_OPENING_ID,FB_HRS_CERT_NBR,FB_LIST_ID));
  

CREATE TABLE fb_cert_list_skill (
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  FB_HRS_CERT_NBR varchar(20) NOT NULL,
  FB_LIST_ID varchar(38) NOT NULL,
  JPM_CAT_TYPE varchar(12) NOT NULL,
  JPM_CAT_ITEM_ID varchar(12) NOT NULL,
  JPM_TEXT1325_1 varchar(1325) NOT NULL,
  FB_CHECK_BOX varchar(1) NOT NULL,
  PRIMARY KEY (HRS_JOB_OPENING_ID,FB_HRS_CERT_NBR,FB_LIST_ID,JPM_CAT_ITEM_ID));
  


CREATE TABLE fb_contact_specialist (
  field_office varchar(60) NOT NULL,
  topic varchar(60) NOT NULL,
  poc_name varchar(80) DEFAULT NULL,
  phone varchar(10) DEFAULT NULL,
  email varchar(40) DEFAULT NULL
  );


CREATE TABLE fb_csa_detail_data (
  oprid varchar(40) NOT NULL,
  row_id bigint NOT NULL,
  csa_description varchar(100) NOT NULL,
  csa_amount varchar(30) DEFAULT NULL,
  csa_owed_amount varchar(30) DEFAULT NULL,
  csa_start_date varchar(15) NOT NULL,
  csa_end_date varchar(15) NOT NULL,
  csa_start_date_sort timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (oprid,row_id,csa_description));
  

CREATE TABLE fb_diversity (
  DATE_FY bigint NOT NULL,
  GROUP_CODE varchar(20) NOT NULL,
  SUBGROUP_DESC varchar(55) NOT NULL,
  MINORITY_PCT float8 DEFAULT NULL,
  FEMALE_PCT float8 DEFAULT NULL,
  PRIMARY KEY (DATE_FY,GROUP_CODE,SUBGROUP_DESC)); 
  

CREATE TABLE fb_diversity_addl (
  DATE_FY bigint NOT NULL,
  ONBRD_TRANSGENDER_PCT float8 DEFAULT NULL,
  ONBRD_LGBT_PCT float8 DEFAULT NULL,
  ONBRD_DISABLED_PCT float8 DEFAULT NULL,
  ONBRD_VET_PCT float8 DEFAULT NULL,
  PRIMARY KEY (DATE_FY));


CREATE TABLE fb_diversity_data (
  report varchar(30) NOT NULL,
  population varchar(30) NOT NULL,
  population_type varchar(30) NOT NULL,
  year bigint NOT NULL,
  percent decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (report,population,population_type,year));


CREATE TABLE fb_diversity_eri (
  GROUP_CODE varchar(27) NOT NULL,
  SUBGROUP_DESC varchar(55) NOT NULL,
  ERI_DESC varchar(100) NOT NULL,
  RACE_PCT float8 DEFAULT NULL,
  PRIMARY KEY (GROUP_CODE,SUBGROUP_DESC,ERI_DESC));
  

CREATE TABLE fb_electronic_w2 (
  oprid varchar(30) NOT NULL,
  emplid varchar(11) NOT NULL,
  uid bigint NOT NULL,
  display_flag varchar(1) DEFAULT NULL,
  ack varchar(3) DEFAULT NULL,
  ack_dttm timestamp DEFAULT NULL,
  PRIMARY KEY (oprid,emplid,uid));

 CREATE TABLE fb_employee_manager_mapping (
  rate_type varchar(5) NOT NULL,
  emplid varchar(40) NOT NULL,
  employee_oprid varchar(40) NOT NULL,
  manager_emplid varchar(40) NOT NULL,
  manager_oprid varchar(40) NOT NULL,
  manager_uid varchar(40) DEFAULT NULL,
  fy varchar(10) NOT NULL,
  PRIMARY KEY (rate_type,emplid,employee_oprid,manager_emplid,manager_oprid,fy)
);

 CREATE TABLE fb_employee_photo (
  oprid varchar(40) NOT NULL,
  date_loaded timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  display_flag varchar(1) NOT NULL,
  image_path varchar(200) NOT NULL,
  PRIMARY KEY (oprid)
);

CREATE OR REPLACE FUNCTION update_employee_photo_timestamp_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.date_loaded = now(); 
   RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_employee_photo_timestamp  BEFORE UPDATE          
ON fb_employee_photo FOR EACH ROW EXECUTE PROCEDURE                             update_employee_photo_timestamp_column();            


CREATE TABLE fb_empv_process (
  OPRID varchar(30) NOT NULL,
  SUBMIT_OPRID varchar(30) NOT NULL,
  TRACKING_NBR varchar(30) NOT NULL,
  REQUEST_TYPE varchar(4) NOT NULL,
  REQUEST_STATUS varchar(1) DEFAULT NULL,
  SUBMIT_DT date DEFAULT NULL,
  DOCUMENT_URL varchar(300) DEFAULT NULL,
  PRIMARY KEY (OPRID,TRACKING_NBR)
);



 CREATE TABLE fb_empv_steps (
  OPRID varchar(30) NOT NULL,
  TRACKING_NBR varchar(30) NOT NULL,
  STEP_NBR integer NOT NULL,
  STEP_DATE date DEFAULT NULL,
  PRIMARY KEY (OPRID,TRACKING_NBR,STEP_NBR)
);



CREATE TABLE fb_grb_data (
  PRSNL_LOGIN_FBINET varchar(30) NOT NULL,
  PRSNL_NAME_FULL_LFM varchar(50) DEFAULT NULL,
  GRB_CODE varchar(10) NOT NULL,
  GRB_CASE_TYPE_DESC varchar(50) DEFAULT NULL,
  GRB_STEP_DESC varchar(50) DEFAULT NULL,
  GRB_TXN_TYPE_DESC varchar(30) DEFAULT NULL,
  GRB_CASE_SUBMIT_DATE date DEFAULT NULL,
  GRB_SEQ integer NOT NULL,
  GRB_CASE_STEP_DATE date DEFAULT NULL,
  CURR_STEP_FLAG varchar(1) DEFAULT NULL,
  COMPLETED_STEP_FLAG varchar(1) DEFAULT NULL,
  PRIMARY KEY (PRSNL_LOGIN_FBINET,GRB_CODE,GRB_SEQ)
);



CREATE TABLE fb_integration_settings (
  integration_setting varchar(30) NOT NULL,
  setting_value varchar(30) DEFAULT NULL,
  PRIMARY KEY (integration_setting)
);

SHOW CREATE TABLE  fb_job_agg                          ;
CREATE TABLE fb_job_agg (
  script_name varchar(30) NOT NULL,
  finish_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  format_time varchar(30) NOT NULL,
  PRIMARY KEY (script_name)
);

CREATE OR REPLACE FUNCTION update_job_agg_timestamp_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.finish_time = now(); 
   RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_fb_job_agg_timestamp  BEFORE UPDATE          
ON fb_job_agg FOR EACH ROW EXECUTE PROCEDURE                             update_job_agg_timestamp_column();    

CREATE TABLE fb_job_data (
  job_opening_id varchar(15) NOT NULL,
  positing_title varchar(200) DEFAULT NULL,
  position_nbr varchar(8) DEFAULT NULL,
  descr varchar(30) DEFAULT NULL,
  descr1 varchar(30) DEFAULT NULL,
  hrs_jo_pst_open_dt varchar(10) DEFAULT NULL,
  hrs_jo_pst_cls_dt varchar(10) DEFAULT NULL,
  fb_hrs_jo_pst_id varchar(20) DEFAULT NULL,
  descr2 varchar(30) DEFAULT NULL,
  hrs_source_id varchar(15) DEFAULT NULL,
  PRIMARY KEY (job_opening_id)
);



 CREATE TABLE fb_job_division (
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  LOCATION varchar(10) NOT NULL,
  DEPTID varchar(10) NOT NULL,
  LOCATION_DESCR varchar(30) NOT NULL,
  DEPT_DESCR varchar(30) NOT NULL,
  PRIMARY KEY (HRS_JOB_OPENING_ID,LOCATION,DEPTID)
);


 CREATE TABLE fb_job_location (
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  LOCATION varchar(10) NOT NULL,
  LOCATION_DESCR varchar(30) NOT NULL,
  HRS_JO_PRM_LOC_FLG varchar(1) NOT NULL,
  PRIMARY KEY (HRS_JOB_OPENING_ID,LOCATION)
);


CREATE TABLE fb_job_log (
  run_id SERIAL,
  start_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  finish_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  script_name varchar(30) NOT NULL,
  run_status varchar(1) NOT NULL,
  error_description varchar(500) DEFAULT NULL,
  PRIMARY KEY (run_id)
);


 CREATE TABLE fb_job_paycode (
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  DESCR varchar(30) NOT NULL,
  GVT_PAY_PLAN varchar(2) NOT NULL,
  GRADE varchar(3) NOT NULL,
  PRIMARY KEY (HRS_JOB_OPENING_ID,GVT_PAY_PLAN,GRADE)
);


CREATE TABLE fb_mass_hire_posting (
  OPRID varchar(30) NOT NULL,
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  HRS_JO_PST_SEQ varchar(38) NOT NULL,
  NAME varchar(50) NOT NULL,
  POSTING_TITLE varchar(200) NOT NULL,
  DESCR varchar(30) NOT NULL,
  HRS_JO_PST_OPN_DT date DEFAULT NULL,
  HRS_JO_PST_CLS_DT date DEFAULT NULL,
  URL_1 varchar(15) DEFAULT NULL,
  FB_HRS_JO_PST_INEX varchar(1) NOT NULL,
  DESCR2 varchar(30) NOT NULL,
  PRIMARY KEY (OPRID,HRS_JOB_OPENING_ID,HRS_JO_PST_SEQ)
);



 CREATE TABLE fb_noa_code_description (
  noa_id SERIAL,
  action varchar(255) DEFAULT NULL,
  code varchar(255) NOT NULL UNIQUE,
  description varchar(255) DEFAULT NULL,
  PRIMARY KEY (noa_id,code)
);

CREATE TABLE fb_non_mass_hire_posting (
  OPRID varchar(30) NOT NULL,
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  HRS_JO_PST_SEQ varchar(38) NOT NULL,
  NAME varchar(50) NOT NULL,
  POSTING_TITLE varchar(200) NOT NULL,
  DESCR varchar(30) NOT NULL,
  HRS_JO_PST_OPN_DT date DEFAULT NULL,
  HRS_JO_PST_CLS_DT date DEFAULT NULL,
  URL_1 varchar(15) DEFAULT NULL,
  FB_HRS_JO_PST_INEX varchar(1) NOT NULL,
  DESCR2 varchar(30) NOT NULL,
  PRIMARY KEY (OPRID,HRS_JOB_OPENING_ID,HRS_JO_PST_SEQ)
);


CREATE TABLE fb_office_photo (
  cost_code varchar(10) NOT NULL,
  image_path varchar(200) NOT NULL,
  PRIMARY KEY (cost_code)
) ;


CREATE TABLE fb_page_visits_agg (
  date_visited date NOT NULL,
  page varchar(20) NOT NULL,
  total_page_visits bigint DEFAULT NULL,
  unique_page_visits bigint DEFAULT NULL,
  PRIMARY KEY (date_visited,page)
);

CREATE TABLE fb_par_data (
  oprid varchar(40) NOT NULL,
  row_id bigint NOT NULL,
  eff_date varchar(15) NOT NULL,
  eff_date_sort timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  noa_description varchar(80) DEFAULT NULL,
  PRIMARY KEY (row_id)
);


 CREATE TABLE fb_par_employee_fct_data (
  ROW_NUM SERIAL,
  PRSNL_LOGIN_FBINET varchar(30) NOT NULL,
  EMPLID varchar(11) DEFAULT NULL,
  NOA_CD varchar(7) DEFAULT NULL,
  COST_CODE_DESCR varchar(100) DEFAULT NULL,
  POSITION_TITLE varchar(100) DEFAULT NULL,
  AWARD_AMOUNT varchar(30) DEFAULT NULL,
  EFFECTIVE_DT timestamp DEFAULT NULL,
  PRIMARY KEY (ROW_NUM,PRSNL_LOGIN_FBINET)
);

CREATE TABLE fb_perf_checkin (
  PLAN_APPRAISAL_CD varchar(7) NOT NULL,
  PRSNL_LOGIN_FBINET varchar(30) NOT NULL,
  PLAN_CHECK_IN_DATE date NOT NULL,
  OBJV_ELEMENT_RATING_NUM varchar(2) NOT NULL,
  COMP_ELEMENT_RATING_NUM varchar(2) NOT NULL,
  MOST_RECENT_CHK_IN_FLAG varchar(1) NOT NULL,
  PRIMARY KEY (PLAN_APPRAISAL_CD,PRSNL_LOGIN_FBINET,PLAN_CHECK_IN_DATE,OBJV_ELEMENT_RATING_NUM,COMP_ELEMENT_RATING_NUM,MOST_RECENT_CHK_IN_FLAG)
);

 CREATE TABLE fb_performance_data (
  PLAN_APPRAISAL_CD varchar(7) NOT NULL,
  PRSNL_LOGIN_FBINET varchar(30) NOT NULL,
  PRSNL_EMP_ID varchar(11) NOT NULL,
  RATING_OFFICIAL_ID varchar(30) DEFAULT NULL,
  PRSNL_NAME_FIRST varchar(30) DEFAULT NULL,
  PRSNL_NAME_LAST varchar(30) DEFAULT NULL,
  PROB_PERIOD_FLAG varchar(1) DEFAULT NULL,
  PROB_PERIOD_END_DATE timestamp DEFAULT NULL,
  CREATE_TMSTMP timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  DOC_STS_DESCR varchar(100) DEFAULT NULL,
  PRSNL_PERF_PLAN_STATUS_DESC varchar(30) DEFAULT NULL,
  WRAP_UP_STS_DESCR varchar(100) DEFAULT NULL,
  CHECK_IN_STS_DESCR varchar(100) DEFAULT NULL,
  CHECK_IN_AVG_RATING_NUM varchar(100) DEFAULT NULL,
  CHECK_IN_AVG_RATING_DESC varchar(100) DEFAULT NULL,
  PLAN_CHECK_IN_DATE timestamp DEFAULT NULL,
  PLAN_FISCAL_YEAR varchar(4) DEFAULT NULL,
  PSTN_PAY_GRADE_CODE varchar(2) DEFAULT NULL,
  PLAN_PAY_GRADE_CODE varchar(2) DEFAULT NULL,
  MOST_RECENT_PLAN_FLAG varchar(1) DEFAULT NULL,
  PRIMARY KEY (PLAN_APPRAISAL_CD,PRSNL_LOGIN_FBINET,PRSNL_EMP_ID)
);

CREATE OR REPLACE FUNCTION update_performance_data_timestamp_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.CREATE_TMSTMP = now(); 
   RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_fb_performance_data_timestamp  BEFORE UPDATE          
ON fb_performance_data FOR EACH ROW EXECUTE PROCEDURE                             update_performance_data_timestamp_column();

 CREATE TABLE fb_performance_tab (
  PLAN_APPRAISAL_CD varchar(7) NOT NULL,
  PRSNL_LOGIN_FBINET varchar(30) NOT NULL,
  PRSNL_EMP_ID varchar(11) NOT NULL,
  RTNG_OFFCL_LOGIN_FBINET varchar(50) DEFAULT NULL,
  RTNG_OFFCL_NAME_FULL_LFM varchar(50) DEFAULT NULL,
  RVWG_OFFCL_LOGIN_FBINET varchar(50) DEFAULT NULL,
  RVWG_OFFCL_NAME_FULL_LFM varchar(50) DEFAULT NULL,
  PRSNL_NAME_FIRST varchar(30) DEFAULT NULL,
  PRSNL_NAME_LAST varchar(30) DEFAULT NULL,
  PROB_PERIOD_FLAG varchar(1) DEFAULT NULL,
  PROB_TYPE_DESC varchar(30) DEFAULT NULL,
  PROB_PERIOD_START_DATE date DEFAULT NULL,
  PROB_PERIOD_END_DATE date DEFAULT NULL,
  CREATE_TMSTMP timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  DOC_STS_DESCR varchar(100) DEFAULT NULL,
  PRSNL_PERF_PLAN_STATUS_DESC varchar(30) DEFAULT NULL,
  WRAP_UP_STS_DESCR varchar(100) DEFAULT NULL,
  WRAP_UP_RATING_DESC varchar(100) DEFAULT NULL,
  WRAP_UP_RATING_DATE date DEFAULT NULL,
  CHECK_IN_STS_DESCR varchar(100) DEFAULT NULL,
  CHECK_IN_AVG_RATING_NUM varchar(2) DEFAULT NULL,
  CHECK_IN_AVG_RATING_DESC varchar(100) DEFAULT NULL,
  PLAN_CHECK_IN_DATE date DEFAULT NULL,
  PLAN_FISCAL_YEAR varchar(4) DEFAULT NULL,
  PSTN_PAY_PLAN_CODE varchar(2) DEFAULT NULL,
  PSTN_PAY_GRADE_CODE varchar(2) DEFAULT NULL,
  PRSNL_PAY_STEP_NUM varchar(2) DEFAULT NULL,
  PLAN_PAY_PLAN_CODE varchar(2) DEFAULT NULL,
  PLAN_PAY_GRADE_CODE varchar(2) DEFAULT NULL,
  MOST_RECENT_PLAN_FLAG varchar(1) DEFAULT NULL,
  MOST_RECENT_WRAP_UP_FLAG varchar(1) DEFAULT NULL,
  CRIT_CASE_OPEN_FLAG varchar(1) DEFAULT NULL,
  CRIT_CASE_STATUS_DESC varchar(100) DEFAULT NULL,
  CRIT_CASE_OPEN_DATE date DEFAULT NULL,
  CRIT_CASE_CLOSE_DATE date DEFAULT NULL,
  JEOPARDY_OPEN_DATE date DEFAULT NULL,
  JEOPARDY_CLOSE_DATE date DEFAULT NULL,
  PRIMARY KEY (PLAN_APPRAISAL_CD,PRSNL_LOGIN_FBINET,PRSNL_EMP_ID)
);

CREATE TRIGGER update_fb_performance_tab_timestamp  BEFORE UPDATE          
ON fb_performance_tab FOR EACH ROW EXECUTE PROCEDURE                             update_performance_data_timestamp_column();


CREATE TABLE fb_posting_description (
  HRS_JOB_OPENING_ID bigint NOT NULL,
  HRS_JO_PST_SEQ bigint NOT NULL,
  HRS_SEQ_NUM bigint NOT NULL,
  APP_VISIBLE varchar(1) NOT NULL,
  XLATLONGNAME varchar(30) NOT NULL,
  DESCRLONG text,
  PRIMARY KEY (HRS_JOB_OPENING_ID,HRS_JO_PST_SEQ,HRS_SEQ_NUM)
);

CREATE TABLE fb_qle_sub (
  HRLINK_WF_ID varchar(20) NOT NULL,
  PROCESS_NAME varchar(30) NOT NULL,
  OPRID varchar(30) NOT NULL,
  STEP_COUNT numeric(38) NOT NULL,
  STEP1_TITLE varchar(15) NOT NULL,
  STEP1_STATUS varchar(1) NOT NULL,
  STEP1_DESCR varchar(500) DEFAULT NULL,
  STEP1_OWNER varchar(100) NOT NULL,
  STEP2_TITLE varchar(15) NOT NULL,
  STEP2_STATUS varchar(1) NOT NULL,
  STEP2_DESCR varchar(500) DEFAULT NULL,
  STEP2_OWNER varchar(100) NOT NULL,
  STEP3_TITLE varchar(15) NOT NULL,
  STEP3_STATUS varchar(1) NOT NULL,
  STEP3_DESCR varchar(500) DEFAULT NULL,
  STEP3_OWNER varchar(100) NOT NULL,
  STEP4_TITLE varchar(15) NOT NULL,
  STEP4_STATUS varchar(1) NOT NULL,
  STEP4_DESCR varchar(500) DEFAULT NULL,
  STEP4_OWNER varchar(100) NOT NULL,
  STEP5_TITLE varchar(15) NOT NULL,
  STEP5_STATUS varchar(1) NOT NULL,
  STEP5_DESCR varchar(500) DEFAULT NULL,
  STEP5_OWNER varchar(100) NOT NULL,
  LASTUPDDT date DEFAULT NULL,
  EXPIRE_DT date DEFAULT NULL,
  PRIMARY KEY (HRLINK_WF_ID)
);

CREATE TABLE fb_qle_sub_status (
  FB_HRLINK_WF_ID varchar(20) NOT NULL,
  FB_PROCESS_NAME varchar(30) NOT NULL,
  FB_HRLNK_PHASE varchar(1) NOT NULL,
  EFFDT date DEFAULT NULL,
  FB_PROCESS_DESCR varchar(30) NOT NULL,
  ID SERIAL,
  PRIMARY KEY (ID)
);


CREATE TABLE fb_security_data (
  uid bigint NOT NULL,
  rid bigint NOT NULL,
  PRIMARY KEY (uid,rid)
);



CREATE TABLE fb_sub_setup (
  PROCESS_NAME varchar(30) NOT NULL,
  HRLNK_PHASE varchar(1) NOT NULL,
  REQUEST_TYPE varchar(30) NOT NULL,
  FB_STEP1_DESCR varchar(500) DEFAULT NULL,
  FB_STEP2_DESCR varchar(500) DEFAULT NULL,
  FB_STEP3_DESCR varchar(500) DEFAULT NULL,
  FB_STEP4_DESCR varchar(500) DEFAULT NULL,
  FB_STEP5_DESCR varchar(500) DEFAULT NULL,
  EXPIRE_DAYS numeric(38) NOT NULL,
  ID SERIAL,
  PRIMARY KEY (ID)
);



CREATE TABLE fb_track_candidate (
  OPRID varchar(30) NOT NULL,
  HRS_JOB_OPENING_ID varchar(15) NOT NULL,
  FB_HRS_CERT_NBR varchar(20) NOT NULL,
  FB_LIST_ID varchar(30) DEFAULT NULL,
  FB_REQUEST_NBR varchar(30) NOT NULL,
  HRS_PERSON_ID varchar(15) NOT NULL,
  NAME1 varchar(50) DEFAULT NULL,
  NAME2 varchar(50) DEFAULT NULL,
  STATUS_CODE varchar(3) NOT NULL,
  DESCR1 varchar(30) DEFAULT NULL,
  DESCR2 varchar(30) DEFAULT NULL,
  DESCR3 varchar(10) DEFAULT NULL,
  POSITION_NBR varchar(8) DEFAULT NULL,
  POSITION_NBR_DESCR varchar(30) DEFAULT NULL,
  DSRD_ST_DT date DEFAULT NULL,
  PRIMARY KEY (OPRID,HRS_JOB_OPENING_ID,FB_HRS_CERT_NBR,FB_REQUEST_NBR,HRS_PERSON_ID,STATUS_CODE)
);


CREATE TABLE fb_transaction_count (
  oprid varchar(40) NOT NULL,
  display_count integer NOT NULL,
  total_count integer NOT NULL,
  PRIMARY KEY (oprid)
) ;



CREATE TABLE fb_transaction_data (
  workflow_id varchar(40) NOT NULL,
  oprid varchar(40) NOT NULL,
  step_count integer NOT NULL,
  process_name varchar(30) NOT NULL,
  display_order bigint NOT NULL,
  step1_title varchar(20) DEFAULT NULL,
  step1_status varchar(1) DEFAULT NULL,
  step1_description varchar(500) DEFAULT NULL,
  step1_owner varchar(100) DEFAULT NULL,
  step2_title varchar(20) DEFAULT NULL,
  step2_status varchar(1) DEFAULT NULL,
  step2_description varchar(500) DEFAULT NULL,
  step2_owner varchar(100) DEFAULT NULL,
  step3_title varchar(20) DEFAULT NULL,
  step3_status varchar(1) DEFAULT NULL,
  step3_description varchar(500) DEFAULT NULL,
  step3_owner varchar(100) DEFAULT NULL,
  step4_title varchar(20) DEFAULT NULL,
  step4_status varchar(1) DEFAULT NULL,
  step4_description varchar(500) DEFAULT NULL,
  step4_owner varchar(100) DEFAULT NULL,
  step5_title varchar(20) DEFAULT NULL,
  step5_status varchar(1) DEFAULT NULL,
  step5_description varchar(500) DEFAULT NULL,
  step5_owner varchar(100) DEFAULT NULL,
  PRIMARY KEY (workflow_id)
);


 CREATE TABLE fb_transfer_sub (
  HRLINK_WF_ID varchar(20) NOT NULL,
  PROCESS_NAME varchar(30) NOT NULL,
  HRLNK_PHASE varchar(1) NOT NULL,
  OPRID varchar(30) NOT NULL,
  REQUEST_TYPE varchar(100) DEFAULT NULL,
  REQUEST_DT date DEFAULT NULL,
  STEP_COUNT bigint NOT NULL,
  STEP1_TITLE varchar(15) DEFAULT NULL,
  STEP1_STATUS varchar(1) DEFAULT NULL,
  STEP1_CMPL_DT date DEFAULT NULL,
  STEP2_TITLE varchar(15) DEFAULT NULL,
  STEP2_STATUS varchar(1) DEFAULT NULL,
  STEP2_CMPL_DT date DEFAULT NULL,
  STEP3_TITLE varchar(15) DEFAULT NULL,
  STEP3_STATUS varchar(1) DEFAULT NULL,
  STEP3_CMPL_DT date DEFAULT NULL,
  STEP4_TITLE varchar(15) DEFAULT NULL,
  STEP4_STATUS varchar(1) DEFAULT NULL,
  STEP4_CMPL_DT date DEFAULT NULL,
  STEP5_TITLE varchar(15) DEFAULT NULL,
  STEP5_STATUS varchar(1) DEFAULT NULL,
  STEP5_CMPL_DT date DEFAULT NULL,
  LASTUPDDT date DEFAULT NULL,
  EXPIRE_DT date DEFAULT NULL,
  PRIMARY KEY (HRLINK_WF_ID)
);

CREATE TABLE fb_transfers_sub (
  FB_HRLINK_WF_ID varchar(20) NOT NULL,
  FB_PROCESS_NAME varchar(30) NOT NULL,
  FB_HRLNK_PHASE varchar(1) NOT NULL,
  OPRID varchar(30) NOT NULL,
  FB_REQUEST_TYPE varchar(100) DEFAULT NULL,
  REQUEST_DT varchar(12) DEFAULT NULL,
  FB_STEP_COUNT bigint NOT NULL,
  FB_STEP1_TITLE varchar(15) DEFAULT NULL,
  FB_STEP1_STATUS varchar(1) DEFAULT NULL,
  FB_STEP1_CMPL_DTTM varchar(12) DEFAULT NULL,
  FB_STEP1_DESCR varchar(500) DEFAULT NULL,
  FB_STEP2_TITLE varchar(15) DEFAULT NULL,
  FB_STEP2_STATUS varchar(1) DEFAULT NULL,
  FB_STEP2_CMPL_DTTM varchar(12) DEFAULT NULL,
  FB_STEP2_DESCR varchar(500) DEFAULT NULL,
  FB_STEP3_TITLE varchar(15) DEFAULT NULL,
  FB_STEP3_STATUS varchar(1) DEFAULT NULL,
  FB_STEP3_CMPL_DTTM varchar(12) DEFAULT NULL,
  FB_STEP3_DESCR varchar(500) DEFAULT NULL,
  FB_STEP4_TITLE varchar(15) DEFAULT NULL,
  FB_STEP4_STATUS varchar(1) DEFAULT NULL,
  FB_STEP4_CMPL_DTTM varchar(12) DEFAULT NULL,
  FB_STEP4_DESCR varchar(500) DEFAULT NULL,
  FB_STEP5_TITLE varchar(15) DEFAULT NULL,
  FB_STEP5_STATUS varchar(1) DEFAULT NULL,
  FB_STEP5_CMPL_DTTM varchar(12) DEFAULT NULL,
  FB_STEP5_DESCR varchar(500) DEFAULT NULL,
  LASTUPDDT date DEFAULT NULL,
  EXPIRE_DTTM date DEFAULT NULL,
  PRIMARY KEY (FB_HRLINK_WF_ID)
);


 CREATE TABLE fb_user_page_visits (
  oprid varchar(40) NOT NULL,
  page varchar(20) NOT NULL,
  date_visited date NOT NULL,
  visits bigint NOT NULL,
  PRIMARY KEY (oprid,page,date_visited)
);

CREATE TABLE fb_user_preference (
  uid bigint DEFAULT NULL,
  preference varchar(255) DEFAULT NULL,
  description text
) ;

 CREATE TABLE fb_user_visits_agg (
  date_visited date NOT NULL,
  total_page_visits bigint DEFAULT NULL,
  unique_visits bigint DEFAULT NULL,
  PRIMARY KEY (date_visited)
) ;

CREATE TABLE fb_users_created_agg (
  date_created date NOT NULL,
  total_created bigint NOT NULL,
  PRIMARY KEY (date_created)
);