package smapi.events.args.player;

import stardewvalley.Farmer;
import stardewvalley.Item;
import stardewvalley.GameLocation;
import cs.system.EventArgs;
import smapi.events.ItemStackSizeChange;

// <summary>Event arguments for a <see cref="IPlayerEvents.Warped"/> event.</summary>
extern class WarpedEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The player whose inventory changed.</summary>
	@:property extern var Player:Farmer;

	/// <summary>The removed item stacks.</summary>
	@:property extern var OldLocation:GameLocation;

	/// <summary>The item stacks whose size changed.</summary>
	@:property extern var NewLocation:GameLocation;

	/// <summary>Whether the affected player is the local one.</summary>
	@:property extern var IsLocalPlayer:Bool;

	/*********
		** Public methods
	*********/
	/// <summary>Construct an instance.</summary>
	/// <param name="player">The player whose inventory changed.</param>
	/// <param name="added">The added item stacks.</param>
	/// <param name="removed">The removed item stacks.</param>
	/// <param name="quantityChanged">The item stacks whose size changed.</param>
	@:internal extern function new(player:Farmer, OldLocation:GameLocation, NewLocation:GameLocation);
}
