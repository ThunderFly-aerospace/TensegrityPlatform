$fn = 50;


// release_part


include <../parameters.scad>

module 888_1001(){

difference(){
  union(){
    for(i = [-1, 1])
      translate([0, ears_distance*i/2, 0]) hull(){
        translate([ears_height/2 - 2.5, 0, 0])
          cube([ears_height + 5, ears_hole_width+6, release_length], center = true);

        translate([-beam_diameter, 0, 0])
          cylinder(d = beam_diameter+5, h = release_length, center = true);
      }

    translate([-release_thickness/2, 0, 0])
      cube([release_thickness, ears_distance, release_length], center = true);

    translate([-release_thickness*3/2, 0, -release_length/2+1.5])
      cube([release_thickness*3, ears_distance, 3], center = true);
  }


    for(i = [-1, 1])
      translate([0, ears_distance*i/2, 0]){
        translate([release_thickness/2 + ears_height/2, 0, 0])
          cube([ears_height + release_thickness, ears_hole_width, release_length+1], center = true);
        translate([-beam_diameter, 0, 0])
        cylinder(d = beam_diameter, h = release_length+1, center = true);

        translate([ears_hole_from_bottom, 0, 0])
          rotate([90+5, 0, 0])
            cylinder(d = 3, h=50, center = true, $fn=20);
      }

      translate([0, servo_axis_offset, 0]){
        cube([release_thickness*3, servo_length, servo_thickness], center = true);
        for(j=[1, -1])
          translate([0, servo_holes_distance/2*j, 0])
            rotate([0, 90, 0])
              cylinder(d=servo_holes_diameter, h = 20, center = true, $fn=15);
      }



}


}


888_1001();
