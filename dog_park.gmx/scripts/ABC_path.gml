/// ABC_path();

var dog_spd = choose( 1, 1.25, 1.5);
randomize();

/// get_path_to_player()
if (instance_exists(obj_A)){
    var xx = (obj_A.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2; 
    var yy = (obj_A.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;
    var xx2 = (obj_B.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2; 
    var yy2 = (obj_B.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;
    
    if (mp_grid_path(level.grid_path, path, x, y, xx, yy, true)){
        path_start(path, dog_spd, path_action_stop, false);
        
        }       
    }


