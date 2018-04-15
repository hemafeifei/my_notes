***********************************************************
# import a csv
proc
	import datafile='/folders/myfolders/D1_1516.csv'
		   out=bundesliga
		   dbms=csv
		   replace;
		   getnames=yes;
run;

proc
	print bundesliga;
run;

***********************************************************
data homegarden;
	infile '/folders/myfolders/Garden.dat';
	input Name $ 1-7 Tomato Zucchini Peas Grapes;
	Zone = 14;
	Type = 'home';
	Zucchini = Zucchini * 10;
	Total = Tomato + Zucchini + Peas + Grapes;
	PerTom = (Tomato / Total) * 100;
run;
proc print data=homegarden;
	title 'Home Gardening Survey';
run;

***********************************************************
-- # SAS FUNCTIONS
data contest;
	infile '/folders/myfolders/Pumpkin.dat';

	input Name $16. Age 3. +1 Type $1. +1 Date MMDDYY10.
	(Scr1 Scr2 Scr3 Scr4 Scr5) (4.1); /* klamma can be removed */
	AvgScore = MEAN(Scr1, Scr2, Scr3, Scr4, Scr5);
	DayEntered = DAY(Date);
	Type = 	UPCASE(Type);
run;

proc print data=contest;
	title 'Pumpkin Carving Contest';
run;

***********************************************************
-- # IF - THEN STATEMENTS
data oldcars;
	infile '/folders/myfolders/Auction.dat';
	input Make $ 1-13 Model $ 15-29 YearMade Seats MillonsPaid;
	if YearMade < 1890 then Veteran = 'Yes';
	if Model = 'F-88' then do;
		make = 'Oldsmobile';
		Seats = 2;
	end;
run;

proc print data=oldcars;
run;

data homeimprovements;
	infile '/folders/myfolders/Home.dat';
	input Owner $ 1-7 Description $ 9-33 Cost;
	if cost = . then CostGroup = 'missing';
		else if cost < 2000 then CostGroup = 'low';
		else if cost < 10000 then CostGroup = 'medium';
		else CostGroup = 'high';
run;

proc print data=homeimprovements;
	title 'Home Improvement Cost Groups';
run;

***********************************************************
-- USE IF TO SUBSET YOUR DATA
data comedy;
	infile '/folders/myfolders/Shakespeare.dat';
	input Title $ 1-26 Year Type $;
	IF Type = 'comedy';
run;

proc print data=comedy;
	title 'SHAKESPEAREAN COMEDIES';
RUN;

***********************************************************
-- WORKING WITH SAS DATES
data librarycards;
	infile '/folders/myfolders/Library.dat' truncover;
	input Name $11. +1 BirthDate MMDDYY10. +1 IssueDate ANYDTDATE10.
			DueDate DATE11.;
	DaysOverDue = TODAY() - DueDate;
	CurrentAge = INT(YRDIF(BirthDate, TODAY(), 'AGE'));
	if IssueDate > '01JAN2012'D THEN NewCard = 'yes';
run;

proc print data=librarycards;
	format IssueDate MMDDYY8. DueDate WEEKDATE17.;
	title 'SAS Dates without and with Formats';
run;

***********************************************************
-- RETAIN AND SUM
data gamestats;
	infile '/folders/myfolders/Games.dat';
	input Month 1 Day 3-4 Team $ 6-25 Hits 27-28 Runs 30-31;
	retain MaxRuns;
	MaxRuns = max(MaxRuns, Runs);
	RunsToDate + Runs;
run;

proc print data=gamestats;
	title "Seadon's Record to Date";
run;

***********************************************************
-- SIMPLIFYING PROGRAMS WITH ARRAYS
DATA songs;
	infile '/folders/myfolders/KBRK.dat';
	input City $ 1-15 Age wj kt tr flip ttr;
	array song (5) wj kt tr flip ttr;
	do i = 1 to 5;
		if song(i) = 9 then song(i) = .;
	end;
run;

proc print data=songs;
	title "KBRK Song Survey";
run;

-- PROCEDURE
data songs;
	infile '/folders/myfolders/KBRK.dat';
	input City $ 1-15 Age wj kt tr flip ttr;
	array new (5) Song1 - Song5;
	array old (5) wj -- ttr;
	do i = 1 to 5;
		if old(i) = 9 then new(i) = .;
			else new(i) =  old(i);
	end;
	AvgScore = mean(of Song1 - Song5);

proc print data=songs;
	title "KBRK Song Survey";
run;

***********************************************
-- PROCEDURE
***********************************************
-- SUBSETTING WITH WHERE STATEMENTS
libname style '/folders/myfolders/.sasstudio';

