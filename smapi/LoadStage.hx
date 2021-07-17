package smapi;

/// <summary>A low-level stage in the game's loading process.</summary>
extern enum abstract LoadStage(Int) from Int to Int
{
    /// <summary>A save is not loaded or loading.</summary>
    final None = 0;

    /// <summary>The game is creating a new save slot, and has initialized the basic save info.</summary>
    final CreatedBasicInfo = 1;

    /// <summary>The game is creating a new save slot, and has added the location instances but hasn't fully initialized them yet.</summary>
    final CreatedInitialLocations = 10;

    /// <summary>The game is creating a new save slot, and has initialized the in-game locations.</summary>
    final CreatedLocations = 2;

    /// <summary>The game is creating a new save slot, and has created the physical save files.</summary>
    final CreatedSaveFile = 3;

    /// <summary>The game is loading a save slot, and has read the raw save data into <see cref="StardewValley.SaveGame.loaded"/>. Not applicable when connecting to a multiplayer host. This is equivalent to <see cref="StardewValley.SaveGame.getLoadEnumerator"/> value 20.</summary>
    final SaveParsed = 4;

    /// <summary>The game is loading a save slot, and has applied the basic save info (including player data). Not applicable when connecting to a multiplayer host. Note that some basic info (like daily luck) is not initialized at this point. This is equivalent to <see cref="StardewValley.SaveGame.getLoadEnumerator"/> value 36.</summary>
    final SaveLoadedBasicInfo = 5;

    /// <summary>The game is loading a save slot and has added the location instances, but hasn't restored their save data yet. Not applicable when connecting to a multiplayer host.</summary>
    final SaveAddedLocations = 11;

    /// <summary>The game is loading a save slot, and has restored the in-game location data. Not applicable when connecting to a multiplayer host. This is equivalent to <see cref="StardewValley.SaveGame.getLoadEnumerator"/> value 50.</summary>
    final SaveLoadedLocations = 6;

    /// <summary>The final metadata has been loaded from the save file. This happens before the game applies problem fixes, checks for achievements, starts music, etc. Not applicable when connecting to a multiplayer host.</summary>
    final Preloaded = 7;

    /// <summary>The save is fully loaded, but the world may not be fully initialized yet.</summary>
    final Loaded = 8;

    /// <summary>The save is fully loaded, the world has been initialized, and <see cref="Context.IsWorldReady"/> is now true.</summary>
    final Ready = 9;

    /// <summary>The game is exiting the loaded save and returning to the title screen. This happens before it returns to title; see <see cref="None"/> after it returns.</summary>
    final ReturningToTitle = 12;
}