package smapi.interfaces;

extern interface IMod {
	/*********
		** Accessors
	*********/
	///Provides simplified APIs for writing mods.
	@:property extern var Helper(get, null):IModHelper;

	/// <summary>Writes messages to the console and log file.</summary>
	@:property extern var Monitor(get, null):IMonitor;
	/// <summary>The mod's manifest.</summary>
	@:property extern var ModManifest(get, null):IMod;

	/*********
		** Public methods
	*********/
	/// <summary>The mod entry point, called after the mod is first loaded.</summary>
	/// <param name="helper">Provides simplified APIs for writing mods.</param>
	extern function Entry(helper:IMod):Void;

	/// <summary>Get an API that other mods can access. This is always called after <see cref="Entry"/>.</summary>
	extern function GetApi():Any;
}
