//input for buttons held
button_a = keyboard_check(ord("Z"))
button_b = keyboard_check(ord("X"))
button_l = keyboard_check(ord("A"))
button_r = keyboard_check(ord("S"))
button_left = keyboard_check(vk_left)
button_down = keyboard_check(vk_down)
button_right = keyboard_check(vk_right)
button_up = keyboard_check(vk_up)
button_start = keyboard_check(vk_enter)
button_select = keyboard_check(vk_backspace)

//input for buttons pressed once
button_a_press = keyboard_check_pressed(ord("Z"))
button_b_press = keyboard_check_pressed(ord("X"))
button_l_press = keyboard_check_pressed(ord("A"))
button_r_press = keyboard_check_pressed(ord("S"))
button_left_press = keyboard_check_pressed(vk_left)
button_down_press = keyboard_check_pressed(vk_down)
button_right_press = keyboard_check_pressed(vk_right)
button_up_press = keyboard_check_pressed(vk_up)
button_start_press = keyboard_check_pressed(vk_enter)
button_select_press = keyboard_check_pressed(vk_backspace)

//input for buttons held
button_a_release = keyboard_check_released(ord("Z"))
button_b_release = keyboard_check_released(ord("X"))
button_l_release = keyboard_check_released(ord("A"))
button_r_release = keyboard_check_released(ord("S"))
button_left_release = keyboard_check_released(vk_left)
button_down_release = keyboard_check_released(vk_down)
button_right_release = keyboard_check_released(vk_right)
button_up_release = keyboard_check_released(vk_up)
button_start_release = keyboard_check_released(vk_enter)
button_select_release = keyboard_check_released(vk_backspace)