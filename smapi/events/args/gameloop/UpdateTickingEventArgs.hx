package smapi.events.args.gameloop;

import cs.system.UInt32;
import cs.system.EventArgs;

extern class UpdateTickingEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The number of ticks elapsed since the game started, excluding the upcoming tick.</summary>
	extern var Ticks:UInt32;

	/// <summary>Whether <see cref="Ticks"/> is a multiple of 60, which happens approximately once per second.</summary>
	extern var IsOneSecond:Bool;

	/*********
		** Public methods
	*********/
	/// <summary>Get whether <see cref="Ticks"/> is a multiple of the given <paramref name="number"/>. This is mainly useful if you want to run logic intermittently (e.g. <code>e.IsMultipleOf(30)</code> for every half-second).</summary>
	/// <param name="number">The factor to check.</param>
	extern function IsMultipleOf(number:UInt32):Bool;
}
