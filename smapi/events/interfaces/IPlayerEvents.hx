package smapi.events.interfaces;

import smapi.events.args.player.*;
import cs.system.EventHandler_1;

/* Events raised when the player data changes. */
extern interface IPlayerEvents {
	/// <summary>Raised after items are added or removed to a player's inventory. NOTE: this event is currently only raised for the current player.</summary>
	@:event extern var InventoryChanged:EventHandler_1<InventoryChangedEventArgs>;

	/// <summary>Raised after a player skill level changes. This happens as soon as they level up, not when the game notifies the player after their character goes to bed.  NOTE: this event is currently only raised for the current player.</summary>
	@:event extern var LevelChanged:EventHandler_1<LevelChangedEventArgs>;

	// Raised after a player warps to a new location. NOTE: this event is currently only raised for the current player.
	@:event extern var Warped:EventHandler_1<WarpedEventArgs>;
}
