            var yy = 0
            var xx = 0           
            var ex = xx*CELL_WIDTH+CELL_WIDTH/2;
            var ey = yy*CELL_HEIGHT+CELL_HEIGHT/2;

 if(point_distance(ex, ex, obj_player.x, obj_player.y) > 80 && irandom(90) == 80){
    instance_create(ex, ey, obj_pom) ;
    }
 if(point_distance(ex, ex, obj_player.x, obj_player.y) > 80 && irandom(90) == 80){
    instance_create(ex, ey, obj_dach) ;
    }
 if(point_distance(ex, ex, obj_player.x, obj_player.y) > 80 && irandom(90) == 80){
     instance_create(ex, ey, obj_jf) ;
    }
