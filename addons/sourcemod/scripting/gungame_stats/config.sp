public GG_ConfigNewSection(const String:NewSection[])
{
    if(strcmp(NewSection, "Config", false) == 0)
    {
        ConfigState = CONFIG_STATE_CONFIG;
    }
}

public GG_ConfigKeyValue(const String:Key[], const String:Value[])
{
    if(ConfigState == CONFIG_STATE_CONFIG)
    {
        if(strcmp(Key, "Prune", false) == 0)
        {
            Prune = StringToInt(Value);
        }
    }
}

public GG_ConfigParseEnd()
{
    ConfigState = CONFIG_STATE_NONE;
}