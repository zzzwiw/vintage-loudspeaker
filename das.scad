
// construct options

mod3d=true;
inner2d=false;
decor2d=false;

open_top=false;
no_cover=false;
no_fpanels=false;

// explode

explode_vert=20;
explode_horz=20;

// box size

box_width=380;
box_height=330;

// material thickness

panel_thickness=10;
screw_hole=3.2;

// front design

front_indent=50;
front_hole=50;
front_hole_angle=160;

main_speaker_spaces=10;

// rear design

rear_indent=50;
rear_side_correct=2.6;
rear_thickness_correct=0;

// acoustic horn

horn_panel_width=240;
horn_panel_angle=85;
horn_panel_space=170;
horn_panel_offset=1.5;

// socket panel

socket_panel_size=60;

// face cover

face_cover_thickness=2;
face_cover_texttile=1;
face_triangle_hole=4;
face_triangle_spacing=12;

// main speaker 5gdsh-3

main_speaker_width=160;
main_speaker_height=100;

main_speaker_fwidth=125;
main_speaker_fheight=80;
main_speaker_cwidth=145;
main_speaker_cheight=85;
main_speaker_screw=3.2;

main_speaker_size1=4;
main_speaker_size2=25;
main_speaker_size3=16;
main_speaker_size4=75;

// twit speaker 3gdv-1

twit_speaker_width=80;
twit_speaker_height=50;

twit_speaker_fwidth=63;
twit_speaker_fheight=40;
twit_speaker_cwidth=70;
twit_speaker_cheight=40;
twit_speaker_screw=3.2;

twit_speaker_size1=3;
twit_speaker_size2=12;
twit_speaker_size3=25;
twit_speaker_size4=35;

// colors

inner_frame_color="RoyalBlue";
inner_side_color="DarkGreen";
outer_side_color="NavajoWhite";
outer_cover_color="Tan";
speaker_panel_color="Teal";
horn_panel_color="DarkSlateBlue";
speaker_color="OrangeRed";
decor_panel_color="DarkRed";
decor_triangle_color="Navy";
decor_shaft_color="Gold";

// internal options

screw_hole_fn=360;
speakers_hole_fn=1080;


// *** construct ***


front_panel=panel_thickness;
rear_panel=panel_thickness;
side_panel=panel_thickness;
speaker_panel=panel_thickness;

fspkpan_height=main_speaker_height+(main_speaker_spaces*2);
fspkpan_height_full=fspkpan_height+(panel_thickness*2);

side_pin_step=panel_thickness;

frame_width=box_width-(side_panel*2.0);
frame_height=box_height-front_panel-speaker_panel-rear_panel;

main_speaker_side_offs=(frame_width-main_speaker_width)/2;
main_speaker_top_offs=(fspkpan_height_full-main_speaker_height)/2;
twit_speaker_side_offs=(main_speaker_side_offs-twit_speaker_height)/2;
twit_speaker_top_offs=(fspkpan_height_full-twit_speaker_width)/2;
side_speaker_top_offs=(fspkpan_height_full-main_speaker_height)/2;

frame_pr01t=panel_thickness+rear_thickness_correct;
frame_pr10x=frame_width;
frame_pr10y=front_indent;
frame_pr20x=frame_pr10x+(front_hole*cos(front_hole_angle));
frame_pr20y=frame_pr10y+(front_hole*sin(front_hole_angle));
frame_pr30x=frame_width;
frame_pr30y=frame_height-rear_indent;
frame_pr30a=atan2(frame_pr30y-frame_pr20y,frame_pr30x-frame_pr20x);
frame_pr21x=frame_pr20x+(frame_pr01t*cos(frame_pr30a+90));
frame_pr21y=frame_pr20y+(frame_pr01t*sin(frame_pr30a+90));
frame_pr29x=frame_pr30x+(frame_pr01t*cos(frame_pr30a+90));
frame_pr29y=frame_pr30y+(frame_pr01t*sin(frame_pr30a+90));
frame_pl10x=0;
frame_pl10y=front_indent;
frame_pl20x=frame_pl10x+(front_hole*cos(180-front_hole_angle));
frame_pl20y=frame_pl10y+(front_hole*sin(180-front_hole_angle));
frame_pl30x=0;
frame_pl30y=frame_height-rear_indent;
frame_pl30a=180-frame_pr30a;
frame_pl21x=frame_pl20x-(frame_pr01t*cos(frame_pl30a+90));
frame_pl21y=frame_pl20y-(frame_pr01t*sin(frame_pl30a+90));
frame_pl29x=frame_pl30x-(frame_pr01t*cos(frame_pl30a+90));
frame_pl29y=frame_pl30y-(frame_pr01t*sin(frame_pl30a+90));

frame_horn_panel_y1=(frame_height-horn_panel_offset)-(panel_thickness*sin(horn_panel_angle));
frame_horn_panel_left_x1=(((frame_width/2)-(horn_panel_space/2))-panel_thickness)+(panel_thickness*cos(horn_panel_angle));
frame_horn_panel_right_x1=(((frame_width/2)+(horn_panel_space/2))+panel_thickness)-(panel_thickness*cos(horn_panel_angle));
frame_horn_panel_y2=(frame_height-horn_panel_offset)-((horn_panel_width-(panel_thickness*2))*sin(horn_panel_angle));
frame_horn_panel_left_x2=(((frame_width/2)-(horn_panel_space/2))-panel_thickness)+((horn_panel_width-(panel_thickness*2))*cos(horn_panel_angle));
frame_horn_panel_right_x2=(((frame_width/2)+(horn_panel_space/2))+panel_thickness)-((horn_panel_width-(panel_thickness*2))*cos(horn_panel_angle));

