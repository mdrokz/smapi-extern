package smapi.events.args.gameloop;

import cs.system.EventArgs;

import stardewvalley.menus.IClickableMenu;

extern class TimeChangedEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The previous menu.</summary>
	@:property extern var OldMenu:Int;

	/// <summary>The current menu.</summary>
	@:property extern var NewMenu(default, never):Int;

	/*********
		** Public methods
	*********/
	/// <summary>Construct an instance.</summary>
	/// <param name="oldMenu">The previous menu.</param>
	/// <param name="newMenu">The current menu.</param>
	@:internal extern function new(oldMenu:Int, newMenu:Int):Void;
}