data style.artist;
	infile '/folders/myfolders/Artists.dat';
	input Name $ 1-21 Genre $ 23-40 Origin $ 42;
run;

proc print data=style.artist;
	where Genre = 'Impressionism';
	title "Major Impression Painters";
	footnote "F = France N = Netherlands U = US";
run;

***********************************************
-- SORTING DATA WITH PROC SORT
data style.marine;
	infile '/folders/myfolders/Lengths.dat';
	input Name $ Family $ Length @@;
run;

proc sort data =style.marine out=seasort nodupkey;
	by Family descending Length;

proc print data=seasort;
	title "Whales and Sharks";
run;

***********************************************
-- SORTING DATA FOR CHARACTER
data style.address;
	infile '/folders/myfolders/Mail.dat';
	input Name $6. Street $18. City $9. State $6.;
run;

proc sort data=style.address out = sortone
	sortseq = linguistic(number_collation=on);
	by Street;
proc print data=sortone;
	title "address sorted by Street";
run;

proc sort data=style.address out=sorttwo
	sortseq = linguistic(Strength=primary);
	by State;
proc print data=sorttwo;
	title "address sorted by State";
run;

***********************************************
-- PRINT PROCEDURE Class @15 means??
data style.sales;
	infile '/folders/myfolders/CandySales.dat';
	input Name $ 1-11 Class @15 DateReturned MMDDYY10. CandyType $ Quantity;
	Profit = Quantity * 1.25;

proc sort data=style.sales;
	by Class; /*FIRST SORT*/
proc print data=style.sales;
	by Class; /*THEN PRINT SORT*/
	sum Profit;
	var Name DateReturned CandyType  Profit;
	title "Candy Sales for Field Trip by Class";
run;

***********************************************
-- PRINT PROCEDURE WITH FORMAT DATE & CURRENCY
data style.sales;
	infile '/folders/myfolders/CandySales.dat';
	input Name $ 1-11 Class @15 DateReturned MMDDYY10. CandyType $ Quantity;
	Profit = Quantity * 1.25;
proc print data=style.sales;
	var Name DateReturned CandyType  Profit;
	format DateReturned DATE9. Profit dollar6.2;
	title "CANDY SALE DATA USING FORMATS";
run;

***********************************************
-- PROC FORMAT
data style.carssurvey;
	infile '/folders/myfolders/Cars.dat';
	input Age Sex Income Color $;
proc format;
	value gender 1 = 'Male'
		         2 = 'Female';
	value agegroup 13 - < 20 = 'Teen'
		           20 - < 65 = 'Adult'
		           65 - high = 'Senior';
	value $col   'W' = 'Moon White'
				 'B' = 'Sky Blue'
				 'Y' = 'Sunburst Yellow'
				 'G' = 'Rain Cloud Grey';
proc print data=style.carssurvey;
	format Sex gender. Age agegroup. Color $col. Income dollar8.;
	title "Survey Results Printed with User-Defined Formats";
run;

***********************************************
-- OUTPUT A TXT
data _null_;
	infile '/folders/myfolders/CandySales.dat';
	input Name $1-11 Class @15 DateReturned MMDDYY10.
			CandyType $ Quantity;
	Profit = Quantity * 1.25;

	file '/folders/myfolders/Students.txt' print;

	title;
/* 	@5 means column 5 */
	put @5 'Candy sales report for ' Name ' from classromm ' Class
		//@5 "Congratulations! You sold: " Quantity " boxes of Candy"
		/@5 "and earned " Profit dollar6.2 "for our field trip.";
	put _page_;
run;
***********************************************
-- SUMMARIZING DATA WITH PROC MEANS
data style.flowers;
	infile '/folders/myfolders/Flowers.dat';
	input cust_id $ @9 sale_date mmddyy10. petunia snap_dragon marigold;
	month = month(sale_date);

proc sort data=style.flowers;
	by month;

proc means data=style.flowers maxdec=0;
	by month;
	var petunia snap_dragon marigold;
	title "Summary of Flower Sales by Month";
run;

***********************************************
-- SUMMARY STATISTICS
data sales;
	infile '/folders/myfolders/Flowers.dat';
	input CustID $ @9 SaleDate mmddyy10. Petunia SnapDragon MariGold;

proc sort data=sales;
	by CustID;

proc means noprint data=sales;
	by CustID;
	var Petunia SnapDragon MariGold;
	output out = totals
		mean(Petunia SnapDragon MariGold) = meanP meanSD meanM
		sum(Petunia SnapDragon MariGold) = Petunia SnapDragon MariGold;

