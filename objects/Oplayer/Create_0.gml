/// @description Define variables
// You can write your code in this editor

//global variables
global.coins = 0;
global.points = 0;

hp =5;
iFrames = false;
//how many pixels the player will move per frame
xSpeed = 4;

//what direction we are facing, 1 = right, -1 = left. 0 is not moving
xDirection = 0;

//multiply speed * direction
xVector = xSpeed * xDirection;

//gravity
grv = .45;
jumpForce = -10;
yVector = 0;

