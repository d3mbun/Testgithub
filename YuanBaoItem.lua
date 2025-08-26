--道具：粽子<ID:30501100>
--脚本号 900042
--Author: Steven.Han 10:39 2007-06-08

x900042_g_scriptId = 900042
x900042_g_YuanBaoInfo = {
--元宝
[39000004] = {100,1},
[39000005] = {200,1},
[39000006] = {500,1},
[39000007] = {1000,1},
[39000008] = {2000,1},
[39000009] = {5000,1},
[39900000] = {50,1},
[39900001] = {200,1},
[39900002] = {500,1},
--金票
[39901000] = {10,2},
[39901001] = {50,2},
[39901002] = {150,2},
--绑元
--[39901003] = {200,3},
--[39901004] = {200,3},
--[39901005] = {200,3},
--[39901006] = {1000,3},
}
--**********************************
--事件交互入口
--**********************************
function x900042_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function x900042_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x900042_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x900042_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local bagpos = LuaFnGetBagIndexOfUsedItem( sceneId, selfId)
	if x900042_g_YuanBaoInfo[itemTblIndex] == nil then
	    return 0
	end
	-- if itemTblIndex == 39901007 then
	    -- CallScriptFunction(805011,"GetBindYuanBao",sceneId,selfId,bagpos)
	    -- return 0
	-- end
	return 1; --不需要任何条件，并且始终返回1。
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function x900042_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function x900042_OnActivateOnce( sceneId, selfId )
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	if x900042_g_YuanBaoInfo[itemTblIndex] == nil then
	    return 0
	end
	if x900042_g_YuanBaoInfo[itemTblIndex][2] == 1 then
    x900042_ShowNotice( sceneId, selfId, "您成功的增加了"..(x900042_g_YuanBaoInfo[itemTblIndex][1]).."点元宝。" )
	YuanBao(sceneId,selfId,-1,1,x900042_g_YuanBaoInfo[itemTblIndex][1])
	end
	if x900042_g_YuanBaoInfo[itemTblIndex][2] == 2 then
    x900042_ShowNotice( sceneId, selfId, "您成功的增加了"..(x900042_g_YuanBaoInfo[itemTblIndex][1]).."点金币。" )
	AddMoney(sceneId,selfId,x900042_g_YuanBaoInfo[itemTblIndex][1]*10000)
	end
	if x900042_g_YuanBaoInfo[itemTblIndex][2] == 3 then
       	x900042_ShowNotice( sceneId, selfId, "您成功的增加了"..(x900042_g_YuanBaoInfo[itemTblIndex][1]).."点绑定元宝。" )
	   	ZengDian(sceneId,selfId,-1,1,x900042_g_YuanBaoInfo[itemTblIndex][1])
	end
	return 1;
end

--**********************************
--引导心跳处理入口：
--引导技能会在每次心跳结束时调用这个接口。
--返回：1继续下次心跳；0：中断引导。
--注：这里是技能生效一次的入口
--**********************************
function x900042_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end

function x900042_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
