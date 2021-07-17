package smapi.events.args.special;

import cs.system.EventArgs;

/// <summary>Event arguments for an <see cref="ISpecializedEvents.LoadStageChanged"/> event.</summary>
extern class LoadStageChangedEventArgs extends EventArgs {
	/*********
		** Accessors
	*********/
	/// <summary>The previous load stage.</summary>
	@:property extern var OldStage(default, never):LoadStage;

	/// <summary>The new load stage.</summary>
	@:property extern var NewStage(default, never):LoadStage;

	/*********
		** Public methods
	*********/
	/// <summary>Construct an instance.</summary>
	/// <param name="old">The previous load stage.</param>
	/// <param name="current">The new load stage.</param>
	extern function new(old: LoadStage, current: LoadStage);
}
