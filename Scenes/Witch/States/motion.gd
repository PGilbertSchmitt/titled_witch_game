extends "res://StateMachine/state.gd"

var facing_right = true

func handle_input(_event: InputEvent):
  # Any transitions that could be triggered by user input during
  # any state that inherets from "motion.gd" should go here
  pass

func get_input_direction():
  var direction = Vector2()
  direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
  direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
  if direction.length() > 1:
    direction = direction.normalized()
  return direction

func update_look_direction():
  var mouse_pos = get_viewport().get_mouse_position()
  var canvas_witch_pos = owner.get_global_transform_with_canvas().origin

  if mouse_pos.x > canvas_witch_pos.x && facing_right == false:
    owner.get_node("AnimatedSprite").flip_h = false
    facing_right = true
  if mouse_pos.x < canvas_witch_pos.x && facing_right:
    owner.get_node("AnimatedSprite").flip_h = true
    facing_right = false

func move(speed: float):
  var _collision = owner.move_and_collide(get_input_direction() * speed)
