points = 0;
chances = 5;

player_start_x = room_width / 2;
player_start_y = room_height / 2;

rock_starts = [
    [100, 100],
    [room_width - 100, 100],
    [100, room_height - 100],
    [room_width - 100, room_height - 100],
    [room_width / 2, 120],
    [room_width / 2, room_height - 120]
];

function addPoints(newPoints)
{
	points += newPoints;
}

function loseLife()
{
    chances -= 1;

    if (chances <= 0) 
    {
        room_restart();
    }
	
	resetRound()
}

function resetRound() {
	
    // Remove bullets + rocks + player
    with (obj_bullet) destroy();
    with (obj_rock) destroy();
    with (obj_player) destroy();

    // Respawn player at original start
    instance_create_layer(player_start_x, player_start_y, "Instances", obj_player);

    // Respawn rocks at original starts
    for (var i = 0; i < array_length(rock_starts); i++) {
        var pos = rock_starts[i];
        var r = instance_create_layer(pos[0], pos[1], "Instances", obj_rock);
        r.sprite_index = spr_rock_big;
        r.direction = irandom(359);
        r.speed = random_range(1, 3);
    }
}

