package smapi.events.args.player;

import stardewvalley.Farmer;
import stardewvalley.Item;
import cs.system.EventArgs;
import smapi.events.ItemStackSizeChange;

// <summary>Event arguments for a <see cref="IPlayerEvents.LevelChanged"/> event.</summary>
extern class LevelChangedEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The player whose inventory changed.</summary>
	@:property extern var Player:Farmer;

	/// <summary>The added item stacks.</summary>
	@:property extern var Skill:SkillType;

	/// <summary>The removed item stacks.</summary>
	@:property extern var OldLevel:Int;

	/// <summary>The item stacks whose size changed.</summary>
	@:property extern var NewLevel:Int;

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
	@:internal extern function new(player:Farmer, skill:SkillType, oldLevel:Int, newLevel:Int);
}
