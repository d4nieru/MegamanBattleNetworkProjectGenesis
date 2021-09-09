StartX = 140
StartY = 91

//Panel Scan

//Row1
if instance_position(StartX,StartY,obj_panel_blue).sprite_index = spr_panel_blue && AreaGrab{
    with(instance_create(StartX,-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX,-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX,-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false
    exit;
}
if instance_position(StartX,StartY+24,obj_panel_blue).sprite_index = spr_panel_blue{
    with(instance_create(StartX,-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX,-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX,-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false    
    exit;
}
if instance_position(StartX,StartY+24,obj_panel_blue).sprite_index = spr_panel_blue{
    with(instance_create(StartX,-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX,-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX,-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false
    exit;
}

//Row2
if instance_position(StartX+40,StartY,obj_panel_blue).sprite_index = spr_panel_blue && AreaGrab{
    with(instance_create(StartX+40,-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX+40,-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX+40,-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false
    exit;
}
if instance_position(StartX+40,StartY+24,obj_panel_blue).sprite_index = spr_panel_blue{
    with(instance_create(StartX+40,-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX+40,-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX+40,-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false    
    exit;
}
if instance_position(StartX+40,StartY+24,obj_panel_blue).sprite_index = spr_panel_blue{
    with(instance_create(StartX+40,-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX+40,-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX+40,-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false
    exit;
}

//Row3
if instance_position(StartX+(40*2),StartY,obj_panel_blue).sprite_index = spr_panel_blue && AreaGrab{
    with(instance_create(StartX+(40*2),-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX+(40*2),-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX+(40*2),-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false
    exit;
}
if instance_position(StartX+(40*2),StartY+24,obj_panel_blue).sprite_index = spr_panel_blue{
    with(instance_create(StartX+(40*2),-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX+(40*2),-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX+(40*2),-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false    
    exit;
}
if instance_position(StartX+(40*2),StartY+24,obj_panel_blue).sprite_index = spr_panel_blue{
    with(instance_create(StartX+(40*2),-90,obj_areagrab_effect)) {PlaceMentY = 91-4}
    with(instance_create(StartX+(40*2),-70,obj_areagrab_effect)) {PlaceMentY = (91+24)-4}
    with(instance_create(StartX+(40*2),-50,obj_areagrab_effect)) {PlaceMentY = (91+48)-4}
    AreaGrab = false
    exit;
}

