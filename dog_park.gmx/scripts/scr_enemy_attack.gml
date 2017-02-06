///scr_enemy_attack()
state_text = 'attack';
var dis = point_distance(x, y, obj_player.x, obj_player.y);

if(dis > attack_range){
    //Chase
    state = scr_enemy_chase;
}
else{
    //attack
    if(alarm[0] == -1){
        alarm[0] = 30;
    }
}
