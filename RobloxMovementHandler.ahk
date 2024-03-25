#Requires AutoHotkey v2.0-a


/*
    Function: RMH_Move
    
    Parameters:
    [milliseconds]: integer
    - The number of milliseconds the key is held down for

    [primary]: string
    - the key input you want to make 
        - "w" (Forwards)
        - "a" (Left)
        - "s" (Down)
        - "d" (Right)

    [Secondary]: string
    - an optional second key to hold down, for diagonal movement
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
    Send("{" primary " down}")

    if (secondary != "") 
    {
        Send("{" secondary " down}")
    }

    Sleep(milliseconds)

    Send("{" primary "  up}")
    Send("{" secondary " up}")
}

/*
    Function: RMH_RotateCamera
        
        Parameters:
            [milliseconds]: integer 
            - The number of milliseconds the key is held down for

            [direction]: string
            - The direction to rotate the camera towards
                - "left": turns the camera left
                - "right": turns the camera right

        Examples:
            RMH_RotateCamera(3000, "left") 
            - Rotates camera to the left for 3000 milliseconds

            RMH_RotateCamera(3000, "right") 
            - Rotates camera to the right for 3000 milliseconds

        Notes:
            - Ensure you activate the Roblox window using WinActivate first for 100% accuracy
            
        Possible millisecond values you can use:
            - 3000: 360° turn
            - 1500: 180° turn
            - 750: 90° turn
            - 375: 45° turn
*/

RMH_RotateCamera(milliseconds, direction) 
{
    if (StrLower(direction) == "left")
    {
        Send("{Left down}")
        Sleep(milliseconds)
        Send("{Left up}")
    }
    else if (StrLower(direction) == "right")
    {
        Send("{Right down}")
        Sleep(milliseconds)
        Send("{Right up}")
    }

    return
}

