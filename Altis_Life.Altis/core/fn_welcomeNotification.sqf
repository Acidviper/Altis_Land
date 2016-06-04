/*
	File: fn_welcomeNotification.sqf
	Author: Acid
	Datum: 22,07,2015

	Dialog Fenster 
*/
_onScreenTime = 8;

sleep 40; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Head Admin";
_role1names = ["Acid"];
_role2 = "Witamy";
_role2names = ["Altisland"];
_role3 = "Teamspeak Admin";
_role3names = ["Acid"];
_role4 = "Restarty";
_role4names = ["00:00, 06:00,  12:00,  18:00"];
_role5 = "";
_role5names = [""];
_role6 = "";
_role6names = [""];
_role7 = "";
_role7names = [""];
_role8 = "";
_role8names = [""];
_role9 = "";
_role9names = [""];
_role10 = "";
_role10names = [""];
_role11 = "";
_role11names = [""];
_role12 = "";
_role12names = [""];
_role13 = "";
_role13names = [""];
_role14 = "";
_role14names = [""];
_role15 = "";
_role15names = [""];
_role16 = "";
_role16names = [""];

{
sleep 8;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='1.00' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime = 8;
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
3
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names],
[_role12, _role12names],
[_role13, _role13names],
[_role14, _role14names],
[_role15, _role15names],
[_role16, _role16names]
];