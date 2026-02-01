instance_destroy(other); // destroy bullet

effect_create_layer(layer, ef_explosion, x, y, 1, c_white);
direction = irandom(359);

if (sprite_index == spr_rock_big) {
	instance_destroy();
	obj_game.points += 100;
    for (var i = 0; i < 2; i++) {
        var r = instance_create_layer(x, y, layer, obj_rock);
        r.sprite_index = spr_rock_small;
        r.direction = irandom(359);
        r.speed = 2;

        // Offset so they don’t spawn on top of each other
        r.x += lengthdir_x(8, r.direction);
        r.y += lengthdir_y(8, r.direction);
    }
} else {
	instance_destroy()
	obj_game.points += 50;
}
