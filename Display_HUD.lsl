default
{
    state_entry()
    {
        llListen(603003, "", NULL_KEY, "");
        llListen(-603003, "", NULL_KEY, "");
    }
}
