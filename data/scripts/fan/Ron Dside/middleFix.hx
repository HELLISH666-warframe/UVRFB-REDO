function onSongStart()
    if(modSave.middleScroll){
        modSave.middlescroll = false;
        tween('yeswar1',cpuStrums.members[0],{alpha:1},0.25,'quadOut');
        tween('yeswar2',cpuStrums.members[1],{alpha:1},0.25,'quadOut');
        tween('yeswar3',cpuStrums.members[2],{alpha:1},0.25,'quadOut');
        tween('yeswar4',cpuStrums.members[3],{alpha:1},0.25,'quadOut');
        tween('notwar1',cpuStrums.members[0],{x:120},0.25,'quadOut');
        tween('notwar2',cpuStrums.members[1],{x:230},0.25,'quadOut');
        tween('notwar3',cpuStrums.members[2],{x:340},0.25,'quadOut');
        tween('notwar4',cpuStrums.members[3],{x:450},0.25,'quadOut');
        tween('war1',playerStrums.members[0],{x:720},0.25,'quadOut');
        tween('war2',playerStrums.members[1],{x:830},0.25,'quadOut');
        tween('war3',playerStrums.members[2],{x:940},0.25,'quadOut');
        tween('war4',playerStrums.members[3],{x:1050},0.25,'quadOut');
    }