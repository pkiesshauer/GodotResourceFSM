extends Resource
class_name FSM

signal State_Start(state: State)
signal State_Run(state: State)
signal State_End(state: State)

@export var Transitions: Array[Transition]

@export var CurrentState: State

func PushCondition(condition: Condition):
	var trans = Transitions.filter(func(s): return s.from == CurrentState)
	if trans.size() > 0:
		trans = trans.filter(func(s): return s.condition == condition)
	if trans.size() > 0:
		var newState: State = trans[0].to
		ChangeState(newState)

func ChangeState(newState: State):
	State_End.emit(CurrentState)
	State_Start.emit(newState)
	CurrentState = newState
	State_Run.emit(CurrentState)
