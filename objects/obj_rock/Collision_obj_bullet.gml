instance_destroy(other);

effect_create_above(ef_explosion, x, y, 1, c_white);
direction = irandom(359);

if (sprite_index == spr_rock_big) {
	obj_game.points += 100;
    for (var i = 0; i < 2; i++) {
        var r = instance_create_layer(x, y, layer, obj_rock);
        r.sprite_index = spr_rock_small;
        r.direction = irandom(359);
        r.speed = 4;

        // Offset so they don’t sit perfectly on top of each other
        r.x += lengthdir_x(8, r.direction);
        r.y += lengthdir_y(8, r.direction);
    }
	instance_destroy();
} else {
	instance_destroy()
	obj_game.points += 50;
}
