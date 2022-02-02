/// @description Insert description here
// You can write your code in this editor

//if i am pressing on right key, right = 1, otherwise right = 0
right = keyboard_check(vk_right);

left = keyboard_check(vk_left);

jump = keyboard_check(vk_space);

xDirection = right-left;

xVector = xSpeed * xDirection;
yVector = yVector + grv;

//check to see if we move  xVector pixels (4).
//does this collide with a wall?
//If it does collide, do not move all 4 pixels.

if place_meeting(x+ xVector, y, Owall)
	{
		//as long as the next pixels is empty, move there
		//! means "not"
		while (!place_meeting(x+xDirection, y, Owall))
		{
			
			
			
			//if yVector is posiitve then sign(yVecotr) = 1
			//if yVector is negitive then sign(yVector) = -1
			x = x+xDirection;
		}
		//make sure xVecotr won't move us 
		xVector = 0;
 
	}

x= x + xVector;

if place_meeting(x, y+ yVector, Owall)
	{
		//as long as the next pixels is empty, move there
		//! means "not"
		while (!place_meeting(x, y +sign(yVector), Owall))
		{
			
			
			
			//if yVector is posiitve then sign(yVecotr) = 1
			//if yVector is negitive then sign(yVector) = -1
			y=y+sign(yVector); 
		}
		//make sure xVecotr won't move us 
		yVector = 0;
 
	}
y = y + yVector;

// to jump we need to check 2 things
//first check to see if the pixels below us is ground
//second, check to see if the jump button was pressed

if (place_meeting(x, y+1, Owall) and (jump))
{
		yVector = jumpForce;
} 

if (place_meeting(x, y, Ocoin))
{
	instance_destroy(Ocoin)
}

//die in a pit
if(y >= room_height
{
	room_restart();
}