MoveForward(milliseconds)
{
    Send {w down}
    Sleep milliseconds
    Send {w up}
    return
}

MoveLeft(milliseconds)
{
    Send {a down}
    Sleep milliseconds
    Send {a up}
    return
}

MoveRight(milliseconds)
{
    Send {d down}
    Sleep milliseconds
    Send {d up}
    return
}

MoveBackwards(milliseconds)
{
    Send {s down}
    Sleep milliseconds
    Send {s up}
    return
}
