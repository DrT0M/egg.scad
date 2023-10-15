//The egg modelled as two half-ellipsoids with different long radii

module egg(size)
{
	r = pow(size,1/3);	//convert cubic volume_mass_weight to radius at the waist
	top=1.2;	//ratio of long radius for the top or fat end (air sac should be stored up)
	bot=1.5;	//ratio of long radius for the bottom or sharper end (stored pointing down)
	union()
	{
		difference()
		{
			scale([1,1,top]) sphere(r);
			rotate([180,0,0]) cylinder(h=r*top,r=r);
		}
		difference()
		{
			scale([1,1,bot]) sphere(r);
			cylinder(h=r*bot,r=r);
		}
	}

//	The egg is licensed under
//	MIT License
//
//	Copyright (c) 2023 DrT0M
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights
//	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//	copies of the Software, and to permit persons to whom the Software is
//	furnished to do so, subject to the following conditions:
//	
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//	SOFTWARE.
}

//USDA egg sizes
//1.5  oz.	small
//1.75 oz.	medium
//2.0  oz.	large
//2.25 oz.	extra-large
//2.5  oz.	jumbo

$fn=180;

//example
for(USDA_size = [1.5:0.25:2.5])
	translate([USDA_size*15-20,0,0])
//	color("sandybrown")
//	color("white")
//	color("saddlebrown")	//'CADbury'
	color("gold")	//some goose lays these specimens
	egg(USDA_size);