sidespk_size=sqrt(pow(frame_pl29x-frame_pl21x,2)+pow(frame_pl29y-frame_pl21y,2));
sidespk_left_x=side_panel+((frame_pr01t-explode_horz)*cos(frame_pl30a-90));
sidespk_left_y=((speaker_panel+front_panel+frame_height)-rear_indent)+((frame_pr01t-explode_horz)*sin(frame_pl30a-90));
sidespk_right_x=frame_width+side_panel+((rear_thickness_correct-explode_horz)*cos(frame_pr30a+90));
sidespk_right_y=((speaker_panel+front_panel+frame_height)-rear_indent)+((rear_thickness_correct-explode_horz)*sin(frame_pr30a+90));

horn_panel_center=side_panel+(frame_width/2);
horn_panel_y=(speaker_panel+front_panel+frame_height)-horn_panel_offset;
horn_panel_left_x=horn_panel_center-(horn_panel_space/2)-panel_thickness;
horn_panel_right_x=horn_panel_center+(horn_panel_space/2)+panel_thickness;

if (mod3d) {
 
 // top, bottom inner panel
 
 color(inner_frame_color,1.0)
  translate([side_panel,speaker_panel+front_panel,panel_thickness-explode_vert])
   linear_extrude(height=panel_thickness,center=false)
    InnerPanel();

 if (!open_top)
  color(inner_frame_color,1.0)
   translate([side_panel,speaker_panel+front_panel,(panel_thickness*2)+fspkpan_height+explode_vert])
    linear_extrude(height=panel_thickness,center=false)
     InnerPanel();
 
 // inner side panels

 color(inner_side_color,1.0)
  translate([(panel_thickness+side_panel)-explode_horz,speaker_panel+front_panel,0])
   rotate([0,270,0])
    linear_extrude(height=panel_thickness,center=false)
     InnerSidePanel(front_indent);

 color(inner_side_color,1.0)
  translate([frame_width+side_panel+explode_horz,speaker_panel+front_panel,0])
   rotate([0,270,0])
    linear_extrude(height=panel_thickness,center=false)
     InnerSidePanel(front_indent);

 color(inner_side_color,1.0)
  translate([side_panel-explode_horz,speaker_panel+front_panel+frame_height,0])
   rotate([0,270,180])
    linear_extrude(height=panel_thickness,center=false)
     InnerSidePanel(rear_indent-rear_side_correct);

 color(inner_side_color,1.0)
  translate([frame_width+(side_panel-panel_thickness)+explode_horz,speaker_panel+front_panel+frame_height,0])
   rotate([0,270,180])
    linear_extrude(height=panel_thickness,center=false)
     InnerSidePanel(rear_indent-rear_side_correct);

 // outer side panels
 
 if (!no_cover) {

  color(outer_side_color,1.0)
   translate([side_panel-(explode_horz*2),0,0])
    rotate([0,270,0])
     linear_extrude(height=side_panel,center=false)
      OuterSidePanel(speaker_panel+front_panel+front_indent-panel_thickness,front_panel+speaker_panel);

  color(outer_side_color,1.0)
   translate([frame_width+(side_panel*2)+(explode_horz*2),0,0])
    rotate([0,270,0])
     linear_extrude(height=side_panel,center=false)
      OuterSidePanel(speaker_panel+front_panel+front_indent-panel_thickness,front_panel+speaker_panel);

  color(outer_side_color,1.0)
   translate([-(explode_horz*2),box_height,0])
    rotate([0,270,180])
     linear_extrude(height=side_panel,center=false)
      OuterSidePanel(speaker_panel+front_panel+rear_indent-(panel_thickness*2)-rear_side_correct,rear_panel);
        
  color(outer_side_color,1.0)
   translate([frame_width+side_panel+(explode_horz*2),box_height,0])
    rotate([0,270,180])
     linear_extrude(height=side_panel,center=false)
      OuterSidePanel(speaker_panel+front_panel+rear_indent-(panel_thickness*2)-rear_side_correct,rear_panel);
      
 };
   
 // cover panels
 
 if (!no_cover)
  color(outer_cover_color,1.0)
   translate([0,0,-(explode_vert*2)])
    linear_extrude(height=panel_thickness,center=false)
     CoverPanel();

 if ((!open_top)&&(!no_cover))
  color(outer_cover_color,1.0)
   translate([0,0,(panel_thickness*3)+fspkpan_height+(explode_vert*2)])
    linear_extrude(height=panel_thickness,center=false)
     CoverPanel();
    
 // speaker front panel

 color(speaker_panel_color,1.0)
  translate([side_panel,front_panel+panel_thickness-(explode_horz),panel_thickness])
   rotate([90,0,0])
    linear_extrude(height=panel_thickness,center=false)
     SpeakerFrontPanel();

 color(speaker_color,1.0)
  translate([side_panel+main_speaker_side_offs,front_panel+panel_thickness-(explode_horz),panel_thickness+fspkpan_height_full-main_speaker_top_offs])
   rotate([-90,0,0])
    MainSpeaker();

 color(speaker_color,1.0)
  translate([side_panel+twit_speaker_side_offs,front_panel+panel_thickness-(explode_horz),panel_thickness+twit_speaker_top_offs])
   rotate([-90,-90,0])
    TwitSpeaker();
    
 color(speaker_color,1.0)
  translate([(side_panel+frame_width)-twit_speaker_height-twit_speaker_side_offs,front_panel+panel_thickness-(explode_horz),panel_thickness+twit_speaker_top_offs])
   rotate([-90,-90,0])
    TwitSpeaker();

 // side speaker panels

 translate([sidespk_left_x,sidespk_left_y,panel_thickness])
  rotate([90,0,frame_pl30a-180])
   union() {
    color(speaker_panel_color,1.0)
     linear_extrude(height=panel_thickness,center=false)
      SpeakerSidePanel(sidespk_size);
    color(speaker_color,1.0)
     translate([main_speaker_spaces,side_speaker_top_offs,0])
      mirror([0,0,1])
       MainSpeaker();
  };

 translate([sidespk_right_x,sidespk_right_y,panel_thickness])
  rotate([90,0,frame_pr30a-180])
   union() {
    color(speaker_panel_color,1.0)
     linear_extrude(height=panel_thickness,center=false)
      SpeakerSidePanel(sidespk_size);
    color(speaker_color,1.0)
     translate([main_speaker_spaces,side_speaker_top_offs,panel_thickness])
      MainSpeaker();
  };

 // socket panel
  
 color(inner_side_color,1.0)
  translate([side_panel+((frame_width-socket_panel_size)/2),frame_height+front_panel+panel_thickness+explode_horz,panel_thickness])
   rotate([90,0,0])
    linear_extrude(height=panel_thickness,center=false)
     SocketPanel();

 color(outer_side_color,1.0)
  translate([side_panel+((frame_width-socket_panel_size)/2)+panel_thickness,frame_height+front_panel+(panel_thickness*2)+(explode_horz*2),0])
   rotate([90,0,0])
    linear_extrude(height=panel_thickness,center=false)
     SocketFrame();
 
 // horn panels

 color(horn_panel_color,1.0)
  translate([horn_panel_left_x,horn_panel_y,panel_thickness])
   rotate([90,0,180-horn_panel_angle])
    linear_extrude(height=panel_thickness,center=false)
     mirror([1,0,0])
      HornPanel();

 color(horn_panel_color,1.0)
  translate([horn_panel_right_x,horn_panel_y,panel_thickness])
   rotate([90,0,horn_panel_angle+180])
    linear_extrude(height=panel_thickness,center=false)
     HornPanel();
  
 // face panel

 if (!no_fpanels) {
  
  color(decor_panel_color,1.0)
   translate([side_panel,front_panel-(explode_horz*2)-face_cover_texttile,panel_thickness])
    rotate([90,0,0])
     linear_extrude(height=face_cover_thickness,center=false)
      FaceCover();

  color(decor_panel_color,1.0)
   translate([panel_thickness-face_cover_thickness-(explode_horz*2)-face_cover_texttile,front_indent+front_panel,panel_thickness])
    rotate([90,0,90])
     linear_extrude(height=face_cover_thickness,center=false)
      SideCover(box_height-front_indent-rear_indent-front_panel+rear_side_correct,0);

  color(decor_panel_color,1.0)
   translate([box_width-panel_thickness+(explode_horz*2)+face_cover_texttile,front_indent+front_panel,panel_thickness])
    rotate([90,0,90])
     linear_extrude(height=face_cover_thickness,center=false)
      SideCover(box_height-front_indent-rear_indent-front_panel+rear_side_correct,0);

  color(decor_panel_color,1.0)
   translate([side_panel,box_height-panel_thickness+face_cover_thickness+(explode_horz*2)+face_cover_texttile,panel_thickness])
    rotate([90,0,0])
     linear_extrude(height=face_cover_thickness,center=false)
      SideCover((box_width-socket_panel_size)/2,-10);

  color(decor_panel_color,1.0)
   translate([box_width-((box_width-socket_panel_size)/2)-side_panel,box_height-panel_thickness+face_cover_thickness+(explode_horz*2)+face_cover_texttile,panel_thickness])
    rotate([90,0,0])
     linear_extrude(height=face_cover_thickness,center=false)
      SideCover((box_width-socket_panel_size)/2,10);

  translate([fspkpan_height_full+((box_width-fspkpan_height_full)/2),panel_thickness-face_cover_thickness-face_cover_texttile-(explode_horz*3),panel_thickness])
   rotate([0,0,180])
    TriangleDecor(fspkpan_height_full,false);

  translate([panel_thickness-face_cover_thickness-face_cover_texttile-(explode_horz*3),box_height-rear_indent+rear_side_correct,panel_thickness])
   rotate([0,-90,90])
    TriangleDecor(box_height-rear_indent-front_indent-front_panel+rear_side_correct,true);
    
  translate([box_width-(panel_thickness-face_cover_thickness-face_cover_texttile-(explode_horz*3)),box_height-rear_indent+rear_side_correct,fspkpan_height_full+panel_thickness])
   rotate([90,90,0])
    TriangleDecor(box_height-rear_indent-front_indent-front_panel+rear_side_correct,true);

 };


} else {
 
 obj_indent=15;
 
 if (inner2d) {

  p00x=obj_indent;
  p00y=obj_indent;
 
  translate([p00x,p00y,0]) InnerPanel();
  
  p01x=p00x+frame_width+obj_indent;
  
  translate([p01x,p00y,0]) InnerPanel();

  p02y=p00y+frame_height+obj_indent;

  translate([p00x,p02y,0]) SpeakerFrontPanel();

  translate([p01x,p02y,0]) SpeakerSidePanel(sidespk_size);
  
  p03x=p01x+sidespk_size+obj_indent;
  
  translate([p03x,p02y,0]) SpeakerSidePanel(sidespk_size);
  
  p04y=p02y+fspkpan_height_full+obj_indent;

  translate([p00x,p04y,0]) HornPanel();
  
  p05x=p00x+horn_panel_width+obj_indent;
  
  translate([p05x,p04y,0]) HornPanel();
  
  p06x=p05x+horn_panel_width+obj_indent;
  
  translate([p06x,p04y,0]) InnerSidePanel(front_indent);
  
  p07y=p04y+front_indent+obj_indent;

  translate([p06x,p07y,0]) InnerSidePanel(front_indent);
  
  p08x=p06x+fspkpan_height+(panel_thickness*4)+obj_indent;
    
  translate([p08x,p04y,0]) InnerSidePanel(rear_indent-rear_side_correct);

  translate([p08x,p07y,0]) InnerSidePanel(rear_indent-rear_side_correct);
  
 } else if (decor2d) {

  p00x=obj_indent;
  p00y=obj_indent;
 
  translate([p00x,p00y,0]) FaceCover();
  
  p01y=p00y+fspkpan_height_full+obj_indent;
  
  translate([p00x,p01y,0]) SideCover(box_height-front_indent-rear_indent-front_panel+rear_side_correct,0);

  p02x=p00x+box_height-front_indent-rear_indent-front_panel+rear_side_correct+obj_indent;

  translate([p02x,p01y,0]) SideCover(box_height-front_indent-rear_indent-front_panel+rear_side_correct,0);
  
  p03x=p00x+frame_width+obj_indent;

  translate([p03x,p00y,0]) SideCover((box_width-socket_panel_size)/2,-10);
  
  p04x=p02x+box_height-front_indent-rear_indent-front_panel+rear_side_correct+obj_indent;

  translate([p04x,p01y,0]) SideCover((box_width-socket_panel_size)/2,10);

 } else {
  
  p00x=obj_indent;
  p00y=obj_indent;
 
  translate([p00x,p00y,0]) CoverPanel();
  
  p01x=p00x+box_width+obj_indent;

  translate([p01x,p00y,0]) CoverPanel();
  
  p02y=p00y+box_height+obj_indent;

  translate([p00x,p02y,0]) OuterSidePanel(speaker_panel+front_panel+front_indent-panel_thickness,front_panel+speaker_panel);

  p03x=p00x+fspkpan_height_full+(panel_thickness*2)+obj_indent;
  
  translate([p03x,p02y,0]) OuterSidePanel(speaker_panel+front_panel+front_indent-panel_thickness,front_panel+speaker_panel);

  p04x=p03x+fspkpan_height_full+(panel_thickness*2)+obj_indent;
  
  translate([p04x,p02y,0]) OuterSidePanel(speaker_panel+front_panel+rear_indent-(panel_thickness*2)-rear_side_correct,rear_panel);

  p05x=p04x+fspkpan_height_full+(panel_thickness*2)+obj_indent;

  translate([p05x,p02y,0]) OuterSidePanel(speaker_panel+front_panel+rear_indent-(panel_thickness*2)-rear_side_correct,rear_panel);
  
  p07x=p01x+box_width+obj_indent;

  translate([p07x,p00y,0]) SocketPanel();
  
  p08y=p00y+fspkpan_height+(panel_thickness*2)+obj_indent;
  
  translate([p07x,p08y,0]) SocketFrame();
  
  p09y=p02y+speaker_panel+front_panel+front_indent-panel_thickness+obj_indent;
  
  translate([p00x,p09y,0]) TrianglePart();

  translate([p00x,p09y+obj_indent+7,0]) TrianglePart();

  translate([p00x+((fspkpan_height_full+obj_indent)*1),p09y,0]) TrianglePart();

  translate([p00x+((fspkpan_height_full+obj_indent)*1),p09y+obj_indent+7,0]) TrianglePart();

  translate([p00x+((fspkpan_height_full+obj_indent)*2),p09y,0]) TrianglePart();

  translate([p00x+((fspkpan_height_full+obj_indent)*2),p09y+obj_indent+7,0]) TrianglePart();

  translate([p00x+((fspkpan_height_full+obj_indent)*3),p09y,0]) TrianglePart();

  translate([p00x+((fspkpan_height_full+obj_indent)*3),p09y+obj_indent+7,0]) TrianglePart();

 };
 
};


