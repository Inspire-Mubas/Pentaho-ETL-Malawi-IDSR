-- Dropping the Schemas if they exist
DROP SCHEMA IF EXISTS staging CASCADE;
DROP SCHEMA IF EXISTS omop_6_0_v2 CASCADE;
DROP SCHEMA IF EXISTS omop_5_4_v1 CASCADE;
DROP SCHEMA IF EXISTS synthetic_v1 CASCADE;

-- A clean creation of the Schemas
CREATE SCHEMA staging ;
CREATE SCHEMA omop_6_0_v2 ;
CREATE SCHEMA synthetic_v1 ;

-- Creating a table in synthetic to import the data
CREATE TABLE synthetic_v1."mw_idsr_synthetic_v1"(
	Repr_id character varying(50),
	REPR_FACI character varying(50),
	REPR_DIST character varying(50),
	TYP_CASE character varying(50),
	REPR_NM	 character varying(50),
	REPR_PHON_NUM character varying(50),
	REPR_D character varying(50),
	TYP_REPR_DISE_COND character varying(50),
	LN_CASE character varying(100),
	FN_CASE character varying(100),
	DOB date,
	NATL character varying(50),
	CASE_UID1 character varying(50),
	CASE_UID2 character varying(50),
	DIST_CASE_RESI character varying(50),
	DIST_CASE_RESI_TYP character varying(6),
	SEX character varying(12),
	OCCU character varying(100),
	PHYS_ADDR character varying(100),
	NEAR_LMK character varying(50),
	PHON_NUM_CASE character varying(100),
	PARE_CARET_NM character varying(100),
	D_SEEN_FACI date,
	VACC character varying(50),
	VACC_TYP_VAC character varying(50),
	VACC_NUM_DOSE integer,
	D_FACI_NOTI_DIST date,
	D_L_VACCI date,
	RECE_TRAV_HIST character varying(100),
	D_O_RETU character varying(50),
	ANY_CONT_OT_CASE character varying(50),
	ANY_CLUSTER character varying(50),
	D_ONSE date,
	PREG_CASE_FEM character varying(50),
	TRIM character varying(50),
	PRES_SYMP character varying(50),
	U_CONDS character varying(50),
	COVI_HIST character varying(50),
	P_COMPL_FRM_NM character varying(50),
	D_S_COLL date,
	D_S_SENT_LAB date,
	S_TYP character varying(50),
	S_COND character varying(50),
	D_LAB_RECE_S character varying(50),
	TYP_O_TESTS_PERF character varying(50),
	TEST_PLAT character varying(50),
	FIN_LAB_RESU character varying(100),
	D_LAB_SENT_RESU_DIST date,
	D_RESU_SENT_HCW character varying(50),
	D_DIST_RECE_RESU character varying(50),
	CASE_F_O character varying(50),
	CASE_F_CLASS character varying(50)
)