-- 领奖NPC

x900003_g_scriptId = 900003

--**********************************
--事件交互入口
--**********************************
function x900003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"　#cffcc88欢迎来到天龙八部085复古怀旧版在这里让你本尊相信会让你找回到当年的情怀…")
	AddNumText( sceneId, x900003_g_scriptId, "加入门派 ", 2, 300 )
	AddNumText( sceneId, x900003_g_scriptId, "更换门派 ", 2, 400 )
	AddNumText( sceneId, x900003_g_scriptId, "修复经验 ", 2, 500 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x900003_OnEventRequest( sceneId, selfId, targetId, scriptId )
	local	arg	= GetNumText()
	if arg == 100 then
		x900003_NotifyFailBox( sceneId, selfId, targetId, "　#R231…" )		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 197, 0)
		
	elseif arg== 300 then
		BeginEvent(sceneId)
		AddText(sceneId,"　#G九大门派#cffcc88基本#G平衡#cffcc88，请选择一个您比较#P熟悉#cffcc88的门派，加入门派心法为10级本座这里#G没有垃圾#cffcc88门派、只要您操作得当，百万军中取敌将首级也是探囊取物…")
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [星宿]", 2, 310 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [逍遥]", 2, 320 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [少林]", 2, 330 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [天山]", 2, 340 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [天龙]", 2, 350 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [峨眉]", 2, 360 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [武当]", 2, 370 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [明教]", 2, 380 )
		AddNumText( sceneId, x900003_g_scriptId, "拜入→ #cFF0000 [丐帮]", 2, 390 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 310 then --星宿
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,10)
		LuaFnSetXinFaLevel(sceneId,selfId,32,10)
		LuaFnSetXinFaLevel(sceneId,selfId,33,10)
		LuaFnSetXinFaLevel(sceneId,selfId,34,10)
		LuaFnSetXinFaLevel(sceneId,selfId,35,10)
		LuaFnSetXinFaLevel(sceneId,selfId,36,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G星宿派#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88您成功加入了#G星宿派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 320 then --逍遥
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,10)
		LuaFnSetXinFaLevel(sceneId,selfId,50,10)
		LuaFnSetXinFaLevel(sceneId,selfId,51,10)
		LuaFnSetXinFaLevel(sceneId,selfId,52,10)
		LuaFnSetXinFaLevel(sceneId,selfId,53,10)
		LuaFnSetXinFaLevel(sceneId,selfId,54,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G逍遥派#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G逍遥派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 330 then --少林
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,10)
		LuaFnSetXinFaLevel(sceneId,selfId,2,10)
		LuaFnSetXinFaLevel(sceneId,selfId,3,10)
		LuaFnSetXinFaLevel(sceneId,selfId,4,10)
		LuaFnSetXinFaLevel(sceneId,selfId,5,10)
		LuaFnSetXinFaLevel(sceneId,selfId,6,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G少林派#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G少林派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 340 then --天山
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,10)
		LuaFnSetXinFaLevel(sceneId,selfId,44,10)
		LuaFnSetXinFaLevel(sceneId,selfId,45,10)
		LuaFnSetXinFaLevel(sceneId,selfId,46,10)
		LuaFnSetXinFaLevel(sceneId,selfId,47,10)
		LuaFnSetXinFaLevel(sceneId,selfId,48,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G天山派#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G天山派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 350 then --天龙
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,10)
		LuaFnSetXinFaLevel(sceneId,selfId,38,10)
		LuaFnSetXinFaLevel(sceneId,selfId,39,10)
		LuaFnSetXinFaLevel(sceneId,selfId,40,10)
		LuaFnSetXinFaLevel(sceneId,selfId,41,10)
		LuaFnSetXinFaLevel(sceneId,selfId,42,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G天龙寺#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G天龙寺#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 360 then --峨眉
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,10)
		LuaFnSetXinFaLevel(sceneId,selfId,26,10)
		LuaFnSetXinFaLevel(sceneId,selfId,27,10)
		LuaFnSetXinFaLevel(sceneId,selfId,28,10)
		LuaFnSetXinFaLevel(sceneId,selfId,29,10)
		LuaFnSetXinFaLevel(sceneId,selfId,30,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G峨眉派#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G峨眉派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 370 then --武当
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,10)
		LuaFnSetXinFaLevel(sceneId,selfId,20,10)
		LuaFnSetXinFaLevel(sceneId,selfId,21,10)
		LuaFnSetXinFaLevel(sceneId,selfId,22,10)
		LuaFnSetXinFaLevel(sceneId,selfId,23,10)
		LuaFnSetXinFaLevel(sceneId,selfId,24,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G武当派#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G武当派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 380 then --明教
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,10)
		LuaFnSetXinFaLevel(sceneId,selfId,8,10)
		LuaFnSetXinFaLevel(sceneId,selfId,9,10)
		LuaFnSetXinFaLevel(sceneId,selfId,10,10)
		LuaFnSetXinFaLevel(sceneId,selfId,11,10)
		LuaFnSetXinFaLevel(sceneId,selfId,12,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G明教#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G明教#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 390 then --丐帮
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您已经#G拜入过#cffcc88门派了，如需更换门派则需要#G门派转换令#cffcc88一个…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,10)
		LuaFnSetXinFaLevel(sceneId,selfId,14,10)
		LuaFnSetXinFaLevel(sceneId,selfId,15,10)
		LuaFnSetXinFaLevel(sceneId,selfId,16,10)
		LuaFnSetXinFaLevel(sceneId,selfId,17,10)
		LuaFnSetXinFaLevel(sceneId,selfId,18,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P加入了#G丐帮#P。#r#R游戏那么多，您却能选择我。非常感谢您的支持，为了公正我不能给您什么，但我一定会加倍的努力为您打造一个完美的家…", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G丐帮#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg== 400 then
		BeginEvent(sceneId)
		AddText(sceneId,"　#cffcc88如果您已厌倦了之前加入的门派，现在您只需要#G背包#cffcc88拥有一个#G“门派转换令”#cffcc88本座即可让你#G重新加入#cffcc88其它门派…")
		AddText(sceneId,"　#P注意：#G重新#cffcc88加入其它门派后，之前#G习得的心法#cffcc88将会#cFF0000遗忘#cffcc88…请慎重…")
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [星宿] ", 2, 410 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [逍遥] ", 2, 420 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [少林] ", 2, 430 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [天山] ", 2, 440 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [天龙] ", 2, 450 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [峨眉] ", 2, 460 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [武当] ", 2, 470 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [明教] ", 2, 480 )
		AddNumText( sceneId, x900003_g_scriptId, "更换→ #cFF0000 [丐帮] ", 2, 490 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 410 then  --星宿
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,10)
		LuaFnSetXinFaLevel(sceneId,selfId,32,10)
		LuaFnSetXinFaLevel(sceneId,selfId,33,10)
		LuaFnSetXinFaLevel(sceneId,selfId,34,10)
		LuaFnSetXinFaLevel(sceneId,selfId,35,10)
		LuaFnSetXinFaLevel(sceneId,selfId,36,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G星宿派#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88您成功加入了#G星宿派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 420 then --逍遥
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,10)
		LuaFnSetXinFaLevel(sceneId,selfId,50,10)
		LuaFnSetXinFaLevel(sceneId,selfId,51,10)
		LuaFnSetXinFaLevel(sceneId,selfId,52,10)
		LuaFnSetXinFaLevel(sceneId,selfId,53,10)
		LuaFnSetXinFaLevel(sceneId,selfId,54,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G逍遥派#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G逍遥派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 430 then --少林
		local mp = GetMenPai(sceneId, selfId)
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,10)
		LuaFnSetXinFaLevel(sceneId,selfId,2,10)
		LuaFnSetXinFaLevel(sceneId,selfId,3,10)
		LuaFnSetXinFaLevel(sceneId,selfId,4,10)
		LuaFnSetXinFaLevel(sceneId,selfId,5,10)
		LuaFnSetXinFaLevel(sceneId,selfId,6,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G少林派#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G少林派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 440 then --天山
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,10)
		LuaFnSetXinFaLevel(sceneId,selfId,44,10)
		LuaFnSetXinFaLevel(sceneId,selfId,45,10)
		LuaFnSetXinFaLevel(sceneId,selfId,46,10)
		LuaFnSetXinFaLevel(sceneId,selfId,47,10)
		LuaFnSetXinFaLevel(sceneId,selfId,48,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G天山派#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G天山派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 450 then --天龙
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,10)
		LuaFnSetXinFaLevel(sceneId,selfId,38,10)
		LuaFnSetXinFaLevel(sceneId,selfId,39,10)
		LuaFnSetXinFaLevel(sceneId,selfId,40,10)
		LuaFnSetXinFaLevel(sceneId,selfId,41,10)
		LuaFnSetXinFaLevel(sceneId,selfId,42,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G天龙寺#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G天龙寺#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 460 then --峨眉
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,10)
		LuaFnSetXinFaLevel(sceneId,selfId,26,10)
		LuaFnSetXinFaLevel(sceneId,selfId,27,10)
		LuaFnSetXinFaLevel(sceneId,selfId,28,10)
		LuaFnSetXinFaLevel(sceneId,selfId,29,10)
		LuaFnSetXinFaLevel(sceneId,selfId,30,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G峨眉派#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G峨眉派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 470 then --武当
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106 ,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,10)
		LuaFnSetXinFaLevel(sceneId,selfId,20,10)
		LuaFnSetXinFaLevel(sceneId,selfId,21,10)
		LuaFnSetXinFaLevel(sceneId,selfId,22,10)
		LuaFnSetXinFaLevel(sceneId,selfId,23,10)
		LuaFnSetXinFaLevel(sceneId,selfId,24,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G武当派#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G武当派#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 480 then --明教
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,10)
		LuaFnSetXinFaLevel(sceneId,selfId,8,10)
		LuaFnSetXinFaLevel(sceneId,selfId,9,10)
		LuaFnSetXinFaLevel(sceneId,selfId,10,10)
		LuaFnSetXinFaLevel(sceneId,selfId,11,10)
		LuaFnSetXinFaLevel(sceneId,selfId,12,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G明教#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G明教#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 490 then --丐帮
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#cffcc88您背包没有#G门派转换令#cffcc88，来找我也无济于事啊…" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "　#P删除#G门派转换令#P失败，请确认#G物品#P未枷锁…" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,10)
		LuaFnSetXinFaLevel(sceneId,selfId,14,10)
		LuaFnSetXinFaLevel(sceneId,selfId,15,10)
		LuaFnSetXinFaLevel(sceneId,selfId,16,10)
		LuaFnSetXinFaLevel(sceneId,selfId,17,10)
		LuaFnSetXinFaLevel(sceneId,selfId,18,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#P恭喜玩家#G["..nam.."]#P成功背叛师门，加入了#G丐帮#P。", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88您成功加入了#G丐帮#cffcc88并学习了#G基本心法#cffcc88，祝您游戏愉快…" )
	elseif arg == 500 then --修复经验
		BeginEvent( sceneId )
		AddText( sceneId, "　#I如果您存的经验爆掉了或打怪已经不给经验了，请在我这里点击#G我要清零#I，直到提示您#P修复完成#I为止哦。" )
		AddNumText(sceneId, x900003_g_scriptId, "我要清零", 6, 520 )
		AddNumText(sceneId, x900003_g_scriptId, "离开", 6, 510 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
	elseif arg == 510 then --修复经验
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	elseif arg == 520 then --修复经验
		if GetExp(sceneId,selfId) < 0  then 
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
		for i = 0,1000  do
			AddExp(sceneId,selfId,GetExp(sceneId,selfId)*-1)
		end
		x900003_NotifyFailBox( sceneId, selfId, targetId,"　#I已经为你清空了经验，请#G继续点击清零#I直到提示修复完成为止…")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		else
		BeginEvent( sceneId )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"　#I恭喜您，经验#cFF0000已经修复完成#I了，下次请注意不要在存过多的经验了哦。")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		end
	end
	
end
---**********************************
-- 对话窗口信息提示
--**********************************
function x900003_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
	AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end