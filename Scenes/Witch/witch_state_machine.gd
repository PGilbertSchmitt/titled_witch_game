extends "res://StateMachine/state_machine.gd"

onready var idle   = $Idle
onready var moving   = $Moving
onready var charging = $Charging

func _ready():
  states_map = {
    "idle":   idle,
    "moving":   moving,
    "charging": charging
  }

func _change_state(state_name):
  if not _active:
    return
  if state_name in ["charging"]:
    print(state_name)
    print("is_cool")
    states_stack.push_front(states_map[state_name])
    print(states_stack)
  ._change_state(state_name)

func _unhandled_input(event: InputEvent):
  # Here we only handle input that can interrupt states
  current_state.handle_input(event)
