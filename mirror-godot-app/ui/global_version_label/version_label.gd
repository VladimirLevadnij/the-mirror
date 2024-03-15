extends Label


## Sets the version label on ready
func _ready():
	_set_version_label()
	print("Mirror app version: %s" % text)


## Sets the version label to the parsed version string.
func _set_version_label() -> void:
	var version := Util.get_version_string()
	text = ' '.join([
		text,
		_release_name(version),
			"v%s-%s" % [
				version,
				ProjectSettings.get_setting("mirror/env_name")
		]
	])
	if ProjectSettings.get_setting("feature_flags/large_text_size", false):
		add_theme_font_size_override(&"font_size", 22)

func _release_name(version) -> String:
	return "Gravity"