proc print data=totals;
	title "Sum of Flower Data over Custom ID";
	format meanP meanSD meanM 3.;
run;

***********************************************
-- SUMMARY DATA WITH PROC freq
data style.orders;
	infile '/folders/myfolders/Coffee.dat';
	input Coffee $ Windows $ @@;
/* proc print data=style.orders; */
/* run; */
proc freq data=style.orders;
	tables Windows Windows * Coffee;
run;

***********************************************
-- PROC TABLULATE & PROC REPORT
***********************************************
data style.boats;
	infile '/folders/myfolders/Boats.dat';
	input Name $ 1-12 Port $14-20 Locomotion $ 22-26 Type $28-30
			Price 32-37 Length 39-41;
run;
* Tablulations with three dimensions;
proc tabulate data=style.boats;
	class Port Locomotion Type;
	table Port, Locomotion, Type;
	title "Number of Boats by Port, Locomotion and Type";
run;
***********************************************
proc tabulate data=style.boats;
	class Locomotion Type;
	var Price;
	table Locomotion ALL, MEAN * Price * (Type ALL);
	title "Mean Price by Locomotion and Type";
run;

***********************************************
-- MOFIFY THE TABLE APPEARANCE
proc tabulate data=style.boats format=dollar9.2;
	class Locomotion Type;
	var Price;
	table Locomotion ALL, MEAN * Price * (Type ALL)
	/box= 'Full Day Excursions' MISSTEXT='none';
	title;
run;

***********************************************
-- SIMPLIFYING THE TABLE FORMAT
proc tabulate data=style.boats format=dollar9.2;
	class Locomotion Type;
	var Price;
	table Locomotion = '' ALL,
	MEAN = ''* Price = 'Mean Price by Type of Boat' * (Type = '' ALL)
	/box='Full Day Excursions' MISSTEXT='none';
	title;
run;

***********************************************
-- CROSS TABLE WITH 2 VARIABLES
proc tabulate data=style.boats;
	class Locomotion Type;
	var Price Length;
	table Locomotion ALL,
		MEAN * (Price*format=dollar7.2 Length*format=2.0) * (Type ALL);
	title "Price and Length by Type of Boat";
run;

***********************************************
-- PROC REPORT
data style.natparks;
	infile '/folders/myfolders/Parks.dat';
	input Name $ 1-21 Type $ Regin $ Museum Camping;
run;

proc report data=style.natparks nowindows;
	title "Report with Chatacter and Numeric Varibles";

proc report data=style.natparks nowindows;
	column Museum Camping;
	title "Report with only Numeric Variables";
run;
***********************************************
proc report data=style.natparks nowindows;
	column Region Type Museum Camping;
	define Region /group;
	define Type / group;
	title "Summary Report with 2 Group Variables";
run;

proc report data=style.natparks nowindows;
	column Region Type, (Museum Camping);
	define Region /group;
	define Type /across;
	title "Summary Report with a Group Variables";
run;

***********************************************
--PROC REPORT WITH BREAK
proc report data=style.natparks nowindows;
	column Name Region Museum Camping;
	define Region / order;
	break after Region / summarize;
	rbreak after / summarize;
	title "Detail Report with Summary Breaks";
run;

***********************************************
-- PROC REPORT WITH STATISTICS  MEAN MAX ...
proc report data=style.natparks nowindows;
	column Region Type N (Museum Camping), MEAN;
	define Region /group;
	define Type /group;
	title "Statics with two group variables";
run;

proc report data=style.natparks nowindows;
	column Region N Type, (Museum Camping), Mean;
	define Region /group;
	define Type /across;
	title "Statistics with a Group and Across Variables";
run;

***********************************************
-- PROC REPORT WITH COMPUTED VARIABLES
proc report data=style.natparks nowindows;
	column Name Region Museum Camping Facilities Note;
	define Museum / analysis sum noprint;
	define Camping / analysis sum noprint;
	define Facilities / computed 'Camping/and/Museums';
	define Note / computed;
	compute Facilities;
		Facilities = Museum.SUM + Camping.SUM;
	endcomp;
	compute Note / char length = 10;
		if Camping.SUM = 0 then Note = 'No Camping';
	endcomp;
	title "Report with two Computed Variables";
run;

***********************************************
-- MODIFY AND COMBINING DATA
***********************************************
libname style '/folders/myfolders/.sasstudio';

data style.trains;
	infile '/folders/myfolders/Train.dat';
	input Time time5. Cars People;
run;

***********************************************
-- MODIFY DATA WITH SET STATEMENTS
data averagetrain;
	set style.trains;
	PeoplePerCar = People / Cars;
run;

