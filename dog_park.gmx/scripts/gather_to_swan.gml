/// get_path_to_player()
if (instance_exists(obj_swan)){
    var xx = (obj_swan.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2; 
    var yy = (obj_swan.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;
    
    if (mp_grid_path(level.grid_path, path, x, y, xx, yy, true)){
        path_start(path, 1.5, path_action_stop, false);
    }       
}


