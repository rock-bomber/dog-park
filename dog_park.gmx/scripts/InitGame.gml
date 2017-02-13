/// Game Resolution
//used in OBJECTS: camera, transition_control
global.gameWidth = 320;
global.gameHeight = 240;
global.zoom = 4;
surface_resize(application_surface, global.gameWidth, global.gameHeight);
display_reset(0, false);
