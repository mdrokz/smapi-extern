package smapi.events;

import stardewvalley.Item;
/// <summary>An inventory item stack size change.</summary>
extern class ItemStackSizeChange
{
    /*********
    ** Accessors
    *********/
    /// <summary>The item whose stack size changed.</summary>
    @:property extern var Item: Item;

    /// <summary>The previous stack size.</summary>
    @:property extern var OldSize:Int;

    /// <summary>The new stack size.</summary>
    @:property extern var NewSize:Int;


    /*********
    ** Public methods
    *********/
    /// <summary>Construct an instance.</summary>
    /// <param name="item">The item whose stack size changed.</param>
    /// <param name="oldSize">The previous stack size.</param>
    /// <param name="newSize">The new stack size.</param>
    extern function new(item: Item, oldSize:Int, newSize:Int);
}