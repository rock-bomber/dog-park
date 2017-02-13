/// menu_check();
// used in OBJECTS: obj_menu_start, obj_menu_exit, obj_menu_objects
image_speed = 0;


if (y = obj_menu_select.y){
    image_index = 1;
}
if (place_free(x, y)){
    image_index = 0;
}

// Check for mouse
if (position_meeting(mouse_x, mouse_y, self)){
    obj_menu_select.y = y;
}
