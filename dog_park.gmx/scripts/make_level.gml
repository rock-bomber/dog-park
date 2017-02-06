//Draw the level using the grid
for (var yy = 0; yy < height; yy++){
    for (var xx = 0; xx < width; xx++){
        if (grid[# xx, yy] == FLOOR){
            // Draw the floor randomly?? // this isn't very optimized but OH WELL // f_odds "floor odds"
            // the lower the irandom(#), the higher the chance //
/////////////grass set 1 odds//
            if(irandom(20) == 20){
            tile_add(g1_1, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            } 
            else if(irandom(20) == 20){
            tile_add(g1_2, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            } 
            else if(irandom(20) == 20){
            tile_add(g1_3, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(20) == 20){
            tile_add(g1_4, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(20) == 20){
            tile_add(g1_5, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(20) == 20){
            tile_add(g1_6, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
/////////////grass set 2 odds//
            else if(irandom(40) == 30){
            tile_add(g2_1, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(40) == 20){
            tile_add(g2_2, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(40) == 10){
            tile_add(g2_3, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(40) == 40){
            tile_add(g2_4, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(40) == 25){
            tile_add(g2_5, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(40) == 15){
            tile_add(g2_6, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
/////////////grass set 3 odds//
            else if(irandom(15) == 15){
            tile_add(g3_1, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(15) == 15){
            tile_add(g3_2, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(15) == 15){
            tile_add(g3_3, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
/////////////dirt patch odds//
            else if(irandom(70) == 30){
            tile_add(g4_1, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(50) == 20){
            tile_add(g4_2, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(60) == 10){
            tile_add(g4_3, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(55) == 40){
            tile_add(g4_4, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(50) == 25){
            tile_add(g4_5, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
            else if(irandom(60) == 15){
            tile_add(g4_6, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
//////////// else blank tile
            else{
            tile_add(bg_floor, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx*CELL_WIDTH, yy*CELL_HEIGHT, 0);
            }
 ////////// ENEMIES /////////////  
                
            // Add some enemies // ex "enemy x" ey "enemy y" // To decrease amount of enemies, increase var odds
            var odds = 30;
            var ex = xx*CELL_WIDTH+CELL_WIDTH/2;
            var ey = yy*CELL_HEIGHT+CELL_HEIGHT/2;
            ////Following-type enemy////
            if(point_distance(ex, ex, obj_player.x, obj_player.y) > 80 && irandom(odds) == odds){
                instance_create(ex, ey, obj_enemy);
            }
            /////Still Enemy///////
            if(point_distance(ex, ex, obj_player.x, obj_player.y) > 80 && irandom(odds) == odds){
                instance_create(ex, ey, obj_enemy2);
            }
            ///Wandering Enemy??////
            //if(point_distance(ex, ex, obj_player.x, obj_player.y) > 80 && irandom(odds) == odds){
           //     instance_create(ex, ey, obj_enemy3);
           // }
        } else {
            mp_grid_add_cell(grid_path, xx, yy);
        }      
    }
}
