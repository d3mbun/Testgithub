--脚本号


x900030_g_scriptId = 900030

x900030_g_strGongGaoInfo = {
  "#{_INFOUSR%s} #cff99cc在#G洛阳（258，252）#Y宝石工匠#cff99cc处成功琢刻了一颗闪闪发光的#cFF0000#{_INFOMSG%s}#H#cff99cc，宝石属性大幅度得到提升！", 
  "#{_INFOUSR%s} #cff99cc在#G洛阳（258，252）#Y宝石工匠#cff99cc处成功琢刻了一颗闪闪发光的#cFF0000#{_INFOMSG%s}#H#cff99cc，宝石属性大幅度得到提升！", 
  "#{_INFOUSR%s} #cff99cc在#G洛阳（258，252）#Y宝石工匠#cff99cc处成功琢刻了一颗闪闪发光的#cFF0000#{_INFOMSG%s}#H#cff99cc，宝石属性大幅度得到提升！",
  "#{_INFOUSR%s} #cff99cc在#G洛阳（258，252）#Y宝石工匠#cff99cc处成功琢刻了一颗闪闪发光的#cFF0000#{_INFOMSG%s}#H#cff99cc，宝石属性大幅度得到提升！", 
}

x900030_g_Gem = 
{
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521305,50502007,50503001,50504002,50511002,50514001,50513004,50512006, },
{ 50502008,50521405,50503001,50504002,50511002,50514001,50513004,50512008, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521205,50502006,50503001,50504002,50511002,50514001,50513004,50512007, },
{ 50502008,50521405,50503001,50504002,50511002,50514001,50513004,50512008, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521205,50502006,50503001,50504002,50511002,50514001,50513004,50512007, },
{ 50521305,50502007,50503001,50504002,50511002,50514001,50513004,50512006, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50502008,50521405,50503001,50504002,50511002,50514001,50513004,50512008, },
}