// *** modules ***


module TriangleDecor(size,cmount) {
 
 color(decor_triangle_color,1.0)
  linear_extrude(height=panel_thickness,center=false)
   TrianglePart();

 color(decor_triangle_color,1.0)
  translate([0,0,size-panel_thickness])
   linear_extrude(height=panel_thickness,center=false)
    TrianglePart();

 if (cmount)
  color(decor_triangle_color,1.0)
   translate([0,0,(size-panel_thickness)/2])
    linear_extrude(height=panel_thickness,center=false)
     TrianglePart();
 
 color(decor_shaft_color,1.0)
  translate([fspkpan_height_full/2,face_triangle_hole,0])
   linear_extrude(height=size,center=false)
    circle(d=face_triangle_hole,$fn=screw_hole_fn);

 color(decor_shaft_color,1.0)
  translate([(fspkpan_height_full/2)-face_triangle_spacing,face_triangle_hole-1,0])
   linear_extrude(height=size,center=false)
    circle(d=face_triangle_hole,$fn=screw_hole_fn);
 
 color(decor_shaft_color,1.0)
  translate([(fspkpan_height_full/2)+face_triangle_spacing,face_triangle_hole-1,0])
   linear_extrude(height=size,center=false)
    circle(d=face_triangle_hole,$fn=screw_hole_fn);
 
};