proc print data=averagetrain;
	title "Average Number of People per Train";
	format Time time5. PeoplePerCar 6.2;
run;

***********************************************
-- STACKING DATA
data southentrance;
	infile '/folders/myfolders/South.dat';
	input Entrance $ PassNumber PartySize Age;
proc print data=southentrance;
	title "South Entrance Data";
run;

data northentrance;
	infile '/folders/myfolders/North.dat';
	input Entrance $ PassNumber PartySize Age Lot;
proc print data=northentrance;
	title "North Entrance Data";
run;

data both;
	set southentrance northentrance;
	if age = . then AmountPay = 0;
	else if age < 3 then AmountPay = 0;
	else if age < 65 then AmountPay = 35;
	else AmountPay = 27;
run;
proc print data=both;
	title "Both Entrance";
run;

***********************************************
data southentrance;
	infile '/folders/myfolders/South.dat';
	input Entrance $ PassNumber PartySize Age;
proc print data=southentrance;
	title "South Entrance Data";
run;

data northentrance;
	infile '/folders/myfolders/North.dat';
	input Entrance $ PassNumber PartySize Age Lot;
proc sort data=northentrance;
	by passnumber;
/* must sort first */
proc print data=northentrance;
	title "North Entrance Data";
run;
data interleave;
	set southentrance northentrance;
	by passnumber;
run;
proc print data=interleave;
	title "Both Entrances, by Pass Number";
run;

***********************************************
-- MERGE DATA ONE TO ONE
data descriptions;
	infile '/folders/myfolders/Chocolate.dat' truncover;
	input codenum $ 1-4 Name $ 6-14 Description $ 16-60;
run;

data sales;
	infile '/folders/myfolders/Chocsales.dat';
	input codenum $ 1-4 PiecesSold 6-7;
proc sort data=sales;
	by codenum;
run;
/* MERGE DATA */
data style.chocolates;
	merge sales descriptions;
	by codenum;
run;

proc print data=style.chocolates;
	title "Today's Chocolate Sales";
run;

***********************************************
-- MERGE DATA ONE TO MANY
data regular;
	infile '/folders/myfolders/Shoe.dat';
	input Style $ 1-15 ExerciseType $ RegularPrice;
run;
proc sort data=regular;
	by ExerciseType;
run;

data discount;
	infile '/folders/myfolders/Disc.dat';
	input ExerciseType $ Adjustment;
run;

data prices;
	merge regular discount;
	by ExerciseType;
	NewPrice = round(RegularPrice*(1-Adjustment), .01);
run;

proc print data=prices;
	title "Price List for May Discount";
run;

***********************************************
-- MERGE DATA WITH ORIGINAL DATA
data shoes;
	infile '/folders/myfolders/Shoesales.dat';
	input Style $ 1-15 ExerciseType $ Sales;
run;
proc sort data=shoes;
	by ExerciseType;
run;

proc means noprint data=shoes;
	var Sales;
	by ExerciseType;
	output out = summarydata sum(Sales) = Total;
run;
proc print data=summarydata;
	title "Summary data set";
run;

data shoessummary;
	merge shoes summarydata;
	by ExerciseType;
	Percent = Sales / Total * 100;
run;

proc print data=shoessummary;
	by ExerciseType;
	ID ExerciseType;
	var Style Sales Total Percent;
	title "Sales Share by Type of Exercise";
run;

***********************************************
-- UPDATE DATA WITH transactions
LIBNAME perm '/folders/myfolders/.sasstudio';
data perm.patientmaster;
	infile '/folders/myfolders/Admit.dat';
	input Account LastName $ 8-16 Address $17-34
		BirthDate mmddyy10. Sex $ InsCode $ 48-50 @52 LastUpdate mmddyy10.;
run;

data transactions;
	infile '/folders/myfolders/NewAdmit.dat';
	input Account LastName $ 8-16 Address $17-34
		BirthDate mmddyy10. Sex $ InsCode $ 48-50 @52 LastUpdate mmddyy10.;
run;
proc sort data=transactions;
	by Account;
run;

data perm.patientmaster;
	update perm.patientmaster transactions;
	by Account;
run;
proc print data=perm.patientmaster;
	format BirthDate LastUpdate mmddyy10.;
	title "Admissions Data";
run;

***********************************************
-- output MULTIPLE DATA
data morning afternoon;
	infile '/folders/myfolders/Zoo.dat';
	input Animal $ 1-9 Class $ 11-18 Enclosures $ FeedTime $;
	if FeedTime = 'am' then output morning;
		else if FeedTime = 'pm' then output afternoon;
		else if FeedTime = 'both' then output;
run;

proc print data=morning;
	title "Animals with Morning Feedings";