--**********************************
--事件交互入口
--**********************************
function x900030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"       #G装备工坊#W与#G宝石工坊#W选项，可以打开#G装备打孔#W、#G宝石镶嵌和宝石摘除#W、装备强化#W、#G一键四孔#W、#G装备刻铭#W、#G装备琢刻#W等全功能操作。")
		--AddText(sceneId,"       #b#cFF0000注：各位玩家，请不要用5个8.8去合成，合出来的9.8属性于8.8相同，如果不听劝告，后果本服概不负责！（8.1，8.2之内的，都是）请玩家自行注意！。")

		AddNumText( sceneId,x900030_g_scriptId,"#G宝石工坊",6,30)
		AddNumText( sceneId,x900030_g_scriptId,"#G装备工坊",6,20)
		AddNumText( sceneId,x900030_g_scriptId, "#gFF0FA0装备耐久度修理",6,616)
		AddNumText( sceneId,x900030_g_scriptId, "我要学习精炼（锻造）配方", 2, 919 )
		AddNumText( sceneId,x900030_g_scriptId, "我要学习精制（缝纫）配方", 2, 818 )
		AddNumText( sceneId,x900030_g_scriptId, "我要学习精工（工艺）配方", 2, 717 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x900030_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 20 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #W可在此进行#G装备强化#I以及装备鉴定任何功能操作#I，装备鉴定资质后，即可通过#G重新鉴定资质操作#r #W提示:#G时装#W、#G坐骑#W、#G武魂#W、#G龙纹#W、不支持强化及鉴定服务。" )
				AddNumText(sceneId, x900030_g_scriptId,"装备资质鉴定   ", 6, 501)
				AddNumText(sceneId, x900030_g_scriptId,"重新鉴定装备资质   ", 6, 502)
				AddNumText(sceneId, x900030_g_scriptId,"#G装备强化     ", 6, 503)
				AddNumText(sceneId, x900030_g_scriptId,"增加可修炼次数  ", 6, 504)
				AddNumText(sceneId, x900030_g_scriptId,"#G装备刻铭  ", 6, 505)
				AddNumText(sceneId, x900030_g_scriptId,"装备除铭  ", 6, 506)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 30 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #G一键镶嵌#W前请确保自己已经#G加入门派#W，请将需要镶嵌宝石的#G装备#W放置包裹中，点击#G一键镶嵌#W功能后，您包裹所有的装备会自动按照门派属性镶嵌属于自己的全部#Y四级宝石#W。" )
				--AddNumText(sceneId, x900030_g_scriptId,"#G一键镶嵌   #cFF0000【背包一键宝石】", 6, 300)
				--AddNumText(sceneId, x900030_g_scriptId,"#G一键打孔   #cFF0000【背包一键四孔】", 6, 301)
				AddNumText(sceneId, x900030_g_scriptId,"#G宝石合成   ", 6, 303)
				AddNumText(sceneId, x900030_g_scriptId,"#G装备打孔   ", 6, 309111)
				AddNumText(sceneId, x900030_g_scriptId,"#G宝石镶嵌   ", 6, 306)
				AddNumText(sceneId, x900030_g_scriptId,"#G宝石摘除    ", 6, 304)
				AddNumText(sceneId, x900030_g_scriptId,"#G极限打孔   ", 6, 302)
				AddNumText( sceneId,x900030_g_scriptId,"#G极限镶嵌   ", 6, 9 )
				AddNumText( sceneId,x900030_g_scriptId,"#G极限摘除     ", 6, 16 )
				AddNumText(sceneId, x900030_g_scriptId,"#G宝石雕琢     ", 6, 307)
				--AddNumText(sceneId, x900030_g_scriptId,"宝石熔炼     ", 6, 308)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

		if GetNumText() == 9 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 751107 )
		return
		end	

	--if GetNumText() == 10 then
			--BeginEvent(sceneId)	
				--AddText( sceneId, "11111111111111" )
			--EndEvent(sceneId)
			--DispatchEventList(sceneId,selfId,targetId)
			--return
	--end

	if GetNumText() == 16 then

	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 25702 )
	return
    end

	if GetNumText() == 26 then
		for i, ImpactId in x900030_g_Impact do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
				LuaFnCancelSpecificImpact(sceneId,selfId,ImpactId)			
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end

	if GetNumText() == 11 then
			BeginEvent(sceneId)	
				AddText( sceneId, "    时装点缀前,请您登陆到我们#Y网站后台#W,对点缀时装进行#cFF0000打孔#W，否则不能操作。" )
				AddText( sceneId, "    点缀时装需要#G时装配饰点缀符#W一个,合成时装宝石需要#Y时装配饰加工符#W一个,必须在尹天彩处进行操作。" )
				AddText( sceneId, "    时装宝石摘除请使用#Y高级宝石摘除符#W,请参照以下材料。#r#G时装宝石1级#W使用#Y高级宝石摘除符6级" )
				AddText( sceneId, "#G时装宝石2级#W使用#Y高级宝石摘除符7级#r#G时装宝石3级#W使用#Y高级宝石摘除符8级#r#G时装宝石4级#W使用#Y高级宝石摘除符9级" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	end

	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	end

	if GetNumText() == 2 then
		BeginEvent(sceneId)	
			AddText( sceneId, "    清除时装特效是在您时装点缀后，由于电脑配置问题，感觉游戏不流畅时使用。" )
			AddText( sceneId, "    时装特效清除后，不可免费领取，必须将宝石摘除后，重新点缀后才可重新获取特效，#cFF0000请您谨慎操作!!!" )
			AddNumText( sceneId,x900030_g_scriptId,"#gFF0FA0我要清除效果",6,26)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

		if GetNumText() == 300 then
		local MemPai=GetMissionData( sceneId, selfId, MD_SHUANGXIANGPAO_LASTTIME )
		--if MemPai < 1 then
		--	x900030_NotifyTip( sceneId, selfId, "您还不能打宝石，请您加入门派后再来。" )
		--	return
		--end
		if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
			x900030_NotifyTip( sceneId, selfId, "  你的背包材料栏没有空间了，整理留出一格后再来找我。" )
			return
		end
		local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18 } --8,坐骑,17暗器
		local	Bore_Count			= GetBagGemCount( sceneId, selfId, 0 )
		local nLevel					= GetBagItemLevel( sceneId, selfId, 0 )
		local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, 0 )
		local find						= 0
		local bagbegin = GetBasicBagStartPos(sceneId, selfId)
		local bagend = GetBasicBagEndPos(sceneId, selfId)		
		for i=bagbegin, bagend do
			local itemIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )			
			if itemIndex>0 then
				local ret = LuaFnIsItemLocked( sceneId, selfId, i )
				if ret ~= 0 then
					return
				end	
				local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )				
				local find = 0
			for i, gem in tEquipGemTable do
				if gem == EquipType then
					find = 1
				end
			end
				if find == 1 then	
					local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )					
					while equipMaxGemCount<3 do				
						local ret = AddBagItemSlot( sceneId, selfId, i )
						equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )			
					end
            AddBagItemSlotFour( sceneId, selfId, i )
				end
			end
	--	end
				
              AddBagItemSlot( sceneId, selfId, 0 )
              AddBagItemSlot( sceneId, selfId, 1 )
              AddBagItemSlot( sceneId, selfId, 2 )
              AddBagItemSlot( sceneId, selfId, 3 )
              AddBagItemSlot( sceneId, selfId, 4 )
              AddBagItemSlot( sceneId, selfId, 5 )
              AddBagItemSlot( sceneId, selfId, 6 )
              AddBagItemSlot( sceneId, selfId, 7 )
              AddBagItemSlot( sceneId, selfId, 8 )
              AddBagItemSlot( sceneId, selfId, 9 )
              AddBagItemSlot( sceneId, selfId, 10 )
              AddBagItemSlot( sceneId, selfId, 11 )
              AddBagItemSlot( sceneId, selfId, 12 )
              AddBagItemSlot( sceneId, selfId, 13 )
              AddBagItemSlot( sceneId, selfId, 14 )
              AddBagItemSlot( sceneId, selfId, 15 )
              AddBagItemSlot( sceneId, selfId, 16 )
              AddBagItemSlot( sceneId, selfId, 17 )
              AddBagItemSlot( sceneId, selfId, 18 )
              AddBagItemSlot( sceneId, selfId, 19 )
              AddBagItemSlot( sceneId, selfId, 20 )
              AddBagItemSlot( sceneId, selfId, 21 )
              AddBagItemSlot( sceneId, selfId, 22 )
              AddBagItemSlot( sceneId, selfId, 23 )
              AddBagItemSlot( sceneId, selfId, 24 )
              AddBagItemSlot( sceneId, selfId, 25 )
              AddBagItemSlot( sceneId, selfId, 26 )
              AddBagItemSlot( sceneId, selfId, 27 )
              AddBagItemSlot( sceneId, selfId, 28 )
              AddBagItemSlot( sceneId, selfId, 29 )

				local can = 1
				-- 判断是否还可以镶嵌更多宝石
				local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )
				local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, i )

				--modi:lby是否可以镶嵌
				if equipMaxGemCount <= equipEmbededGemCount or equipMaxGemCount == 0 then
					can = 0
				end

				if can == 1 then
					local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )	
					if EquipType == 0 or EquipType == 6 or EquipType == 7 or EquipType == 8 or EquipType == 11 or EquipType == 12 or EquipType == 13 or EquipType == 14 or EquipType == 17 or EquipType == 18 or EquipType == 10 then

						local nMenpai = GetMenPai(sceneId, selfId)
						local Gem = x900030_g_Gem[nMenpai + 1]
						local gemEmbededIdx = -1
						local gemYi = 0
						for j=1, 4 do
							local gemType = LuaFnGetItemType(Gem[j])
							for k = 0, equipMaxGemCount - 1 do
								gemEmbededIdx = GetGemEmbededType( sceneId, selfId, i, k )
								local Type = LuaFnGetItemType( gemEmbededIdx )
								if Type == gemType then
									-- 对比两颗宝石的类型（宝石大类）
									gemYi = 1
								end
							end
							if gemYi == 0 then
								local BagIndex = TryRecieveItem( sceneId, selfId, Gem[j], QUALITY_MUST_BE_CHANGE)
								GemEnchasing( sceneId, selfId, BagIndex, i )
							end
						end
					elseif EquipType == 1 or EquipType == 2 or EquipType == 3 or EquipType == 4 or EquipType == 5 or EquipType == 15 or EquipType == 16 or EquipType == 9 then
						local nMenpai = GetMenPai(sceneId, selfId)
						local Gem = x900030_g_Gem[nMenpai + 1]
						local gemEmbededIdx = -1
						local gemYi = 0
						for j=5, 8 do
							local gemType = LuaFnGetItemType(Gem[j])
							for k = 0, equipMaxGemCount - 1 do
								gemEmbededIdx = GetGemEmbededType( sceneId, selfId, i, k )
								local Type = LuaFnGetItemType( gemEmbededIdx )
								if Type == gemType then
									-- 对比两颗宝石的类型（宝石大类）
									gemYi = 1
								end
							end
							if gemYi == 0 then
								local BagIndex = TryRecieveItem( sceneId, selfId, Gem[j], QUALITY_MUST_BE_CHANGE)
								GemEnchasing( sceneId, selfId, BagIndex, i )
							end
						end
					end
				end --can == 1
