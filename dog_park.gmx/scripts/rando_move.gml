
var dog_spd = choose( 1, 1.25, 1.5);
randomize();
//if(global.bark = false){

/// get_path_to_player()
if (grid_place_meeting != WALL){
    var xx = motion_set(random(360), 1 + random(3))*CELL_WIDTH+CELL_WIDTH/2; 
    var yy = motion_set(random(360), 1 + random(3))*CELL_HEIGHT+CELL_HEIGHT/2;
    
    if (mp_grid_path(level.grid_path, path, x, y, xx, yy, true)){
        path_start(path, dog_spd, path_action_stop, false);
    }       
}
else{
path_end();
}
//}

