extends Label

@export var fsm: FSM

func _ready():
	fsm.State_Run.connect(OnFSMRun)
	text = fsm.CurrentState.StateName

func OnFSMRun(delta):
	text = fsm.CurrentState.StateName
