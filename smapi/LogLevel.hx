package smapi;

/// <summary>The log severity levels.</summary>
extern enum abstract LogLevel(Int) from Int to Int
{
    /// <summary>Tracing info intended for developers.</summary>
    final Trace;

    /// <summary>Troubleshooting info that may be relevant to the player.</summary>
    final Debug;

    /// <summary>Info relevant to the player. This should be used judiciously.</summary>
    final Info;

    /// <summary>An issue the player should be aware of. This should be used rarely.</summary>
    final Warn;

    /// <summary>A message indicating something went wrong.</summary>
    final Error;

    /// <summary>Important information to highlight for the player when player action is needed (e.g. new version available). This should be used rarely to avoid alert fatigue.</summary>
    final Alert;
}