extends Button

@export var condition: Condition
@export var fsm: FSM

func _ready():
	pressed.connect(OnPressed)

func OnPressed():
	fsm.PushCondition(condition)
