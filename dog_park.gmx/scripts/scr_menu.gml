// mpos "menu position" where the cursor is
var mpos = 0;

switch (mpos){
    case 0:
    {
        room_goto_next();
        break;
    }
    case 1:
    {
        room_goto(rm_options);
        break;
    }
    case 2:
    {
        game_end();
        break;
    }   
        default: 
        break;     
}
