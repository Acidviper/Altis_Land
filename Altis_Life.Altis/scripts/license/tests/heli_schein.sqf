/* 

	Author Shinji
	
*/
_counter = 0;
_license_prog = true;
license_granted = false;
wall_accepted = false;
flug_zum_kastro = false;
heli_schule_gesch = true;
heli_schule_prog= true;



hint "Test ten jest nieco inny niż w poprzednich testach licencyjnych.Skup sie.";


sleep 15;
_owners = getPlayerUID player;

heli1 = "B_Heli_Light_01_F" createVehicle (getMarkerPos "heli_license_spawn");
heli1 setVariable["vehicle_info_owners",_owners,true];
clearWeaponCargoGlobal heli1;
clearItemCargoGlobal heli1;
clearMagazineCargoGlobal heli1;

sleep 0.1;

player moveindriver heli1;

sleep 1;

execvm "scripts\license\tests\troll_prevent.sqf";

hint "Możesz zrezygnować w każdej chwili.";

sleep 2;

while { heli_schule_prog } do {
TitleText["Leć do wysokości 50 metrów. Trzymaj to na kilka sekund.","BLACK FADED", 2];
sleep 5;
titleFadeOut 2;



waituntil {sleep 3,((getPos heli1 select 2) >=49)};

TitleText["Bardzo dobrze, widzę, że szybko się uczysz. Leć do najwyższej góry na wschodzie. Jeśli nie jesteś pewien, sprawdź na mapie.","BLACK FADED", 2];
sleep 6;
titleFadeOut 2;

heliarrow1 = "Sign_Arrow_Large_F"  createVehicle (getMarkerPos "heli_sign1");

ziel_marker= createMarkerLocal ["auftrags_ziel_marker", position player ];
"auftrags_ziel_marker" setMarkerBrushLocal "Cross";
"auftrags_ziel_marker" setMarkerColorLocal "ColorRed";
"auftrags_ziel_marker" setMarkerPosLocal (getpos heliarrow1 );
"auftrags_ziel_marker" setMarkerTypeLocal "hd_WARNING"; 
"auftrags_ziel_marker" setMarkerSize [1, 1];



sleep 4;

TitleText["Leć teraz do miejsca, gdzie znajduje się strzałka. Trzymając wysokość około 10 metrów nad nim.","BLACK FADED", 2];
sleep 3;
titleFadeOut 2;

waituntil {sleep 3,(((getPos heli1 select 2) <=12) && (heli1 distance ( markerPos "heli_sign1" ) <= 15))};

deleteMarkerLocal "auftrags_ziel_marker";


deletevehicle heliarrow1;

helitransp = "C_Hatchback_01_sport_F"  createVehicle (getMarkerPos "heli_sign1");

heliarrow1 = "Sign_Arrow_Large_F"  createVehicle (getMarkerPos "helitrans_pos");

helitransp attachTo [heli1, [0, 0, -2] ]; 

ziel_marker= createMarkerLocal ["auftrags_ziel_marker", position player ];
"auftrags_ziel_marker" setMarkerBrushLocal "Cross";
"auftrags_ziel_marker" setMarkerColorLocal "ColorRed";
"auftrags_ziel_marker" setMarkerPosLocal (getpos heliarrow1 );
"auftrags_ziel_marker" setMarkerTypeLocal "hd_WARNING"; 
"auftrags_ziel_marker" setMarkerSize [1, 1];

TitleText["Ten pojazd zboczył trochę i powinna wrócić do poczatku. Kieruj go tam, gdzie jest strzałka.","BLACK FADED", 2];
sleep 10;
titleFadeOut 2;

waituntil {sleep 3,(((getPos heli1 select 2) <=12) && (heli1 distance ( markerPos "helitrans_pos" ) <= 15))};

detach helitransp;

TitleText["Swietnie. Teraz ostatnie zadanie...","BLACK FADED", 2];
deleteMarkerLocal "auftrags_ziel_marker";
deletevehicle heliarrow1;
sleep 5;

heliarrow1 = "Sign_Arrow_Large_F"  createVehicle (getMarkerPos "heli_kastro_last");

TitleText["Leć do zamku Kawala, istnieje jeszcze jedna ze strzałek.","BLACK FADED", 2];
sleep 3;
titleFadeOut 2;

flug_zum_kastro = true;
stoppe_die_zeit = 0;
_counter= 0;
_min = 0;

while {flug_zum_kastro} do 
{
_counter = _counter + 1;
if (_min >= 2) then {hint "Nie dzales egzaminu..."; 
	deletevehicle heliarrow1;
	deletevehicle helitransp;
	sleep 8;

	deletevehicle heli1;
	license_heli_in_use =  false;
	publicVariable "license_heli_in_use";
	player setPos current_position_p; 
	heli_schule_prog = false;
	heli_schule_gesch = false;
	flug_zum_kastro = false;
	
	};
hintsilent format [ "Pozostaly czas:  %1 min.  %2 sek. ",_min,_counter ];
if ((((getPos heli1 select 2) <=12) && (heli1 distance ( markerPos "heli_kastro_last" ) <= 15))) then {
flug_zum_kastro = false;
heli_schule_gesch = true;
heli_schule_prog = false;


};

if (_counter >= 59 ) then {_counter = 0; _min = _min +1;};

sleep 1;
};

	};
if ( heli_schule_gesch ) then {
deletevehicle heliarrow1;
deletevehicle helitransp;

TitleText["Wspaniale. Odbierz swoja licencje w biurze.","BLACK FADED", 2];
sleep 3;
titleFadeOut 2;
/*playsound "made_it";*/
sleep 12;
hint "";
deletevehicle heli1;
	license_heli_in_use =  false;
	publicVariable "license_heli_in_use";
	player setPos current_position_p; 
	heli_schule_prog = false;
titleText ["Deine Lizenz wird nun uebergeben!", "plain"]; titleFadeOut 4;
license_civ_pilot = true;
} else {

hint "Uszkodzenie!";
sleep 8;
deletevehicle heli1;
	license_heli_in_use =  false;
	publicVariable "license_heli_in_use";
	player setPos current_position_p; 
	heli_schule_prog = false;
};
