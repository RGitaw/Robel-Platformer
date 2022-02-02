/// @description Insert description here
// You can write your code in this editor

//check to see if we collided with the enemy head
if (y<= other.y -other.sprite_height*.9)
	{
		//if we did hit on the head, give points
		global.points +=100
		instance_destroy(other);
	}
	else
	{
		//we die
	PlayerHurt();
	}