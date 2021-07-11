package smapi.events.interfaces;

import smapi.events.display.*;
import cs.system.EventHandler_1;

extern interface IDisplayEvents {
	/// <summary>Raised after a game menu is opened, closed, or replaced.</summary>
	@:event extern var MenuChanged:EventHandler_1<MenuChangedEventArgs>;

	/// <summary>Raised before the game draws anything to the screen in a draw tick, as soon as the sprite batch is opened. The sprite batch may be closed and reopened multiple times after this event is called, but it's only raised once per draw tick. This event isn't useful for drawing to the screen, since the game will draw over it.</summary>
	@:event extern var Rendering:EventHandler_1<RenderingEventArgs>;

	/// <summary>Raised after the game draws to the sprite patch in a draw tick, just before the final sprite batch is rendered to the screen. Since the game may open/close the sprite batch multiple times in a draw tick, the sprite batch may not contain everything being drawn and some things may already be rendered to the screen. Content drawn to the sprite batch at this point will be drawn over all vanilla content (including menus, HUD, and cursor).</summary>
	@:event extern var Rendered:EventHandler_1<RenderedEventArgs>;

	/// <summary>Raised before the game world is drawn to the screen. This event isn't useful for drawing to the screen, since the game will draw over it.</summary>
	@:event extern var RenderingWorld:EventHandler_1<RenderingWorldEventArgs>;

	/// <summary>Raised after the game world is drawn to the sprite patch, before it's rendered to the screen. Content drawn to the sprite batch at this point will be drawn over the world, but under any active menu, HUD elements, or cursor.</summary>
	@:event extern var RenderedWorld:EventHandler_1<RenderedWorldEventArgs>;

	/// <summary>When a menu is open (<see cref="Game1.activeClickableMenu"/> isn't null), raised before that menu is drawn to the screen. This includes the game's internal menus like the title screen. Content drawn to the sprite batch at this point will appear under the menu.</summary>
	@:event extern var RenderingActiveMenu:EventHandler_1<RenderingActiveMenuEventArgs>;

	/// <summary>When a menu is open (<see cref="Game1.activeClickableMenu"/> isn't null), raised after that menu is drawn to the sprite batch but before it's rendered to the screen. Content drawn to the sprite batch at this point will appear over the menu and menu cursor.</summary>
	@:event extern var RenderedActiveMenu:EventHandler_1<RenderedActiveMenuEventArgs>;

	/// <summary>Raised before drawing the HUD (item toolbar, clock, etc) to the screen. The vanilla HUD may be hidden at this point (e.g. because a menu is open). Content drawn to the sprite batch at this point will appear under the HUD.</summary>
	@:event extern var RenderingHud:EventHandler_1<RenderingHudEventArgs>;

	/// <summary>Raised after drawing the HUD (item toolbar, clock, etc) to the sprite batch, but before it's rendered to the screen. The vanilla HUD may be hidden at this point (e.g. because a menu is open). Content drawn to the sprite batch at this point will appear over the HUD.</summary>
	@:event extern var RenderedHud:EventHandler_1<RenderedHudEventArgs>;

	/// <summary>Raised after the game window is resized.</summary>
	@:event extern var WindowResized:EventHandler_1<WindowResizedEventArgs>;
}
