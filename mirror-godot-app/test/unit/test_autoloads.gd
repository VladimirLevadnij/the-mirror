extends GutTest


func test_autoload_references():
	assert_not_null(Zone)
	assert_not_null(Gizmo)
	assert_not_null(Firebase)

	assert_not_null(PlayerData) # todo: Deprecate PlayerData Global

	assert_not_null(Net)
	assert_not_null(Net.user_client)
	assert_not_null(Net.asset_client)
	assert_not_null(Net.space_client)
	assert_not_null(Net.group_client)
	assert_not_null(Zone.social_manager)
	assert_not_null(Zone.instance_manager)

	assert_not_null(GameUI)
	assert_not_null(GameUI.creator_ui)
	assert_not_null(GameUI.loading_ui)
	assert_not_null(GameUI.main_menu_ui)
	assert_not_null(GameUI.login_ui)
	assert_not_null(GameUI.notifications_ui)


## ensures that the loading ui is in front of any of the other pertinent ui
func test_loading_ui_order():
	var loading_ui_index = GameUI.loading_ui.get_index()
	assert_true(loading_ui_index > GameUI.main_menu_ui.get_index())
	assert_true(loading_ui_index > GameUI.login_ui.get_index())
	assert_true(loading_ui_index > GameUI.creator_ui.get_index())