module TrianglePart() {
 
 radius=1;
 triangle_width=fspkpan_height_full;
 triangle_height=panel_thickness-face_cover_thickness-1;
 
 difference() {
  
  offset(r=radius,$fn=screw_hole_fn)
  polygon([[radius,radius],[triangle_width-radius,radius],[(fspkpan_height_full-radius)/2,triangle_height-radius]]);

  translate([(fspkpan_height_full)/2,face_triangle_hole,0]) circle(d=face_triangle_hole,$fn=screw_hole_fn);
  translate([(fspkpan_height_full/2)-face_triangle_spacing,face_triangle_hole-1,0]) circle(d=face_triangle_hole,$fn=screw_hole_fn);
  translate([(fspkpan_height_full/2)+face_triangle_spacing,face_triangle_hole-1,0]) circle(d=face_triangle_hole,$fn=screw_hole_fn);

 };
 
};

module SideCover(size,coffs) {
 
 circle_width=size-(panel_thickness*2)+1;
 circle_height=fspkpan_height_full-(panel_thickness*2)+1;
 circle_border=6;
 
 vertl_offsx1=((size/2)-coffs)/2;
 vertl_offsx2=((size/2)+coffs)/2;

 square_offsx=(panel_thickness*2);
 square_offsy=(panel_thickness*2);
 square_border=3;
 
