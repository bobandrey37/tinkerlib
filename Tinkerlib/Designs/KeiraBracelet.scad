
/********************************************************************
 * TinkerLib : A breacelet for my daughter
 * https://github.com/tinkerology/tinkerlib
 * By Scott P Leslie (https://twitter.com/tinkerology)
 * Licensed Under Creative Commons Attributions Share Alike 
 * (http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
 *******************************************************************/

DETAIL=120;
FAST=0;

include <..\Tinkerlib\TinkerLib.scad>;

//drawRoundedCube([10,10,1],1);

//drawRoundedCylinder(10, 1);

//drawRoundedCone(10, 5, 2, 1);

//drawCylinderArc(100, 50, 275);

scale([1,.75,1])
rotate([0,0,105])
drawTubeArc(25*0.5, 25*2.25, 25*2.25-5, 330);
