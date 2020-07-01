
include <../parameters.scad>

$fn=50;

module 888_1002(){

	difference(){

		union(){

			for(i=[-1, 1]) hull() {
				translate([ears_distance/2*i, 0, 0])
					cylinder(d = beam_diameter+6, h = 5);
				translate([beam_diameter*i, 100, 0])
					cylinder(d = beam_diameter+6, h = 5);
			}

			hull(){
				translate([beam_diameter*1, 100, 0])
					cylinder(d = beam_diameter+6, h = 5);
				translate([beam_diameter*-1, 100, 0])
					cylinder(d = beam_diameter+6, h = 5);
			}

		}


			for(i=[-1, 1]) hull() {
				translate([ears_distance/2*i, 0, -0.5])
					cylinder(d = beam_diameter, h = 6);
			}

			translate([0, 100, -0.5])
				cylinder(d = 3, h = 6);


	}



}


888_1002();