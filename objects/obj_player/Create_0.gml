function shoot()
{
	instance_create_layer(x, y, "Instances", obj_bullet);
}

function destroy()
{
	instance_destroy()
}

function respawn()
{
	instance_create_layer(x, y, "Instances", obj_player);
}