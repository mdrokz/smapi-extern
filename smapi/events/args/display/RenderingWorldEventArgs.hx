package smapi.events.args.display;

import cs.system.EventArgs;

import stardewvalley.menus.IClickableMenu;

extern class RenderingWorldEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The previous menu.</summary>
	@:property extern var OldMenu:IClickableMenu;

	/// <summary>The current menu.</summary>
	@:property extern var NewMenu(default, never):IClickableMenu;

	/*********
		** Public methods
	*********/
	/// <summary>Construct an instance.</summary>
	/// <param name="oldMenu">The previous menu.</param>
	/// <param name="newMenu">The current menu.</param>
	@:internal extern function MenuChangedEventArgs(oldMenu:IClickableMenu, newMenu:IClickableMenu):Void;
}