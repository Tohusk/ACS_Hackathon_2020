image_index = 0;

x = random_range(128, room_width-128);
y = random_range(128, room_height-128);

time_until_presneeze = random_range(1, 3)*room_speed;
time_until_sneeze = 2*room_speed;
time_after_bad_sneeze = 1*room_speed;
time_after_good_sneeze = 0.5*room_speed;

success = 0;
failure = 0;