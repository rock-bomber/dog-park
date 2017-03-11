///draw_silhouette() 
// used in: obj_silhouette

surface_set_target(surface);

// Make the surface black
draw_clear(c_black);

// Draw the player white
d3d_set_fog(true, c_white, 0, 1);
    with (obj_player){
        draw_self();
    }
d3d_set_fog(false, c_white, 0, 0);    


// Draw the tree with black with alpha of .5
with(obj_tree1 || obj_tree2 || obj_tree3 || obj_tree4){
    draw_sprite_ext(spr_player, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, .5);
}

surface_reset_target();


/// Draw the surface
shader_set(sh_leave_gray);
draw_surface(surface, 0, 0);
shader_reset();
