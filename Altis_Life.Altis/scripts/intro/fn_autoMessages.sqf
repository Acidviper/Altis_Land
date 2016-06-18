[] spawn {
	_messages = [ 
		 "<br/><br/>Nasz nowy serwer <br/><br/>Jeśli masz pytania zapraszam na ts albo www <br/><br/> <t color='#FF0000' size='1.3'>www.altisland.pl</t>"
	];

	_refreshTime = 4500;

	_i = 0;
	while {true} do {
		_count = count _messages;
		_message = _messages select _i;
		hint parseText format["<t color='#ff9900' size='2'>AltisLand</t><br/><t color='#ff9900' size='2'>Witamy!</t><br/><br/><img shadown='false' size='6' image='textures\allgemein\bilder\logo.jpg'/><br/><br/>%1", _message];
		sleep _refreshTime;
		if (_i == (_count - 1)) then {
			_i = 0;
		} else {
			_i = _i + 1;
		};
	};
};