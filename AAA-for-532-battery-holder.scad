/*
A 3D-printable adapter from an Ever Ready 532 to two AAA cells

(c) Jenny List 2024
CC-BY-SA 4.0

Designed for 1960s Polaroid bellows cameras which used this cell.
Tested on a Polaroid 104, other similar cameras use the same batteries.

I print this with a brim, and supports on the bed.

*/

module AAAcell(){
    cylinder(42.45,5.1,5.1);
    translate([0,0,42.45]) cylinder(1.12,1.6,1.6);
}


//translate([0,0,10]) AAAcell();
//translate([0,0,53.57]) AAAcell();
$fn=90;

rotate([0,90,0]){
    difference(){
        union(){
            translate([-7.25,-7.5,0]){
                difference(){ // -ve contact
                    cube([14.5,15,7]);
                    translate([0,1,3]) cube([13,13,3]);
                    translate([0,4,1.75]) cube([13,7,2.25]);
                    translate([0,3,1]) cube([13,9,0.75]);
                }
            }
            translate([-7.25,-7.5,93]){
                difference(){ // +ve contact
                    cube([14.5,15,3]);
                    translate([0,4,0.6]) cube([13,7,0.75]);
                    translate([0,3,1.35]) cube([13,9,0.75]);
                }
            }
            translate([0,0,7]) {
                difference(){//battery tube for 2 AAA cells
                    cylinder(86,7.25,7.25);
                    translate([-10,-4.5,10]) cube([10,9,66]);
                    translate([-10,-7.5,10]) cube([10,15,28]);
                    translate([-10,-7.5,48]) cube([10,15,28]);
                }
            }
        }
        translate([0,0,6]) cylinder(88,6,6); //middle of tube, clip to hold cells
    }
}