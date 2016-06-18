
private["_ts_markers","_ts_helpers","_truck","_goal_singns","_counter","_min","_test_TruckProg","_wenden","_current","_owners"];

////////////////ARROWS
_ts_markers = [];
_ts_helpers = ["ts1","ts2","ts3","ts4","ts5","ts6","ts7","ts8","ts9","ts10","ts11","ts12","ts13","ts14","ts15","ts16","ts17","ts18","ts19","ts20","ts21","ts22","ts23"];

{
	_current = _x;
	_ts_markers = _ts_markers + ["Sign_Arrow_Large_F" createVehicle (getMarkerPos _current)];
}forEach _ts_helpers;

hint "Jedź wzdłuż zaznaczonych strzałek, aż do fabryki. Masz 4 minuty czasu.";

sleep 10;

////////////////TRUCK
_owners = getplayerUID player;

_truck = "B_Truck_01_box_F" createVehicle (getMarkerPos "truck_license_spawn");
_truck setVariable["vehicle_info_owners",_owners,true];

sleep 0.1;

player moveindriver _truck;

hint "Los gehts!!!";

_goal_singns = "Sign_Arrow_Large_Green_F" createVehicle ( getMarkerPos "trucking_license_goal");

Sleep 2;

_wenden = false;
_counter = 0;
_min = 0;
_test_TruckProg = true;
//SCHLEIFE
while {_test_TruckProg} do{
////////////////TIMER
_counter = _counter + 1;
hint format ["Pozostalo czasu: %2 min. %1 sec.", _counter, _min];
if (_counter >= 59) then { _min = _min+1; _counter = 0};
	if (_min >= 4 && _counter >= 20) exitwith { _test_TruckProg = false; deleteVehicle _goal_singns; hint "Czas uplynal."; _truck setDamage 0.5; sleep 5; deletevehicle _truck; player setPos current_position_p; 
							
						{							
							_current = _x;
							deleteVehicle _current;
						}foreach _ts_markers;						
		license_trucker_in_use =  false;publicVariable "license_trucker_in_use";		
	};
////////////////Wenden
   if ((vehicle player distance (getMarkerPos "ts17")) <= 8) then {
       _wenden = true;
	   hint "Tutaj trzeba skręcić, a następnie wrocic do punktu startu. pospiesz się!";
	   titleText ["Tutaj trzeba skręcić, a następnie wrocic do punktu startu. pospiesz się!", "PLAIN"]
   };
////////////////Bestanden
   if (((vehicle player distance (getMarkerPos "trucking_license_goal")) <= 8) && _wenden) then {
       _test_TruckProg = false;
	   hint "Udalo sie.";
	   _truck setDamage 0.5; sleep 8; deletevehicle _truck; player setPos current_position_p;
	   license_civ_trucking = true;
	license_trucker_in_use =  false;
	publicVariable "license_trucker_in_use";
	{
		_current = _x;
		deleteVehicle _current;
	}foreach _ts_markers;
	deleteVehicle _goal_singns;
   };
sleep 1;
  };
   
   