// Inputs

$inner_diameter = 67; //Radius of outertube wall (mm)
$endcap_height = 5; // (mm)
$endcap_width = 1; // (mm)
$endcap_bottom = 1; // (mm)
$tolerence = 0.2; // (mm)



$number_of_fragments = 180; // 90 is fine by default, choose lower for quicker rendering


// Model code

$inner_radius = $inner_diameter/2;

module endcap($fn = $number_of_fragments) {


    difference() {
        
        cylinder(h = $endcap_height + $endcap_bottom, r =  $inner_radius + $endcap_width + $tolerence/2);
        translate([0, 0, $endcap_bottom])
        cylinder(h = 3*$endcap_height, r =  $inner_radius + $tolerence/2);
          
    }
}


endcap();
