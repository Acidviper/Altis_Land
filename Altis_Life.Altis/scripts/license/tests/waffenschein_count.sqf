/*

	Author Shinji
	Macht die Zeitliche Begrenzung für den Waffenschein...

*/

waffenschein_best = false;
_timer = 30;
while { !waffenschein_best } do {

	_timer = _timer -1;
	
	if (_timer < 1 ) exitwith {};
	hintsilent format ["Zostalo %1 Sekund...", _timer];
	
	sleep 1;

};

if (waffenschein_best) then {
/*
playsound "made_it";*/
hint "Udalo sie!"; 
license_civ_gun = true;

} else {
hint "Nie uda³o siê ... Czas up³yn¹³..." 

};
