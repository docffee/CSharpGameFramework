﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_StorySystem_IStoryCommandFactory : LuaObject {
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Create(IntPtr l) {
		try {
			StorySystem.IStoryCommandFactory self=(StorySystem.IStoryCommandFactory)checkSelf(l);
			var ret=self.Create();
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	static public void reg(IntPtr l) {
		getTypeTable(l,"StorySystem.IStoryCommandFactory");
		addMember(l,Create);
		createTypeMetatable(l,null, typeof(StorySystem.IStoryCommandFactory));
	}
}
