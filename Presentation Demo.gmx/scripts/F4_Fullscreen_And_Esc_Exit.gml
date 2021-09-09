if keyboard_check_pressed(vk_f4)
{
    if window_get_fullscreen()
       {
       window_set_fullscreen(false);
       exit;
       }
    else
       {
       window_set_fullscreen(true);
       exit;
       }
}

if keyboard_check_pressed(vk_escape)
{
    game_end();
}
