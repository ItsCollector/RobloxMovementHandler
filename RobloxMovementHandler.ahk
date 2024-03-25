/*
    Function: RMH_Move
    
    Parameters:
    [milliseconds] - The number of milliseconds the key is held down for

    [primary] - the key input you want to make 
              - "w" (Forwards)
              - "a" (Left)
              - "s" (Down)
              - "d" (Right)

    [Secondary] - an optional second key to hold down, for diagonal movement
              - "w" (Forwards)
              - "a" (Left)
              - "s" (Down)
              - "d" (Right)

    Examples:
    RMH_Move(3000, "w") 
    - Move forwards for 3000 milliseconds

    RMH_Move(3000, "w", "a")
    - Move diagonally forwards and left for 3000 milliseconds

    Notes:
    - Ensure you activate the Roblox window using WinActivate first for 100% accuracy
    - Inputting two keys that are opposites will surely cancel out the movement, such as W and S
*/

RMH_Move(milliseconds, primary, secondary := "")
{
    Send {%primary% down}

    if (secondary != "") 
    {
        Send {%secondary% down}
    }

    Sleep milliseconds

    Send {%primary%  up}
    Send {%secondary% up}
}

