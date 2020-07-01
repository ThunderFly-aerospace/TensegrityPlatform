
include <../parameters.scad>

$fn=50;


foot_distance = 90;

module 888_1002(){

	difference(){

		union(){


			for(i=[-1, 1]){ 

				hull(){
					translate([foot_distance/2*i - 10, 0, 0])
						cube([20, 5, 5]);
					translate([beam_diameter*i, 100, 0])
						cylinder(d = beam_diameter+6, h = 5);
				}


				hull(){
					translate([foot_distance/2*i - 1.5, 0, 0])
						cube([3, 5, 10]);
					translate([beam_diameter*i, 100, 0])
						cylinder(d = beam_diameter, h = 5);
				}

				translate([foot_distance/2*i - 15, 0, 0])
					//cylinder(d = beam_diameter+6, h = 5);
					cube([30, 5, 20]);
			}

			hull(){
				translate([beam_diameter*1, 100, 0])
					cylinder(d = beam_diameter+6, h = 5);
				translate([beam_diameter*-1, 100, 0])
					cylinder(d = beam_diameter+6, h = 5);
			}

		}


			for(i=[-1, 1]) {
				translate([foot_distance/2*i+8, 0, 10])
					rotate([90, 0, 0]) cylinder(d = 4, h = 15, center = true);
				translate([foot_distance/2*i-8, 0, 10])
					rotate([90, 0, 0]) cylinder(d = 4, h = 15, center = true);
			}

			translate([0, 100, -0.5])
				cylinder(d = 3, h = 6);


	}



}


888_1002();