 union() {
  
  difference() {
   
   union() {
    
    difference() {
     
     square([size,fspkpan_height_full]);
     translate([panel_thickness,panel_thickness,0]) square([size-(panel_thickness*2),fspkpan_height_full-(panel_thickness*2)]);
     
    };
    
    translate([size/2,fspkpan_height_full/2,0]) resize([circle_width,circle_height,0]) circle(d=circle_height,$fn=speakers_hole_fn);
    
   };
   
   translate([size/2,fspkpan_height_full/2,0]) resize([circle_width-circle_border,circle_height-circle_border,0]) circle(d=circle_height-circle_border,$fn=speakers_hole_fn);
  
   SideMountHoles(size);
   
  };

  translate([square_offsx,square_offsy,0]) square([size-(square_offsx*2),square_border]);
  translate([square_offsx,fspkpan_height_full-square_offsy-square_border,0]) square([size-(square_offsx*2),square_border]);
  translate([square_offsx,square_offsy,0]) square([square_border,fspkpan_height_full-(square_offsy*2)]);
  translate([size-square_offsx-square_border,square_offsy,0]) square([square_border,fspkpan_height_full-(square_offsy*2)]);
  translate([vertl_offsx1+square_border,0,0]) square([square_border,fspkpan_height_full]);
  translate([vertl_offsx1-square_border,0,0]) square([square_border,fspkpan_height_full]);
  translate([size-vertl_offsx2,0,0]) square([square_border,fspkpan_height_full]);
  translate([size-vertl_offsx2-(square_border*2),0,0]) square([square_border,fspkpan_height_full]);
  translate([(size-panel_thickness)/2-coffs,0,0]) square([panel_thickness,fspkpan_height_full]);
  
 };

};


module FaceCover() {

 main_speaker_cor1=8;
 main_speaker_cor2=14;
 
 twit_speaker_cor1=3;
 twit_speaker_cor2=9;
 
 difference() {
  
  union() {
   
   difference() {
    
    square([frame_width,fspkpan_height_full]);
    translate([panel_thickness,panel_thickness,0]) square([frame_width-(panel_thickness*2),fspkpan_height_full-(panel_thickness*2)]);
    
   };
   
   translate([373.8,-94.8,0]) resize([frame_width-10,fspkpan_height_full-10,0]) 
    rotate([0,0,90]) import("./door1.dxf", convexity=5);
   translate([frame_width/2,fspkpan_height_full/2,0])
    resize([main_speaker_width-main_speaker_cor1,main_speaker_height-main_speaker_cor1,0])
     circle(d=fspkpan_height-main_speaker_cor1,$fn=speakers_hole_fn);
   translate([(frame_width-main_speaker_width)/4,fspkpan_height_full/2,0])
    resize([twit_speaker_height-twit_speaker_cor1,twit_speaker_width-twit_speaker_cor1,0])
     circle(d=twit_speaker_width-twit_speaker_cor1,$fn=speakers_hole_fn);
   translate([frame_width-((frame_width-main_speaker_width)/4),fspkpan_height_full/2,0])
    resize([twit_speaker_height-twit_speaker_cor1,twit_speaker_width-twit_speaker_cor1,0])
     circle(d=twit_speaker_width-twit_speaker_cor1,$fn=speakers_hole_fn);
   
  };
  
  translate([frame_width/2,fspkpan_height_full/2,0])
   resize([main_speaker_width-main_speaker_cor2,main_speaker_height-main_speaker_cor2,0])
    circle(d=fspkpan_height-main_speaker_cor2,$fn=speakers_hole_fn);
  translate([(frame_width-main_speaker_width)/4,fspkpan_height_full/2,0])
   resize([twit_speaker_height-twit_speaker_cor2,twit_speaker_width-twit_speaker_cor2,0])
    circle(d=twit_speaker_width-twit_speaker_cor2,$fn=speakers_hole_fn);
  translate([frame_width-((frame_width-main_speaker_width)/4),fspkpan_height_full/2,0])
   resize([twit_speaker_height-twit_speaker_cor2,twit_speaker_width-twit_speaker_cor2,0])
    circle(d=twit_speaker_width-twit_speaker_cor2,$fn=speakers_hole_fn);
  
  FrontMountHoles();
  
 };
    
}

