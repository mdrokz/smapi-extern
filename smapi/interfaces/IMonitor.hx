package smapi.interfaces;

/// <summary>Encapsulates monitoring and logging for a given module.</summary>
extern interface IMonitor
{
    /*********
    ** Accessors
    *********/
    /// <summary>Whether verbose logging is enabled. This enables more detailed diagnostic messages than are normally needed.</summary>
    @:property extern var IsVerbose(default,never): Bool;


    /*********
    ** Methods
    *********/
    /// <summary>Log a message for the player or developer.</summary>
    /// <param name="message">The message to log.</param>
    /// <param name="level">The log severity level.</param>
    extern function Log(message: String, level: LogLevel): Void;

    /// <summary>Log a message for the player or developer, but only if it hasn't already been logged since the last game launch.</summary>
    /// <param name="message">The message to log.</param>
    /// <param name="level">The log severity level.</param>
    extern function LogOnce(message: String, level: LogLevel): Void;

    /// <summary>Log a message that only appears when <see cref="IsVerbose"/> is enabled.</summary>
    /// <param name="message">The message to log.</param>
    extern function VerboseLog(message: String): Void;
}