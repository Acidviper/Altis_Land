#define true 1
#define false 0

/*
    Master settings for various features and functionality
*/
class Life_Settings {
    /* Persistent Player Settings */
    save_civ_weapons = true; //Allow civilians to save weapons on them?
    save_virtualItems = true; //Save Virtual items (all sides)?
	saved_virtualItems[] = { "pickaxe","fuelEmpty","fuelFull", "spikeStrip", "lockpick", "defuseKit","storageSmall","storageBig","redgull","coffee","waterBottle","apple","peach","tbacon","donuts","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle_soup","hen","rooster","sheep","goat","defibrillator","toolkit","zipties","pliers","tracker" };
    save_playerStats = true; //Save food, water and damage (all sides)?
    save_civ_position = false; //Save civilian location?
    save_civ_positionStrict = false; //Strip the player if possible combat-log?  WARNING: Server crashes and lack of reliable syncing can trigger this.
	
	/* Auction House listing limit unless donator, then + 1 per level */
	ah_listing_limit = 10;

    /* Persistent Vehicle Settings */
    save_veh_virtualItems = true; //Save Virtual items for vehicles (all sides)?
    save_veh_gear = false; //Save Gear for vehicles (all sides)?
    save_veh_fuel = true; //Save Vehicle fuel state
    save_veh_damage = true; //Save Vehicle Damage
    save_veh_items[] = { "redgull","coffee","waterBottle","apple","peach","tbacon","donuts","trauben","bananen" };

    /* Clothing related settings */
    clothing_noTP = false;  //Disable clothing preview teleport? (true = no teleport. false = teleport)
    clothing_box = true; //true = teleport to a black box. false = teleport to somewhere on map. (It only affects the game if clothing_noTP is set as false)
    clothing_masks[] = { "H_Shemag_olive", "H_Shemag_khk", "H_Shemag_tan", "H_Shemag_olive_hs", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "H_RacingHelmet_1_black_F", "H_RacingHelmet_1_red_F", "H_RacingHelmet_1_white_F", "H_RacingHelmet_1_blue_F", "H_RacingHelmet_1_yellow_F", "H_RacingHelmet_1_green_F", "H_RacingHelmet_1_F", "H_RacingHelmet_2_F", "H_RacingHelmet_3_F", "H_RacingHelmet_4_F" };

    /* Cop related settings */
    cops_online_min = 6; //minimum cops online for robbing a bank

    /* Medic related settings*/
    allow_medic_weapons = true; // true allows medics to hold/use weapons - false disallows

    /* Revive system settings */
    revive_cops = true; //true to enable cops the ability to revive everyone or false for only medics/ems.
    revive_fee = 12000; //Revive fee that players have to pay and medics / EMS are rewarded

    /* House related settings */
    house_limit = 5; //Maximum amount of houses a player can own.

    /* Donor related settings */
    donor_level = true; //Enable the donor level set in database (var = life_donorlevel; levels = 0,1,2,3,4,5). ATTENTION! Before enabling, read: https://www.bistudio.com/community/game-content-usage-rules

    /* Gang related settings */
    gang_price = 450000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
    gang_upgradeBase = 150000; //The base cost for upgrading slots in a gang
    gang_upgradeMultiplier = 2.5; //Not sure if in use?

    /* Player-related systems */
    enable_fatigue = true; //Set to false to disable the ARMA 3 fatigue system.
    total_maxWeight = 24; //Static variable for the maximum weight allowed without having a backpack
    paycheck_period = 5; //Scaled in minutes

    /* Impound Variables */
    impound_car = 20000; //Price for impounding cars
    impound_boat = 7250; //Price for impounding boats
    impound_air = 20000; //Price for impounding helicopters / planes

    /* Initial Bank Amount */
    bank_cop = 20000; //Amount of cash on bank for new cops
    bank_civ = 50000; //Amount of cash on bank for new civillians
    bank_med = 20000; //Amount of cash on bank for new medics

    /* Paycheck Amount */
    paycheck_cop = 1650; //Payment for cops
    paycheck_civ = 875; //Payment for civillians
    paycheck_med = 1650; //Payment for medics

    /* Federal Reserve settings */
    noatm_timer = 30; //Time in minutes that players won't be able to deposit his money after selling stolen gold

    /* Spyglass settings */
    spyglass_init = false; //Enable or disable spyglass

