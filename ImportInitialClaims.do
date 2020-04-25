clear
import fred ALICLAIMS AKICLAIMS AZICLAIMS ARICLAIMS CAICLAIMS COICLAIMS CTICLAIMS DEICLAIMS FLICLAIMS GAICLAIMS HIICLAIMS IDICLAIMS ILICLAIMS INICLAIMS IAICLAIMS KSICLAIMS KYICLAIMS LAICLAIMS MEICLAIMS MDICLAIMS MAICLAIMS MIICLAIMS MNICLAIMS MSICLAIMS MOICLAIMS MTICLAIMS NEICLAIMS NVICLAIMS NHICLAIMS NJICLAIMS NMICLAIMS NYICLAIMS NCICLAIMS NDICLAIMS OHICLAIMS OKICLAIMS ORICLAIMS PAICLAIMS RIICLAIMS SCICLAIMS SDICLAIMS TNICLAIMS TXICLAIMS UTICLAIMS VTICLAIMS VAICLAIMS WAICLAIMS WVICLAIMS WIICLAIMS WYICLAIMS DCICLAIMS, aggregate(weekly)
keep daten *ICLAIMS
rename ALICLAIMS ICLAIMS1
rename AKICLAIMS ICLAIMS2
rename AZICLAIMS ICLAIMS3
rename ARICLAIMS ICLAIMS4
rename CAICLAIMS ICLAIMS5
rename COICLAIMS ICLAIMS6
rename CTICLAIMS ICLAIMS7
rename DEICLAIMS ICLAIMS8
rename FLICLAIMS ICLAIMS9
rename GAICLAIMS ICLAIMS10
rename HIICLAIMS ICLAIMS11
rename IDICLAIMS ICLAIMS12
rename ILICLAIMS ICLAIMS13
rename INICLAIMS ICLAIMS14
rename IAICLAIMS ICLAIMS15
rename KSICLAIMS ICLAIMS16
rename KYICLAIMS ICLAIMS17
rename LAICLAIMS ICLAIMS18
rename MEICLAIMS ICLAIMS19
rename MDICLAIMS ICLAIMS20
rename MAICLAIMS ICLAIMS21
rename MIICLAIMS ICLAIMS22
rename MNICLAIMS ICLAIMS23
rename MSICLAIMS ICLAIMS24
rename MOICLAIMS ICLAIMS25
rename MTICLAIMS ICLAIMS26
rename NEICLAIMS ICLAIMS27
rename NVICLAIMS ICLAIMS28
rename NHICLAIMS ICLAIMS29
rename NJICLAIMS ICLAIMS30
rename NMICLAIMS ICLAIMS31
rename NYICLAIMS ICLAIMS32
rename NCICLAIMS ICLAIMS33
rename NDICLAIMS ICLAIMS34
rename OHICLAIMS ICLAIMS35
rename OKICLAIMS ICLAIMS36
rename ORICLAIMS ICLAIMS37
rename PAICLAIMS ICLAIMS38
rename RIICLAIMS ICLAIMS39
rename SCICLAIMS ICLAIMS40
rename SDICLAIMS ICLAIMS41
rename TNICLAIMS ICLAIMS42
rename TXICLAIMS ICLAIMS43
rename UTICLAIMS ICLAIMS44
rename VTICLAIMS ICLAIMS45
rename VAICLAIMS ICLAIMS46
rename WAICLAIMS ICLAIMS47
rename WVICLAIMS ICLAIMS48
rename WIICLAIMS ICLAIMS49
rename WYICLAIMS ICLAIMS50
rename DCICLAIMS ICLAIMS51
reshape long ICLAIMS, i(date) j(StateTempId)

gen StateAbbrev = ""

