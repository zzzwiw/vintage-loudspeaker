# vintage-loudspeaker
An experimental loudspeaker stylized as vintage speakers from the 30s, 40s.

![A photo of ready loudspeaker](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-final.jpg)

This is a experimental loudspeaker project that is completely designed using the parametric CAD tools provided by OpenSCAD. In order to deal with this source code you'll need to install OpenSCAD, following the instructions at: www.openscad.org

The main case is built by using CNC milling from 10mm plywood. Decor was made from 3mm plywood by laser cutting.

Main file: das.scad

The curves for CNC and lasercutting can be exported to DXF by rendering the this file in 2D mode. Option "mod3d" at the beginning of files changed 2D / 3D view mode. Options "inner2d" and "decor2d" changes different sets of 2D details.

This construction can be easily modified for another box size, speaker size and plywood thickness. All parameters which define sizes of this construction are specified at the beginning of file. But be careful when changing them. You will need to check whole construction in 3D preview to make sure that all details will connected correctly.