module SocketPanel() {

 difference() {
 
  polygon(points=[
   [0,0],
   [socket_panel_size,0],
   [socket_panel_size,fspkpan_height_full],
   [0,fspkpan_height_full]
  ]);

  translate([panel_thickness/2,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_thickness/2,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);  
  translate([socket_panel_size-(panel_thickness/2),fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([socket_panel_size-(panel_thickness/2),panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  
 };
 
};

module SocketFrame() {

 panel_width=socket_panel_size-(panel_thickness*2);
 panel_height=fspkpan_height_full+(panel_thickness*2);
 side_space=panel_thickness/2;

 difference() {
 
  polygon(points=[
   [0,0],
   [panel_width,0],
   [panel_width,panel_height],
   [0,panel_height]
  ]);

  polygon(points=[
   [side_space,panel_thickness],
   [panel_width-side_space,panel_thickness],
   [panel_width-side_space,panel_height-panel_thickness],
   [side_space,panel_height-panel_thickness]
  ]);

  translate([panel_width/2,(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_width/2,panel_height-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  
 };
 
};


module HornPanel() {
 
 pin_length=panel_thickness;

 union() {
  
  polygon(points=[
   [0,pin_length],
   [horn_panel_width,pin_length],
   [horn_panel_width,pin_length+fspkpan_height],
   [0,pin_length+fspkpan_height]
  ]);
  
  translate([panel_thickness,0]) square(size=pin_length);
  translate([horn_panel_width-panel_thickness-pin_length,0]) square(size=pin_length);
  translate([panel_thickness,pin_length+fspkpan_height]) square(size=pin_length);
  translate([horn_panel_width-panel_thickness-pin_length,pin_length+fspkpan_height]) square(size=pin_length);
  
 };
 
};

module SpeakerSidePanel(width) {
 
 difference() {
  
  polygon(points=[
   [0,0],
   [width,0],
   [width,fspkpan_height_full],
   [0,fspkpan_height_full]
  ]);
  
  translate([main_speaker_spaces,main_speaker_top_offs,0])
   MainSpeakerHoles(true,true);
  
  translate([panel_thickness/2,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([width/2,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);  
  translate([width-(panel_thickness/2),panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([width-(panel_thickness/2),fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([width/2,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_thickness/2,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  
 };
  
};

module SpeakerFrontPanel() {
 
 difference() {
  
  polygon(points=[
   [0,0],
   [frame_width,0],
   [frame_width,fspkpan_height_full],
   [0,fspkpan_height_full]
  ]);
  
  translate([main_speaker_side_offs,main_speaker_top_offs,0])
   MainSpeakerHoles(true,true);
  
  translate([twit_speaker_height+twit_speaker_side_offs,twit_speaker_top_offs,0])
   rotate([0,0,90])
    TwitSpeakerHoles(true,true);

  translate([frame_width-twit_speaker_side_offs,twit_speaker_top_offs,0])
   rotate([0,0,90])
    TwitSpeakerHoles(true,true);

  FrontMountHoles();

 };
  
};

module CoverPanel() {
 
 difference() {
  
  polygon(points=[
   [0,0],
   [box_width,0],
   [box_width,box_height],
   [0,box_height]
  ]);
  
  translate([0,front_panel+speaker_panel+panel_thickness,0]) square([side_panel,panel_thickness]);
  translate([box_width-side_panel,front_panel+speaker_panel+panel_thickness,0]) square([side_panel,panel_thickness]);
  translate([0,box_height-rear_panel-(panel_thickness*2),0]) square([side_panel,panel_thickness]);
  translate([box_width-side_panel,box_height-rear_panel-(panel_thickness*2),0]) square([side_panel,panel_thickness]);
  
  translate([side_panel,front_panel+speaker_panel,0]) square(size=panel_thickness);
  translate([side_panel,front_panel+speaker_panel+side_pin_step+panel_thickness,0]) square(size=panel_thickness);
  translate([frame_width+(side_panel-panel_thickness),front_panel+speaker_panel,0]) square(size=panel_thickness);
  translate([frame_width+(side_panel-panel_thickness),front_panel+speaker_panel+side_pin_step+panel_thickness,0]) square(size=panel_thickness);

  translate([side_panel,box_height-rear_panel-panel_thickness,0]) square(size=panel_thickness);
  translate([side_panel,box_height-rear_panel-(panel_thickness*2)-side_pin_step,0]) square(size=panel_thickness);
  translate([frame_width+(side_panel-panel_thickness),box_height-rear_panel-panel_thickness,0]) square(size=panel_thickness);
  translate([frame_width+(side_panel-panel_thickness),box_height-rear_panel-(panel_thickness*2)-side_pin_step,0]) square(size=panel_thickness);

  translate([(box_width-(socket_panel_size-(panel_thickness*2)))/2,box_height-panel_thickness,0]) square([socket_panel_size-(panel_thickness*2),panel_thickness]);


 };
 
};

module OuterSidePanel(size, pinofs) {
 
 panel_width=fspkpan_height+(panel_thickness*2);
 pin_length=panel_thickness;

 union() {

  polygon(points=[
   [pin_length,0],
   [panel_width+pin_length,0],
   [panel_width+pin_length,size],
   [pin_length,size]
  ]);
  
  translate([0,pinofs+panel_thickness,0]) square(size=pin_length);
  translate([panel_width+pin_length,pinofs+panel_thickness,0]) square(size=pin_length);

 };

};

module InnerSidePanel(size) {
 
 panel_width=fspkpan_height;
 pin_length=panel_thickness*2;

 union() {

  polygon(points=[
   [pin_length,0],
   [panel_width+pin_length,0],
   [panel_width+pin_length,size],
   [pin_length,size]
  ]);
  
  square([pin_length,panel_thickness]);
  translate([0,side_pin_step+panel_thickness,0]) square([pin_length,panel_thickness]);
  translate([panel_width+pin_length,0,0]) square([pin_length,panel_thickness]);
  translate([panel_width+pin_length,side_pin_step+panel_thickness,0]) square([pin_length,panel_thickness]);

 };

};

module InnerPanel() {
 
 difference() {
  
  polygon(points=[
   [0,0],
   [frame_width,0],
   [frame_pr10x,frame_pr10y],
   [frame_pr20x,frame_pr20y],
   [frame_pr21x,frame_pr21y],
   [frame_pr29x,frame_pr29y],
   [frame_pr30x,frame_pr30y],
   [frame_width,frame_height],
   [0,frame_height],
   [frame_pl30x,frame_pl30y],
   [frame_pl29x,frame_pl29y],
   [frame_pl21x,frame_pl21y],
   [frame_pl20x,frame_pl20y],
   [frame_pl10x,frame_pl10y]
  ]);
  
  square(size=panel_thickness);
  translate([0,side_pin_step+panel_thickness,0]) square(size=panel_thickness);
  
  translate([frame_width-panel_thickness,0,0]) square(size=panel_thickness);
  translate([frame_width-panel_thickness,side_pin_step+panel_thickness,0]) square(size=panel_thickness);

  translate([0,frame_height-panel_thickness,0]) square(size=panel_thickness);
  translate([0,frame_height-panel_thickness-side_pin_step-panel_thickness,0]) square(size=panel_thickness);

  translate([frame_width-panel_thickness,frame_height-panel_thickness,0]) square(size=panel_thickness);
  translate([frame_width-panel_thickness,frame_height-panel_thickness-side_pin_step-panel_thickness,0]) square(size=panel_thickness);

  translate([frame_horn_panel_left_x1,frame_horn_panel_y1,0]) rotate([0,0,90-horn_panel_angle]) mirror([0,1,0]) square(size=panel_thickness);
  translate([frame_horn_panel_right_x1,frame_horn_panel_y1,0]) rotate([0,0,horn_panel_angle-90]) mirror([1,1,0]) square(size=panel_thickness);
  translate([frame_horn_panel_left_x2,frame_horn_panel_y2,0]) rotate([0,0,90-horn_panel_angle]) mirror([0,1,0]) square(size=panel_thickness);  
  translate([frame_horn_panel_right_x2,frame_horn_panel_y2,0]) rotate([0,0,horn_panel_angle-90]) mirror([1,1,0]) square(size=panel_thickness);

  translate([(frame_width-socket_panel_size)/2,frame_height-panel_thickness,0]) square([socket_panel_size,panel_thickness]);

 };

};


// *** mount holes ***


module SideMountHoles(size) {
  translate([panel_thickness/2,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([size-(panel_thickness/2),panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([size-(panel_thickness/2),fspkpan_height_full/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([size-(panel_thickness/2),fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_thickness/2,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_thickness/2,fspkpan_height_full/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
};

module FrontMountHoles() {
  translate([panel_thickness/2,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([((frame_width-fspkpan_height_full)/2)-panel_thickness,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([frame_width-((frame_width-fspkpan_height_full)/2)+panel_thickness,panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([frame_width-(panel_thickness/2),panel_thickness/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([frame_width-(panel_thickness/2),fspkpan_height_full/2,0]) circle(d=screw_hole,$fn=screw_hole_fn);  
  translate([frame_width-(panel_thickness/2),fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([frame_width-((frame_width-fspkpan_height_full)/2)+panel_thickness,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);  
  translate([((frame_width-fspkpan_height_full)/2)-panel_thickness,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_thickness/2,fspkpan_height_full-(panel_thickness/2),0]) circle(d=screw_hole,$fn=screw_hole_fn);
  translate([panel_thickness/2,fspkpan_height_full/2,0]) circle(d=screw_hole,$fn=screw_hole_fn); 
};


// *** speakers ***


module MainSpeakerHoles(screw,front) {
 
  sh0x=(main_speaker_width-main_speaker_fwidth)/2;
  sh0y=(main_speaker_height-main_speaker_fheight)/2;
  sh1x=sh0x+main_speaker_fwidth;
  sh1y=sh0y;
  sh2x=sh1x;
  sh2y=sh1y+main_speaker_fheight;
  sh3x=sh0x;
  sh3y=sh2y;
 
  if (screw) {
   translate([sh0x,sh0y,0]) circle(d=main_speaker_screw,$fn=screw_hole_fn);
   translate([sh1x,sh1y,0]) circle(d=main_speaker_screw,$fn=screw_hole_fn);
   translate([sh2x,sh2y,0]) circle(d=main_speaker_screw,$fn=screw_hole_fn);
   translate([sh3x,sh3y,0]) circle(d=main_speaker_screw,$fn=screw_hole_fn);
  };
  
  if (front) {
   translate([main_speaker_width/2,main_speaker_height/2,0]) resize([main_speaker_cwidth,main_speaker_cheight,0]) circle(d=main_speaker_cheight,$fn=speakers_hole_fn);   
  };
 
};

module TwitSpeakerHoles(front,screw) {

  sh0x=(twit_speaker_width-twit_speaker_fwidth)/2;
  sh0y=(twit_speaker_height-twit_speaker_fheight)/2;
  sh1x=sh0x+twit_speaker_fwidth;
  sh1y=sh0y;
  sh2x=sh1x;
  sh2y=sh1y+twit_speaker_fheight;
  sh3x=sh0x;
  sh3y=sh2y;
 
  if (screw) {
   translate([sh0x,sh0y,0]) circle(d=twit_speaker_screw,$fn=screw_hole_fn);
   translate([sh1x,sh1y,0]) circle(d=twit_speaker_screw,$fn=screw_hole_fn);
   translate([sh2x,sh2y,0]) circle(d=twit_speaker_screw,$fn=screw_hole_fn);
   translate([sh3x,sh3y,0]) circle(d=twit_speaker_screw,$fn=screw_hole_fn);
  };
  
  if (front) {
   translate([twit_speaker_width/2,twit_speaker_height/2,0]) resize([twit_speaker_cwidth,twit_speaker_cheight,0]) circle(d=twit_speaker_cheight,$fn=speakers_hole_fn);   
  };

}

module MainSpeaker() {

 union() {

  linear_extrude(height=main_speaker_size1,center=false) {
   difference() {
    square([main_speaker_width,main_speaker_height]);
    MainSpeakerHoles(true,true);
   };
  };
    
  spp0s=main_speaker_size4*0.65;
  spp0w=main_speaker_fwidth*0.97;
  spp0h=main_speaker_fheight*0.97;
  spp1x=spp0w;
  spp2x=spp1x;
  spp2y=spp0h;
  spp3y=spp2y;
  spp4x=(spp0w-spp0s)/2;
  spp4y=(spp0h-spp0s)/2;
  spp5x=spp4x+spp0s;
  spp5y=spp4y;
  spp6x=spp5x;
  spp6y=spp4y+spp0s;
  spp7x=spp4x;
  spp7y=spp6y;
  
  translate([(main_speaker_width-spp0w)/2,(main_speaker_height-spp0h)/2,main_speaker_size1]) 
   polyhedron([
    [0,0,0],
    [spp1x,0,0],
    [spp2x,spp2y,0],
    [0,spp3y,0],
    [spp4x,spp4y,main_speaker_size2],
    [spp5x,spp5y,main_speaker_size2],
    [spp6x,spp6y,main_speaker_size2],
    [spp7x,spp7y,main_speaker_size2]],
    [[0,1,2,3],
    [4,5,1,0],
    [7,6,5,4],
    [5,6,2,1],
    [6,7,3,2],
    [7,4,0,3]]
   );
   
  translate([main_speaker_width/2,main_speaker_height/2,main_speaker_size1+main_speaker_size2])
   cylinder(main_speaker_size3,d1=main_speaker_size4,d2=main_speaker_size4);
 
 }; 
 
};

module TwitSpeaker(fron,screw) {
 
  linear_extrude(height=twit_speaker_size1,center=false) {
   difference() {
    square([twit_speaker_width,twit_speaker_height]);
    TwitSpeakerHoles(true,true);
   };
  };
    
  spp0s=twit_speaker_size4*0.65;
  spp0w=twit_speaker_fwidth*0.97;
  spp0h=twit_speaker_fheight*0.97;
  spp1x=spp0w;
  spp2x=spp1x;
  spp2y=spp0h;
  spp3y=spp2y;
  spp4x=(spp0w-spp0s)/2;
  spp4y=(spp0h-spp0s)/2;
  spp5x=spp4x+spp0s;
  spp5y=spp4y;
  spp6x=spp5x;
  spp6y=spp4y+spp0s;
  spp7x=spp4x;
  spp7y=spp6y;
  
  translate([(twit_speaker_width-spp0w)/2,(twit_speaker_height-spp0h)/2,twit_speaker_size1]) 
   polyhedron([
    [0,0,0],
    [spp1x,0,0],
    [spp2x,spp2y,0],
    [0,spp3y,0],
    [spp4x,spp4y,twit_speaker_size2],
    [spp5x,spp5y,twit_speaker_size2],
    [spp6x,spp6y,twit_speaker_size2],
    [spp7x,spp7y,twit_speaker_size2]],
    [[0,1,2,3],
    [4,5,1,0],
    [7,6,5,4],
    [5,6,2,1],
    [6,7,3,2],
    [7,4,0,3]]
   );
   
  translate([twit_speaker_width/2,twit_speaker_height/2,twit_speaker_size1+twit_speaker_size2])
   cylinder(twit_speaker_size3,d1=twit_speaker_size4,d2=twit_speaker_size4);
 
};





