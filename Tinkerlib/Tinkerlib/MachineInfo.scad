
/********************************************************************
 * TinkerLib : A library of helper functions for OpenSCAD
 * By Scott P Leslie (https://twitter.com/tinkerology)
 * Licensed Under Creative Commons Attributions Share Alike 
 * (http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
 *******************************************************************/

/**
 * Machine Information
 **/
 
MACHINE_SIZE_X = 110;
MACHINE_SIZE_Y = 110;
MACHINE_SIZE_Z = 120;

MACHINE_LAYERS_PER_MM=3;

/**
 * Amount to add to the radius for interior hole to make them size properly.
 */
MACHINE_INSET_FUDGE=0.0;

/**
 * Factor to adjust radius for interior hole to make them size properly.
 * 1.0 = no change
 * > 1.0 = make bigger
 * < 1.0 = make smaller
 */
MACHINE_INSET_FUDGE_FACTOR=1.0;
