package smapi.events.args.display;

import cs.system.EventArgs;

import stardewvalley.menus.IClickableMenu;

extern class RenderedActiveMenuEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The previous menu.</summary>
	@:property extern var OldMenu:IClickableMenu;

	/// <summary>The current menu.</summary>
	@:property extern var NewMenu(default, never):IClickableMenu;

}
