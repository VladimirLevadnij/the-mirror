extends BaseSetting


@onready var bool_ui = $InspectorPropertyToggle


func apply_setting_to_ui(in_value: bool):
	bool_ui.current_value = in_value
	apply_setting_to_gameplay()


func apply_setting_to_gameplay()-> void:
	GameplaySettings.is_microphone_enabled = bool_ui.current_value


func convert_gameplay_value_for_ui() -> bool:
	return GameplaySettings.is_microphone_enabled