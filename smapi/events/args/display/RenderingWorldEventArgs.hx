package smapi.events.args.display;

import cs.system.EventArgs;

import stardewvalley.menus.IClickableMenu;

import microsoft.xna.framework.graphics.SpriteBatch;

extern class RenderingWorldEventArgs extends EventArgs {
	  /*********
        ** Accessors
        *********/
        /// <summary>The sprite batch being drawn. Add anything you want to appear on-screen to this sprite batch.</summary>
		extern var SpriteBatch: SpriteBatch;
}