proc print data=afternoon;
	title "Animals with Afternoon Feedings";
run;

***********************************************
-- OUTPUT DATA WITH LINES
data theaters;
	infile '/folders/myfolders/Movies.dat';
	input Month $ Location $ Tickets @;
	output;
	input Location $ Tickets @;
	output;
	input Location $ Tickets;
	output;
run;
proc print data=theaters;
	title "Ticket Sales";
run;

***********************************************
-- SELECTING OBSERVATIONS WITH "IN"
data customer;
	infile '/folders/myfolders/CustAddress.dat' truncover;
	input CustomerNumber Name $ 5-21 Address $ 23-42;

data orders;
	infile '/folders/myfolders/OrdersQ3.dat';
	input CustomerNumber Total;
proc sort data=orders;
	by CustomerNumber;
run;

data noorders;
	merge customer orders (in = Recent);
	by CustomerNumber;
	if Recent = 0;
run;

proc print data=noorders;
	title "Customers with No Orders in the Third Quarter";
run;

***********************************************
-- SELECTING OBSERVATIONS WITH "WHERE"
data tallpeaks (where=(Height>6000))
	 american (where=(Continent contains('America')));
	 infile '/folders/myfolders/Mountains.dat';
	 input Name $1-14 Continent $15-28 Height;
run;

proc print data=tallpeaks;
	title "Members of the Seven Summits above 6,000 Meters";
run;
proc print data=american;
	title "Members of the Seven Summits in the Americas";
run;

***********************************************
-- 7.MACROS
***********************************************
/* SUBSTITUTING TEXT WITH MACRO VARIABLES */
%LET flowertype = Ginger;

data flowersales;
	infile '/folders/myfolders/TropicalFlowers.dat';
	input CustomerID $4. @6 SaleDate mmddyy10. @17 Variety $9.
			SaleQiantity SaleAmount;
	if Variety = "&flowertype";
run;

proc print data=flowersales;
	format SaleDate worddate18. SaleAmount dollar7.;
	title "Sales of &flowertype";
run;

***********************************************
-- MODULAR CODE WITH MACROS
%MACRO sample;
	proc sort data=flowersales;
		by descending SaleQuantity;
	run;
	proc print data=flowersales (obs=5);
		format SaleDate worddate18. SaleAmount dollar7.;
		title "Five Largest Sales by Quantity";
	run;
%MEND sample;

/* read the flowers data */
data flowersales;
	infile '/folders/myfolders/TropicalFlowers.dat';
	input CustomID $4. @6 SaleDate mmddyy10. @17 Variety $9.
			SaleQuantity SaleAmount;
run;

%sample

***********************************************
/* Adding Parameters to Macros */
%MACRO select (customer=, sortvar=);
	proc sort data=flowersales out=salesout;
		by &sortvar;
		where CustomerID = "&customer";
	run;
	proc print data=salesout;
		format SaleDate worddate18. SaleAmount dollar7.;
		title1 "Orders for Customer Number &customer";
		title2 "Sorted by &sortvar";
	run;
%Mend select;

/* read the flowers data */
data flowersales;
	infile '/folders/myfolders/TropicalFlowers.dat';
	input CustomerID $4. @6 SaleDate mmddyy10. @17 Variety $9.
			SaleQuantity SaleAmount;
run;

/* Invoke the macro */
%select (customer=356W, sortvar = SaleQuantity)
%select (customer=240W, sortvar = Variety)

***********************************************
/* Writing Macros with Conditional Logic */
%macro dailyreports;
	%if &sysday = Saturday %then %do;
		proc print data=flowersales;
		format SaleDate worddate18. SaleAmount dollar7.;
		title "Saturday Report: Current Flower Sales";
	run;
	%end;
	%else %if &sysday = Tuesday %then %do;
		proc means data=flowersales mean min max;
		class Variety;
		var SaleQuantity;
		title "Tuesday Report: Summary of Flower Sales";
	run;
	%end;
%mend dailyreports;

data flowersales;
	infile '/folders/myfolders/TropicalFlowers.dat';
	input CustomerID $4. @6 SaleDate mmddyy10. @17 Variety $9.
			SaleQuantity SaleAmount;
run;

%dailyreports;

***********************************************
/* MACROS WITH CALL SYMPUT */
data _NULL_;
	set flowersales;
	if _N_ = 1 then call symput ("selectedcustomer", CustomerID);
	else Stop;
run;

proc print data=flowersales;
	where CustomerID = "&selectedcustomer";
	format SaleDate worddate18. SaleAmount dollar7.;
	title "Customer &selectedcustomer Had the Single Largest Order";
run;
