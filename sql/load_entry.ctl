load data
CHARACTERSET utf8
infile 'in_10w.txt'
into table tai_entry_his
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(balance_water_no  char,
	card_main_code  char,
	card_status_id char,
	card_sub_code char,
	device_id char,
	device_type_id char,
	in_time DATE "YYYY-MM-DD HH24:MI:SS" terminated by ".000000,",
	line_id char,
	sam_logical_id char,
	sam_tr_seq integer external,
	station_id char,
	tk_balance number,
	tk_logic_no char,
	tk_phy_no char,
	squad_date number,
	time_section char,
	id number,
	counter_time char,
	bus_times_counter number,
	metro_times_counter number,
	union_times_counter number,
	tk_charge_cnt number,
	tk_deal_cnt number,
	tac char,
	paymode_id char,
	last_sam_logical_id char,
	last_deal_time DATE "YYYY-MM-DD HH24:MI:SS" terminated by ".000000,",
	tr_sort char,
	area_code char,
	area_tk_type char,
	overdraft number,
	cpu_tk char,
	expired_tk char,
	tct_valid_days number,
	tct_activate_time DATE "YYYY-MM-DD HH24:MI:SS" terminated by ".000000,",
	limit_mode char,
	limit_entry_station char,
	limit_exit_station char,
	data_file_name char,
	file_name char
)

