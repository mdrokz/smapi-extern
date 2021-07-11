package smapi.interfaces;

import haxe.Constraints;

extern interface IModHelper {
	/*********
		** Accessors
	*********/
	/// <summary>The full path to the mod's folder.</summary>
	@:property extern var DirectoryPath(get, null):String;

	/// <summary>Manages access to events raised by SMAPI, which let your mod react when something happens in the game.</summary>
	@:property extern var Events(get, null):IModEvents;

	/// <summary>An API for managing console commands.</summary>
	@:property extern var ConsoleCommands(get, null):ICommandHelper;

	/// <summary>An API for loading content assets.</summary>
	@:property extern var Content(get, null):IContentHelper;

	/// <summary>An API for managing content packs.</summary>
	@:property extern var ContentPacks(get, null):IContentPackHelper;

	/// <summary>An API for reading and writing persistent mod data.</summary>
	@:property extern var Data(get, null):IDataHelper;

	/// <summary>An API for checking and changing input state.</summary>
	@:property extern var Input(get, null):IInputHelper;

	/// <summary>Simplifies access to private game code.</summary>
	@:property extern var Reflection(get, null):IReflectionHelper;

	/// <summary>Metadata about loaded mods.</summary>
	@:property extern var ModRegistry(get, null):IModRegistry;

	/// <summary>Provides multiplayer utilities.</summary>
	@:property extern var Multiplayer(get, null):IMultiplayerHelper;

	/// <summary>Provides translations stored in the mod's <c>i18n</c> folder, with one file per locale (like <c>en.json</c>) containing a flat key => value structure. Translations are fetched with locale fallback, so missing translations are filled in from broader locales (like <c>pt-BR.json</c> &lt; <c>pt.json</c> &lt; <c>default.json</c>).</summary>
	@:property extern var Translation(get, null):ITranslationHelper;

	/*********
		** Public methods
	*********/
	/****
		** Mod config file
	****/
	/// <summary>Read the mod's configuration file (and create it if needed).</summary>
	/// <typeparam name="TConfig">The config class type. This should be a plain class that has public properties for the settings you want. These can be complex types.</typeparam>
	extern function ReadConfig<TConfig:Constructible>():TConfig;

	/// <summary>Save to the mod's configuration file.</summary>
	/// <typeparam name="TConfig">The config class type.</typeparam>
	/// <param name="config">The config settings to save.</param>
	extern function WriteConfig<TConfig>(config:TConfig):Void;
}
