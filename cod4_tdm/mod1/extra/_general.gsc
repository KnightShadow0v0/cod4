init()
{	
	level.ninjaServerFile = true;
	level.authorizeMode = getDvarInt("sv_authorizemode");
	level.getGuid = ::_getGuid;
	level.getDay = ::_getDay;
	
	if(level.authorizeMode)
	level.getGuid = ::_getUid;
	
	//if(getDvar("net_port") == "28945")
		//thread crazy\_jump::init();
}
_getUid()
{
	return self getUid();
}
_getGuid()
{
	return self getGuid();
}
_getDay()
{
	return timeToString(getRealTime(), 0, "%A" );
}