    /* ATM settings */
    global_ATM = true; //Allow users to access any ATM on the map.

    /* Fuel Station & Heli Service settings */
    Pump_service = true; //Allow users to use pump service on the map. Default = false
    fuel_cost = 80; //Cost of fuel per liter at fuel stations (if not defined for the vehicle already).
    service_chopper = 1100; //Cost to service chopper at chopper service station.

    /* Skins settings */
    civ_skins = true;	//Enable or disable civilian skins. Before enabling, you must add all the SEVEN files to textures folder. (It must be named as: civilian_uniform_1.jpg, civilian_uniform_2.jpg...civilian_uniform_6.jpg, civilian_uniform_7.jpg)
	cop_skins = true;
	mtd_skins = true;

    /* Vehicle Settings */
	vehicle_infiniteRepair = false;
    vehicleShop_rentalOnly[] = { "B_Boat_Armed_01_minigun_F", "B_G_Offroad_01_armed_F" };
    vehicleShop_BuyMultiplicator = 1.5;
    vehicleGarage_SellMultiplicator = 0.75;
    vehicleGarage_StorFeeMultiplicator = 0.08;
    vehicleChopShop_Multiplicator = 0.5;

    /* Job-related stuff */
    delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25" };

    /* FuelTank Mission */
    FuelTank_WinMultiplier = 1; //Win Multiplier in FuelTank Missions. Increase for more Money! Default = 1

    /* Animal settings */
    animaltypes_fish[] = { "Salema_F", "Ornate_random_F", "Mackerel_F", "Tuna_F", "Mullet_F", "CatShark_F", "Turtle_F" };
    animaltypes_hunting[] = { "Sheep_random_F", "Goat_random_F", "Hen_random_F", "Cock_random_F", "Rabbit_F" };

