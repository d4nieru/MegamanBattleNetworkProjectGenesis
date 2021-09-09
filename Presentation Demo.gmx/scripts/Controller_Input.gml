/*/this belongs in field and controller objects

if window_has_focus() == true{

//press

if gamepad_button_check_pressed(0,gp_face1){keyboard_key_press(ord("Z"))}

if gamepad_button_check_pressed(0,gp_face2){keyboard_key_press(ord("X"))}

if gamepad_button_check_pressed(0,gp_shoulderl){keyboard_key_press(ord("A"))}

if gamepad_button_check_pressed(0,gp_shoulderr){keyboard_key_press(ord("S"))}


if gamepad_button_check(0,gp_padd) ==true || (gamepad_axis_value(0, gp_axislv) > .5){keyboard_key_press(vk_down)}

if gamepad_button_check(0,gp_padu) ==true || (gamepad_axis_value(0, gp_axislv) < -.5){keyboard_key_press(vk_up)}

if gamepad_button_check(0,gp_padl) ==true || (gamepad_axis_value(0, gp_axislh) < -.5) {keyboard_key_press(vk_left)}

if gamepad_button_check(0,gp_padr) ==true || (gamepad_axis_value(0, gp_axislh) > .5){keyboard_key_press(vk_right)}


if gamepad_button_check_pressed(0,gp_start){keyboard_key_press(vk_enter)}

if gamepad_button_check_pressed(0,gp_select){keyboard_key_press(vk_backspace)}

// release

if gamepad_button_check_released(0,gp_face1){keyboard_key_release(ord("Z"))}

if gamepad_button_check_released(0,gp_face2){keyboard_key_release(ord("X"))}

if gamepad_button_check_released(0,gp_shoulderl){keyboard_key_release(ord("A"))}

if gamepad_button_check_released(0,gp_shoulderr){keyboard_key_release(ord("S"))}


if !gamepad_button_check_pressed(0,gp_padd) && (gamepad_axis_value(0, gp_axislv) < .5){keyboard_key_release(vk_down)}

if !gamepad_button_check_pressed(0,gp_padu) && (gamepad_axis_value(0, gp_axislv) > -.5){keyboard_key_release(vk_up)}

if !gamepad_button_check_pressed(0,gp_padl) && (gamepad_axis_value(0, gp_axislh) > -.5){keyboard_key_release(vk_left)}

if !gamepad_button_check_pressed(0,gp_padr) && (gamepad_axis_value(0, gp_axislh) < .5){keyboard_key_release(vk_right)}


if gamepad_button_check_released(0,gp_start){keyboard_key_release(vk_enter)}

if gamepad_button_check_released(0,gp_select){keyboard_key_release(vk_backspace)}

}
