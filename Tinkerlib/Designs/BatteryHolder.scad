
/********************************************************************
 * TinkerLib : Battery holder
 * https://github.com/tinkerology/tinkerlib
 * By Scott P Leslie (https://twitter.com/tinkerology)
 * Licensed Under Creative Commons Attributions Share Alike 
 * (http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
 *******************************************************************/

DETAIL=120;
FAST=1;

include <..\TinkerLib\TinkerLib.scad>;

BATTERY_HOLDER_RADIUS=0;
BATTERY_HOLDER_XCOUNT=1;
BATTERY_HOLDER_YCOUNT=2;
BATTERY_HOLDER_SPACING=3;
BATTERY_HOLDER_HEIGHT=4;
BATTERY_HOLDER_HOLE_DEPTH=5;
BATTERY_HOLDER_BORDER=6;

BATTERY_HOLDER_INFO_AA=
[
	7.5,	/* BATTERY_HOLDER_RADIUS */
	5,		/* BATTERY_HOLDER_XCOUNT */
	5,		/* BATTERY_HOLDER_YCOUNT */
	1,		/* BATTERY_HOLDER_SPACING */	
	20,		/* BATTERY_HOLDER_HEIGHT */
	18,		/* BATTERY_HOLDER_HOLE_DEPTH */
	3,		/* BATTERY_HOLDER_BORDER */
];

module drawHolder(data)
{
	difference()
	{
		drawChamferedCube(
			[data[BATTERY_HOLDER_XCOUNT]*
					(data[BATTERY_HOLDER_RADIUS]*2+data[BATTERY_HOLDER_SPACING])+
					data[BATTERY_HOLDER_BORDER]*2-data[BATTERY_HOLDER_SPACING],
			 data[BATTERY_HOLDER_YCOUNT]*
					(data[BATTERY_HOLDER_RADIUS]*2+data[BATTERY_HOLDER_SPACING])+
					data[BATTERY_HOLDER_BORDER]*2-data[BATTERY_HOLDER_SPACING],
			 data[BATTERY_HOLDER_HEIGHT]],
			data[BATTERY_HOLDER_BORDER]/2);

		translate([data[BATTERY_HOLDER_BORDER]+data[BATTERY_HOLDER_RADIUS]
			,data[BATTERY_HOLDER_BORDER]+data[BATTERY_HOLDER_RADIUS],
			data[BATTERY_HOLDER_HEIGHT]-data[BATTERY_HOLDER_HOLE_DEPTH]])
		drawGridOfCylinders( data[BATTERY_HOLDER_HOLE_DEPTH],
			data[BATTERY_HOLDER_XCOUNT], data[BATTERY_HOLDER_YCOUNT],
			data[BATTERY_HOLDER_RADIUS]*2+data[BATTERY_HOLDER_SPACING],
			data[BATTERY_HOLDER_RADIUS]*2+data[BATTERY_HOLDER_SPACING],
			data[BATTERY_HOLDER_RADIUS], data[BATTERY_HOLDER_RADIUS]);
	}
}

drawHolder(BATTERY_HOLDER_INFO_AA);
