# vintage-loudspeaker
An experimental loudspeaker stylized as vintage speakers from the 30s, 40s.

More details about this project: https://motion-soundscape.blogspot.com/2019/12/project-vintage-loudspeaker-final.html

This loudspeaker built with using three low / mid range speakers and two tweeter and based on "Open box" design with using some horn elements. It copies the typical design of the vintage radio and reel-to-reel equipment where speakers were in the same box with PCBs and mechanical parts.

![A photo of ready loudspeaker](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-final.jpg)

This is a experimental loudspeaker project that is completely designed using the parametric CAD tools provided by OpenSCAD. In order to deal with this source code you'll need to install OpenSCAD, following the instructions at: www.openscad.org

The main case is built by using CNC milling from 10mm plywood. Decor was made from 3mm plywood by laser cutting. Total box size is 380x330x140mm. The main details of construction are glued with PVA (Polyvinyl acetate) glue. But front and side speaker panels and decoration panels are fastened by screws. So I do not recommend use plywood thinner that 9mm because there may be problems using screws.

![OpenSCAD preview](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic01.png)

Construction file: "das.scad". Also you need "door1.dxf" file for decoration elements. Place these files in the same directory.

The curves for CNC and lasercutting can be exported to DXF by rendering the this file in 2D mode. Option "mod3d" at the beginning of files changed 2D / 3D view mode. Options "inner2d" and "decor2d" changes different sets of 2D details.

This construction can be easily modified for another box size, speaker size and plywood thickness. All parameters which define sizes of this construction are specified at the beginning of file. But be careful when changing them. You will need to check whole construction in 3D preview to make sure that all details will connected correctly.

In the 3D preview you can set the value of parameters "explode_vert" and "explode_horz" differ from 0 to make explode view.

Use parameters "open_top", "no_cover", "no_fpanels" in the 3D mode to hide specified parts of construction.

![OpenSCAD preview](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic02.png)

![OpenSCAD preview](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic03.png)


Assembly process.

Internal space of the case was glued with synthetic felt for better sound absorption. Also was used PVA (Polyvinyl acetate) glue.

With front and side decoration frames was used brass rods d = 4mm. Holes in the small triangle parts glued to these frames also 4mm.

The outsides of the whole box was treated with wood oil on two layers. I used wood oil Osmo (https://osmo-store.com) "3073 Terra transparent" for the first layer and "3032 Farblos" for the second. But you can use any others. The oil gives a very stable coating and a pleasant to the touch surface. 

Be attentive, when treated with the oil, all defects at the plywood grinding (chips, scratches, cracks) will be clearly visible.


![Assembly process](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic0101.jpg)

![Assembly process](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic0102.jpg)

![Assembly process](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic0103.jpg)

![Assembly process](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic0104.jpg)

![Assembly process](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic0105.jpg)

![Assembly process](https://raw.githubusercontent.com/zzzwiw/vintage-loudspeaker/master/images/das-pic0106.jpg)

