
ROD_RADIUS=58/2;
SUPPORT_RADIUS=ROD_RADIUS+3;
FLANG_RADIUS=SUPPORT_RADIUS+20;
SCREW_RADIUS=5/2;

DETAIL=120;
FAST=1;

include <..\Tinkerlib\TinkerLib.scad>;

CLOSET_ROD_BUSHING=[
	25,							/* BUSHING_LENGTH */
	ROD_RADIUS,					/* BUSHING_INNER_RADIUS */
	SUPPORT_RADIUS,				/* BUSHING_OUTER_RADIUS */
	FLANG_RADIUS,				/* BUSHING_SHOULDER_RADIUS */
	3,							/* BUSHING_SHOULDER_THICKNESS */
	BUSHING_FILL_STYLE_SOLID,		/* BUSHING_FILL_STYLE */
	0,							/* BUSHING_FILL_ANGLE */
	0,							/* BUSHING_FILL_SIZE */
	0,							/* BUSHING_FILL_WALL_THICKNESS */
	BUSHING_SHOULDER_STYLE_SOLID,	/* BUSHING_SHOULDER_STYLE */
	3,							/* BUSHING_SHOULDER_HOLE_COUNT */
	SCREW_RADIUS,				/* BUSHING_SHOULDER_HOLE_RADIUS */
];

module drawSupport()
{
	drawBushing( CLOSET_ROD_BUSHING );
}

module drawTestRing()
{
	drawTube(3, SUPPORT_RADIUS, ROD_RADIUS, $fn=DETAIL);
}

//drawTestRing();
drawSupport();