end
		

		x900030_NotifyTip( sceneId, selfId, "恭喜您，您背包里所有的装备均已全部镶嵌了[#R3级宝石#Y]。" )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)

		end


	if GetNumText() == 306 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  19830424)
	end

	if GetNumText()==501 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )
	end
	if GetNumText()==502 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112233 )
	end
	if GetNumText()==503 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1002 )
	end
	if GetNumText()==504 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1004)
	end
	if GetNumText()==505 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1005)
	end
	if GetNumText()==506 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1006)
	end
	if GetNumText()==302 then
		--BeginUICommand( sceneId )
		--UICommand_AddInt( sceneId, selfId )
		--UICommand_AddInt( sceneId, 1 )--type，点金之箭
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "请选择极限打孔的方式：" )
		AddNumText( sceneId, x001101_g_ScriptId, "使用点金之箭打孔", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "使用寒玉精粹打孔", 6, 11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 10 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )		--type，区分点金还是寒玉
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	
	elseif GetNumText() == 11 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )		--type，区分点金还是寒玉
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )


	end
	if GetNumText()==303 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 23 )
	end
	if GetNumText()==304 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 27 )
	end
	if GetNumText()==309111 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 25 )
	end
	if GetNumText()==305 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810424 )
	end
	if GetNumText()==307 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112236 )
	end
	if GetNumText()==308 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112237 )
	end

		if GetNumText() == 301 then
		local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8,9,10, 12, 14, 15, 16, 17, 18 } --8,坐骑,17暗器
		local	Bore_Count			= GetBagGemCount( sceneId, selfId, 0 )
		local nLevel					= GetBagItemLevel( sceneId, selfId, 0 )
		local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, 0 )
		local find						= 0
		local bagbegin = GetBasicBagStartPos(sceneId, selfId)
		local bagend = GetBasicBagEndPos(sceneId, selfId)		
		for i=bagbegin, bagend do
			local itemIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )			
			if itemIndex>0 then
				local ret = LuaFnIsItemLocked( sceneId, selfId, i )
				if ret ~= 0 then
					return
				end	
				local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )				
				local find = 0
			for i, gem in tEquipGemTable do
				if gem == EquipType then
					find = 1
				end
			end
				if find == 1 then	
					local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )					
					while equipMaxGemCount<3 do				
						local ret = AddBagItemSlot( sceneId, selfId, i )
						equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )			
					end
            AddBagItemSlotFour( sceneId, selfId, i )
				end
			end
		end
				
              AddBagItemSlot( sceneId, selfId, 0 )
              AddBagItemSlot( sceneId, selfId, 1 )
              AddBagItemSlot( sceneId, selfId, 2 )
              AddBagItemSlot( sceneId, selfId, 3 )
              AddBagItemSlot( sceneId, selfId, 4 )
              AddBagItemSlot( sceneId, selfId, 5 )
              AddBagItemSlot( sceneId, selfId, 6 )
              AddBagItemSlot( sceneId, selfId, 7 )
              AddBagItemSlot( sceneId, selfId, 8 )
              AddBagItemSlot( sceneId, selfId, 9 )
              AddBagItemSlot( sceneId, selfId, 10 )
              AddBagItemSlot( sceneId, selfId, 11 )
              AddBagItemSlot( sceneId, selfId, 12 )
              AddBagItemSlot( sceneId, selfId, 13 )
              AddBagItemSlot( sceneId, selfId, 14 )
              AddBagItemSlot( sceneId, selfId, 15 )
              AddBagItemSlot( sceneId, selfId, 16 )
              AddBagItemSlot( sceneId, selfId, 17 )
              AddBagItemSlot( sceneId, selfId, 18 )
              AddBagItemSlot( sceneId, selfId, 19 )
              AddBagItemSlot( sceneId, selfId, 20 )
              AddBagItemSlot( sceneId, selfId, 21 )
              AddBagItemSlot( sceneId, selfId, 22 )
              AddBagItemSlot( sceneId, selfId, 23 )
              AddBagItemSlot( sceneId, selfId, 24 )
              AddBagItemSlot( sceneId, selfId, 25 )
              AddBagItemSlot( sceneId, selfId, 26 )
              AddBagItemSlot( sceneId, selfId, 27 )
              AddBagItemSlot( sceneId, selfId, 28 )
              AddBagItemSlot( sceneId, selfId, 29 )
		x900030_NotifyTip( sceneId, selfId, "包裹所有装备已成功开启4孔。" )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end
	
	if GetNumText() == 919 then
		if QueryHumanAbilityLevel( sceneId, selfId, 46 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 46, 1 )
		end
		for i = 644, 703 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x000061_MsgBox( sceneId, selfId, targetId, "    恭喜你已经学会了所有的精炼配方。" )
    end
	if GetNumText() == 818 then
		if QueryHumanAbilityLevel( sceneId, selfId, 47 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 47, 1 )
		end
		for i = 704, 773 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		for i = 804, 883 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x000061_MsgBox( sceneId, selfId, targetId, "    恭喜你已经学会了所有的精制配方。" )
	end
	if GetNumText() == 717 then
		if QueryHumanAbilityLevel( sceneId, selfId, 48 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 48, 1 )
		end
		for i = 774, 803 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		
		for i = 1064, 1075 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
 		
		x000061_MsgBox( sceneId, selfId, targetId, "    恭喜你已经学会了所有的精工配方。" )
	end
	
	if GetNumText() == 616 then
		--PrintNum(sceneId )
		--PrintNum(targetId )

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )
	end	

end
--**********************************
--对话窗口信息提示
--**********************************
function x900030_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end
--**********************************
--接受此NPC的任务
--**********************************
function x900030_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x900030_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表

end

--**********************************
--继续（已经接了任务）
--**********************************
function x900030_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--消息提示
--**********************************
function x900030_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x900030_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x900030_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x900030_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x900030_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x900030_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end


--**********************************
--提交已做完的任务
--**********************************
function x900030_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

end

--**********************************
--死亡事件
--**********************************
function x900030_OnDie( sceneId, selfId, killerId )
end

--**********************************
--醒目提示
--**********************************
function x900030_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

