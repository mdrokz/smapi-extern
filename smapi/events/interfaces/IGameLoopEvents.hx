package smapi.events.interfaces;


import smapi.events.args.gameloop.*;
import cs.system.EventHandler_1;

extern interface IGameLoopEvents {
     /// <summary>Raised after the game is launched, right before the first update tick. This happens once per game session (unrelated to loading saves). All mods are loaded and initialized at this point, so this is a good time to set up mod integrations.</summary>
     @:event extern var GameLaunched: EventHandler_1<GameLaunchedEventArgs> ;

     /// <summary>Raised before the game state is updated (≈60 times per second).</summary>
     @:event extern var UpdateTicking: EventHandler_1<UpdateTickingEventArgs> ;

     /// <summary>Raised after the game state is updated (≈60 times per second).</summary>
     @:event extern var UpdateTicked:  EventHandler_1<UpdateTickedEventArgs> ;

     /// <summary>Raised once per second before the game state is updated.</summary>
     @:event extern var OneSecondUpdateTicking: EventHandler_1<OneSecondUpdateTickingEventArgs> ;

     /// <summary>Raised once per second after the game state is updated.</summary>
     @:event extern var OneSecondUpdateTicked: EventHandler_1<OneSecondUpdateTickedEventArgs> ;

     /// <summary>Raised before the game creates a new save file.</summary>
     @:event extern var SaveCreating: EventHandler_1<SaveCreatingEventArgs>;

     /// <summary>Raised after the game finishes creating the save file.</summary>
     @:event extern var SaveCreated: EventHandler_1<SaveCreatedEventArgs> ;

     /// <summary>Raised before the game begins writing data to the save file (except the initial save creation).</summary>
     @:event extern var Saving: EventHandler_1<SavingEventArgs>;

     /// <summary>Raised after the game finishes writing data to the save file (except the initial save creation).</summary>
     @:event extern var Saved: EventHandler_1<SavedEventArgs>;

     /// <summary>Raised after the player loads a save slot and the world is initialized.</summary>
     @:event extern var SaveLoaded: EventHandler_1<SaveLoadedEventArgs>;

     /// <summary>Raised after the game begins a new day (including when the player loads a save).</summary>
     @:event extern var DayStarted: EventHandler_1<DayStartedEventArgs> ;

     /// <summary>Raised before the game ends the current day. This happens before it starts setting up the next day and before <see cref="Saving"/>.</summary>
     @:event extern var DayEnding: EventHandler_1<DayEndingEventArgs>;

     /// <summary>Raised after the in-game clock time changes.</summary>
     @:event extern var TimeChanged: EventHandler_1<TimeChangedEventArgs> ;

     /// <summary>Raised after the game returns to the title screen.</summary>
     @:event extern var ReturnedToTitle: EventHandler_1<ReturnedToTitleEventArgs> ;
}