replace StateAbbrev = "AL" if StateTempId == 1
replace StateAbbrev = "AK" if StateTempId == 2
replace StateAbbrev = "AZ" if StateTempId == 3
replace StateAbbrev = "AR" if StateTempId == 4
replace StateAbbrev = "CA" if StateTempId == 5
replace StateAbbrev = "CO" if StateTempId == 6
replace StateAbbrev = "CT" if StateTempId == 7
replace StateAbbrev = "DE" if StateTempId == 8
replace StateAbbrev = "FL" if StateTempId == 9
replace StateAbbrev = "GA" if StateTempId == 10
replace StateAbbrev = "HI" if StateTempId == 11
replace StateAbbrev = "ID" if StateTempId == 12
replace StateAbbrev = "IL" if StateTempId == 13
replace StateAbbrev = "IN" if StateTempId == 14
replace StateAbbrev = "IA" if StateTempId == 15
replace StateAbbrev = "KS" if StateTempId == 16
replace StateAbbrev = "KY" if StateTempId == 17
replace StateAbbrev = "LA" if StateTempId == 18
replace StateAbbrev = "ME" if StateTempId == 19
replace StateAbbrev = "MD" if StateTempId == 20
replace StateAbbrev = "MA" if StateTempId == 21
replace StateAbbrev = "MI" if StateTempId == 22
replace StateAbbrev = "MN" if StateTempId == 23
replace StateAbbrev = "MS" if StateTempId == 24
replace StateAbbrev = "MO" if StateTempId == 25
replace StateAbbrev = "MT" if StateTempId == 26
replace StateAbbrev = "NE" if StateTempId == 27
replace StateAbbrev = "NV" if StateTempId == 28
replace StateAbbrev = "NH" if StateTempId == 29
replace StateAbbrev = "NJ" if StateTempId == 30
replace StateAbbrev = "NM" if StateTempId == 31
replace StateAbbrev = "NY" if StateTempId == 32
replace StateAbbrev = "NC" if StateTempId == 33
replace StateAbbrev = "ND" if StateTempId == 34
replace StateAbbrev = "OH" if StateTempId == 35
replace StateAbbrev = "OK" if StateTempId == 36
replace StateAbbrev = "OR" if StateTempId == 37
replace StateAbbrev = "PA" if StateTempId == 38
replace StateAbbrev = "RI" if StateTempId == 39
replace StateAbbrev = "SC" if StateTempId == 40
replace StateAbbrev = "SD" if StateTempId == 41
replace StateAbbrev = "TN" if StateTempId == 42
replace StateAbbrev = "TX" if StateTempId == 43
replace StateAbbrev = "UT" if StateTempId == 44
replace StateAbbrev = "VT" if StateTempId == 45
replace StateAbbrev = "VA" if StateTempId == 46
replace StateAbbrev = "WA" if StateTempId == 47
replace StateAbbrev = "WV" if StateTempId == 48
replace StateAbbrev = "WI" if StateTempId == 49
replace StateAbbrev = "WY" if StateTempId == 50
replace StateAbbrev = "DC" if StateTempId == 51

gen fips = 0

replace fips = 1 if StateAbbrev == "AL"
replace fips = 2 if StateAbbrev == "AK"
replace fips = 4 if StateAbbrev == "AZ"
replace fips = 5 if StateAbbrev == "AR"
replace fips = 6 if StateAbbrev == "CA"
replace fips = 8 if StateAbbrev == "CO"
replace fips = 9 if StateAbbrev == "CT"
replace fips = 10 if StateAbbrev == "DE"
replace fips = 12 if StateAbbrev == "FL"
replace fips = 13 if StateAbbrev == "GA"
replace fips = 15 if StateAbbrev == "HI"
replace fips = 16 if StateAbbrev == "ID"
replace fips = 17 if StateAbbrev == "IL"
replace fips = 18 if StateAbbrev == "IN"
replace fips = 19 if StateAbbrev == "IA"
replace fips = 20 if StateAbbrev == "KS"
replace fips = 21 if StateAbbrev == "KY"
replace fips = 22 if StateAbbrev == "LA"
replace fips = 23 if StateAbbrev == "ME"
replace fips = 24 if StateAbbrev == "MD"
replace fips = 25 if StateAbbrev == "MA"
replace fips = 26 if StateAbbrev == "MI"
replace fips = 27 if StateAbbrev == "MN"
replace fips = 28 if StateAbbrev == "MS"
replace fips = 29 if StateAbbrev == "MO"
replace fips = 30 if StateAbbrev == "MT"
replace fips = 31 if StateAbbrev == "NE"
replace fips = 32 if StateAbbrev == "NV"
replace fips = 33 if StateAbbrev == "NH"
replace fips = 34 if StateAbbrev == "NJ"
replace fips = 35 if StateAbbrev == "NM"
replace fips = 36 if StateAbbrev == "NY"
replace fips = 37 if StateAbbrev == "NC"
replace fips = 38 if StateAbbrev == "ND"
replace fips = 39 if StateAbbrev == "OH"
replace fips = 40 if StateAbbrev == "OK"
replace fips = 41 if StateAbbrev == "OR"
replace fips = 42 if StateAbbrev == "PA"
replace fips = 44 if StateAbbrev == "RI"
replace fips = 45 if StateAbbrev == "SC"
replace fips = 46 if StateAbbrev == "SD"
replace fips = 47 if StateAbbrev == "TN"
replace fips = 48 if StateAbbrev == "TX"
replace fips = 49 if StateAbbrev == "UT"
replace fips = 50 if StateAbbrev == "VT"
replace fips = 51 if StateAbbrev == "VA"
replace fips = 53 if StateAbbrev == "WA"
replace fips = 54 if StateAbbrev == "WV"
replace fips = 55 if StateAbbrev == "WI"
replace fips = 56 if StateAbbrev == "WY"
replace fips = 11 if StateAbbrev == "DC"
replace fips = 68 if StateAbbrev == "MH"
replace fips = 72 if StateAbbrev == "PR"
replace fips = 69 if StateAbbrev == "MP"
replace fips = 60 if StateAbbrev == "AS"
replace fips = 78 if StateAbbrev == "VI"
replace fips = 66 if StateAbbrev == "GU"

drop if missing(ICLAIMS)
gsort fips daten
xtset fips daten
keep fips StateAbbrev daten wkdate ICLAIMS
order fips StateAbbrev daten wkdate ICLAIMS
gen wkdate = wofd(daten)
format wkdate %tw
label data "Initial Unemployment Claims by State, Long Format from FRED"
save StateUnemploymentClaims, replace