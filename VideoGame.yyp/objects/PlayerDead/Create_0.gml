hsp = 3;
vsp = -4;
grv = 0.2;
done = 0;

ScreenShake(6,60);
image_speed = 0;
image_index = 0;
with (Camera) follow = other.id;
audio_play_sound(Death,0,0);