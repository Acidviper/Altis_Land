/*

File: fitness.sqf
Author: Dexter, feel free to modify

Description:
simple fitness center

*/

_price = 1750;

if(life_cash < _price) exitWith {hint "Nie masz wystarczająco dużo pieniędzy!";};
if(life_hunger < 85) exitWith {hint "Idź coś zjeść zanim zrobisz pompki!";};
if(life_thirst < 85) exitWith {hint "Idź się napić, zanim zrobisz pompki!";};

life_cash = life_cash - _price;
life_thirst = life_thirst - 60;
life_hunger = life_hunger - 60;
[] call life_fnc_hudUpdate;
player setFatigue 0;
    [] spawn
        {
            life_redgull_effect = time;
            titleText["Trainiere...","PLAIN"];
            player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
            sleep 14;
            titleText["Ostro ćwiczysz. Pamiętaj o czymś do jedzenia i picia!","PLAIN"];
            player enableFatigue false;
            waitUntil {!alive player OR ((time - life_redgull_effect) > (10 * 60))};
            player enableFatigue true;
        };