package smapi.interfaces;

import smapi.interfaces.IDisplayEvents;

extern interface IModEvents {
	/// <summary>Events related to UI and drawing to the screen.</summary>
	@:property extern var Display(default, never):IDisplayEvents;

	/// <summary>Events linked to the game's update loop. The update loop runs roughly ≈60 times/second to run game logic like state changes, action handling, etc. These can be useful, but you should consider more semantic events like <see cref="Input"/> if possible.</summary>
	@:property extern var GameLoop(default, never):IGameLoopEvents;

	/// <summary>Events raised when the player provides input using a controller, keyboard, or mouse.</summary>
	@:property extern var Input(default, never):IInputEvents;

	/// <summary>Events raised for multiplayer messages and connections.</summary>
	@:property extern var Multiplayer(default, never):IMultiplayerEvents;

	/// <summary>Events raised when the player data changes.</summary>
	@:property extern var Player(default, never):IPlayerEvents;

	/// <summary>Events raised when something changes in the world.</summary>
	@:property extern var World(default, never):IWorldEvents;

	/// <summary>Events serving specialized edge cases that shouldn't be used by most mods.</summary>
	@:property extern var Specialized(default, never):ISpecializedEvents;
}
