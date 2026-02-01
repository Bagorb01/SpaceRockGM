var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

if (h != 0 || v != 0) {
    var target = point_direction(0, 0, h, v);
    direction = target;
    speed = 4;

    // turn speed in degrees
    var turn = 10;

    // shortest difference from source to destination
    var d = angle_difference(target, image_angle);

    // rotate toward target by at most `turn` degrees
    image_angle += clamp(d, -turn, turn);
} else {
    speed = 0;
}

move_wrap(true, true, 0) // prevents player from getting lost off screen

if keyboard_check(vk_space) 
{
	instance_create_layer(x, y, "Instances", obj_bullet);
}