    /* Wanted System related settings */
    /* crimes[] = {String, Bounty, Code} */
    crimes[] = {
		{"STR_Crime_1","25000","1"}, //jazda samochodem bez licencji
		{"STR_Crime_2","50000","2"}, //jazda ciężarówką bez licencji
		{"STR_Crime_3","20000","3"},  //pływanie bez licencji
		{"STR_Crime_4","25000","4"},  //Jazda bez świateł
		{"STR_Crime_5","75000","5"}, //Jazda po pijanemu
		{"STR_Crime_6","25000","6"}, //Spowodowanie wypadku
		{"STR_Crime_7","50000","7"}, //Spowodowanie wypadku z udziałem ludzi
		{"STR_Crime_8","100000","8"},  //ucieczka z miejsca wypadku
		{"STR_Crime_9","200000","9"}, //jazda poza drogą publiczną
		{"STR_Crime_10","55000","10"}, //latanie bez licencji pilota
		{"STR_Crime_11","200000","11"}, //lądowania poza miejscem wyznaczonym
		{"STR_Crime_12","100000","12"}, //zawisnięcie nad miastem ponizej 150m
		{"STR_Crime_13","10000","13"}, //latanie bez świateł kolizyjnych
		{"STR_Crime_14","15000","14"}, //10 km / h powyżej prędkości
		{"STR_Crime_15","25000","15"}, //20 km / h powyżej prędkości
		{"STR_Crime_16","50000","16"}, //50 km / h powyżej prędkości
		{"STR_Crime_17","100000","17"}, //70 km / h powyżej prędkości
		{"STR_Crime_18","150000","18"}, //100 km / h powyżej prędkości
		{"STR_Crime_19","17500","19"}, //jazda gokartem
		{"STR_Crime_20","50000","20"}, //posiadanie kajdanek
		{"STR_Crime_21","17500","21"}, //Okradanie pojazdu
		{"STR_Crime_22","15000","22"}, //obrabowanie
		{"STR_Crime_23","50000","23"}, //Nieuprawnione użycie broni(tazer)
		{"STR_Crime_24","150000","24"}, //Nieuprawnione użycie broni palnej
		{"STR_Crime_25","50000","25"}, //nieuprawnione użycie syren
		{"STR_Crime_26","1000000","26"}, //korupcja
		{"STR_Crime_27","25000","27"}, //niezgodnosc danych w dowodzie
		{"STR_Crime_28","75000","28"}, //obrażanie itp
		{"STR_Crime_29","100000","29"}, //Brak uprawnień
		{"STR_Crime_30","50000","30"}, //Postrzelenie
		{"STR_Crime_31","150000","31"}, //Przemoc powodując śmierć przez użycie broni palnej
		{"STR_Crime_32","25000","32"}, //wielokrotna śmierć przez użycie broni palnej
		{"STR_Crime_33","20000","33"}, //odmowa jedzenia w więzieniu
		{"STR_Crime_34","17500","34"}, //narkotyki w domu
		{"STR_Crime_35","25000","35"}, //Dnarkotyki w samochodzie / Hellikopter
		{"STR_Crime_36","25000","36"}, //narkotyki w samochodzie
		{"STR_Crime_37","17000","37"}, //narkotyki w łodzi
		{"STR_Crime_38","25000","38"}, //Narkotyki w plecaku
		{"STR_Crime_39","150000","39"}, //handel narkotykami / sprzedaż
		{"STR_Crime_40","25000","40"}, //próba kradzieży pojazdu
		{"STR_Crime_41","50000","41"}, //kradzież pojazdu
		{"STR_Crime_42","75000","42"}, //rozbój
		{"STR_Crime_43","50000","43"}, //przekupstwo
		{"STR_Crime_44","250000","44"}, //napad na bank
		{"STR_Crime_45","150000","45"}, //wymuszenia
		{"STR_Crime_46","100000","46"}, //napad na stacje 
		{"STR_Crime_47","100000","47"}, //nielegalne blokady
		{"STR_Crime_48","150000","48"}, //Besitz von Polizeimittel
		{"STR_Crime_49","200000","49"}, //posiadanie nielegalnych przedmiotów	
		{"STR_Crime_50","75000","50"}, //broń bez licencji
		{"STR_Crime_51","100000","51"}, //chodzenie z wyciągniętą bronią
		{"STR_Crime_52","150000","52"}, //posiadanie nielegalnej broni
		{"STR_Crime_53","100000","53"}, //posiadanie długiego pistoletu
		{"STR_Crime_54","50000","54"}, //osiadanie nielegalnych magazynków
		{"STR_Crime_55","75000","55"}, //bron palna w mieście
		{"STR_Crime_56","75000","56"}, //handel bronią
		{"STR_Crime_57","50000","57"}, //handel bronią biernie
		{"STR_Crime_58","50000","58"}, //spowodowanie urazu cywila
		{"STR_Crime_59","775000","59"}, //morderstwo
		{"STR_Crime_60","125000","60"}, //ucieczka z więzienia
		{"STR_Crime_61","25000","61"}, //molestowanie
		{"STR_Crime_62","150000","62"}, //porwanie
		{"STR_Crime_63","200000","63"}, //zagrożenie
		{"STR_Crime_64","500000","64"}, //usiłowanie zabójstwa
		{"STR_Crime_65","1000000","65"}, //Mord
		{"STR_Crime_66","100000","66"}, //nieumyślne spowodowanie śmierci		
		{"STR_Crime_67","250000","67"}, //podżegania do morderstwa
		{"STR_Crime_68","75000","68"}, //lekceważenie policji
		{"STR_Crime_69","100000","69"}, //powalenie
		{"STR_Crime_70","50000","70"}, //przeszkadzanie pol/med w wykonywaniu pracy
		{"STR_Crime_71","50000","71"}, //molestowanie / obrażanie
		{"STR_Crime_72","75000","72"}, //wchodzące do stref zamkniętych bez pozwolenia
		{"STR_Crime_73","50000","73"}, //przekroczenie bariery
		{"STR_Crime_74","55000","74"}, //trolowanie
		{"STR_Crime_75","50000","75"}, //hm
		{"STR_Crime_76","150000","76"}, //arogancja
		{"STR_Crime_77","200000","77"}, //wywołanie awaryjnego alarmu
		{"STR_Crime_78","100000","78"}, //uszkodzenia mienia		
		{"STR_Crime_79","200000","79"}, //Ucieczka z więzienia
		{"STR_Crime_80","150000","80"}, //Pomoc w ucieczce z więzieniea
		{"STR_Crime_459","50000","459"},		
		{"STR_Crime_919","200000","919"},		
		{"STR_Crime_919A","150000","919A"}		
    };
};

#include "Config_Clothing.hpp"
#include "Config_Licenses.hpp"
#include "Config_Vehicles.hpp"
#include "Config_vItems.hpp"
#include "Config_Weapons.hpp"
#include "Config_Gather.hpp"
#include "Config_SpawnPoints.hpp"
