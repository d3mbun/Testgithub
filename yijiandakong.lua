--�ű���


x900030_g_scriptId = 900030

x900030_g_strGongGaoInfo = {
  "#{_INFOUSR%s} #cff99cc��#G������258��252��#Y��ʯ����#cff99cc���ɹ�������һ�����������#cFF0000#{_INFOMSG%s}#H#cff99cc����ʯ���Դ���ȵõ�������", 
  "#{_INFOUSR%s} #cff99cc��#G������258��252��#Y��ʯ����#cff99cc���ɹ�������һ�����������#cFF0000#{_INFOMSG%s}#H#cff99cc����ʯ���Դ���ȵõ�������", 
  "#{_INFOUSR%s} #cff99cc��#G������258��252��#Y��ʯ����#cff99cc���ɹ�������һ�����������#cFF0000#{_INFOMSG%s}#H#cff99cc����ʯ���Դ���ȵõ�������",
  "#{_INFOUSR%s} #cff99cc��#G������258��252��#Y��ʯ����#cff99cc���ɹ�������һ�����������#cFF0000#{_INFOMSG%s}#H#cff99cc����ʯ���Դ���ȵõ�������", 
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
--�¼��������
--**********************************
function x900030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"       #Gװ������#W��#G��ʯ����#Wѡ����Դ�#Gװ�����#W��#G��ʯ��Ƕ�ͱ�ʯժ��#W��װ��ǿ��#W��#Gһ���Ŀ�#W��#Gװ������#W��#Gװ������#W��ȫ���ܲ�����")
		--AddText(sceneId,"       #b#cFF0000ע����λ��ң��벻Ҫ��5��8.8ȥ�ϳɣ��ϳ�����9.8������8.8��ͬ���������Ȱ�棬��������Ų����𣡣�8.1��8.2֮�ڵģ����ǣ����������ע�⣡��")

		AddNumText( sceneId,x900030_g_scriptId,"#G��ʯ����",6,30)
		AddNumText( sceneId,x900030_g_scriptId,"#Gװ������",6,20)
		AddNumText( sceneId,x900030_g_scriptId, "#gFF0FA0װ���;ö�����",6,616)
		AddNumText( sceneId,x900030_g_scriptId, "��Ҫѧϰ���������죩�䷽", 2, 919 )
		AddNumText( sceneId,x900030_g_scriptId, "��Ҫѧϰ���ƣ����ң��䷽", 2, 818 )
		AddNumText( sceneId,x900030_g_scriptId, "��Ҫѧϰ���������գ��䷽", 2, 717 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x900030_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 20 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #W���ڴ˽���#Gװ��ǿ��#I�Լ�װ�������κι��ܲ���#I��װ���������ʺ󣬼���ͨ��#G���¼������ʲ���#r #W��ʾ:#Gʱװ#W��#G����#W��#G���#W��#G����#W����֧��ǿ������������" )
				AddNumText(sceneId, x900030_g_scriptId,"װ�����ʼ���   ", 6, 501)
				AddNumText(sceneId, x900030_g_scriptId,"���¼���װ������   ", 6, 502)
				AddNumText(sceneId, x900030_g_scriptId,"#Gװ��ǿ��     ", 6, 503)
				AddNumText(sceneId, x900030_g_scriptId,"���ӿ���������  ", 6, 504)
				AddNumText(sceneId, x900030_g_scriptId,"#Gװ������  ", 6, 505)
				AddNumText(sceneId, x900030_g_scriptId,"װ������  ", 6, 506)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 30 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #Gһ����Ƕ#Wǰ��ȷ���Լ��Ѿ�#G��������#W���뽫��Ҫ��Ƕ��ʯ��#Gװ��#W���ð����У����#Gһ����Ƕ#W���ܺ����������е�װ�����Զ���������������Ƕ�����Լ���ȫ��#Y�ļ���ʯ#W��" )
				--AddNumText(sceneId, x900030_g_scriptId,"#Gһ����Ƕ   #cFF0000������һ����ʯ��", 6, 300)
				--AddNumText(sceneId, x900030_g_scriptId,"#Gһ�����   #cFF0000������һ���Ŀס�", 6, 301)
				AddNumText(sceneId, x900030_g_scriptId,"#G��ʯ�ϳ�   ", 6, 303)
				AddNumText(sceneId, x900030_g_scriptId,"#Gװ�����   ", 6, 309111)
				AddNumText(sceneId, x900030_g_scriptId,"#G��ʯ��Ƕ   ", 6, 306)
				AddNumText(sceneId, x900030_g_scriptId,"#G��ʯժ��    ", 6, 304)
				AddNumText(sceneId, x900030_g_scriptId,"#G���޴��   ", 6, 302)
				AddNumText( sceneId,x900030_g_scriptId,"#G������Ƕ   ", 6, 9 )
				AddNumText( sceneId,x900030_g_scriptId,"#G����ժ��     ", 6, 16 )
				AddNumText(sceneId, x900030_g_scriptId,"#G��ʯ����     ", 6, 307)
				--AddNumText(sceneId, x900030_g_scriptId,"��ʯ����     ", 6, 308)
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
				AddText( sceneId, "    ʱװ��׺ǰ,������½������#Y��վ��̨#W,�Ե�׺ʱװ����#cFF0000���#W�������ܲ�����" )
				AddText( sceneId, "    ��׺ʱװ��Ҫ#Gʱװ���ε�׺��#Wһ��,�ϳ�ʱװ��ʯ��Ҫ#Yʱװ���μӹ���#Wһ��,����������ʴ����в�����" )
				AddText( sceneId, "    ʱװ��ʯժ����ʹ��#Y�߼���ʯժ����#W,��������²��ϡ�#r#Gʱװ��ʯ1��#Wʹ��#Y�߼���ʯժ����6��" )
				AddText( sceneId, "#Gʱװ��ʯ2��#Wʹ��#Y�߼���ʯժ����7��#r#Gʱװ��ʯ3��#Wʹ��#Y�߼���ʯժ����8��#r#Gʱװ��ʯ4��#Wʹ��#Y�߼���ʯժ����9��" )
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
			AddText( sceneId, "    ���ʱװ��Ч������ʱװ��׺�����ڵ����������⣬�о���Ϸ������ʱʹ�á�" )
			AddText( sceneId, "    ʱװ��Ч����󣬲��������ȡ�����뽫��ʯժ�������µ�׺��ſ����»�ȡ��Ч��#cFF0000������������!!!" )
			AddNumText( sceneId,x900030_g_scriptId,"#gFF0FA0��Ҫ���Ч��",6,26)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

		if GetNumText() == 300 then
		local MemPai=GetMissionData( sceneId, selfId, MD_SHUANGXIANGPAO_LASTTIME )
		--if MemPai < 1 then
		--	x900030_NotifyTip( sceneId, selfId, "�������ܴ�ʯ�������������ɺ�������" )
		--	return
		--end
		if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
			x900030_NotifyTip( sceneId, selfId, "  ��ı���������û�пռ��ˣ���������һ����������ҡ�" )
			return
		end
		local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18 } --8,����,17����
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
				-- �ж��Ƿ񻹿�����Ƕ���౦ʯ
				local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )
				local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, i )

				--modi:lby�Ƿ������Ƕ
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
									-- �Ա����ű�ʯ�����ͣ���ʯ���ࣩ
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
									-- �Ա����ű�ʯ�����ͣ���ʯ���ࣩ
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
		

		x900030_NotifyTip( sceneId, selfId, "��ϲ���������������е�װ������ȫ����Ƕ��[#R3����ʯ#Y]��" )
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
		--UICommand_AddInt( sceneId, 1 )--type�����֮��
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "��ѡ���޴�׵ķ�ʽ��" )
		AddNumText( sceneId, x001101_g_ScriptId, "ʹ�õ��֮�����", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "ʹ�ú��񾫴���", 6, 11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 10 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )		--type�����ֵ���Ǻ���
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	
	elseif GetNumText() == 11 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )		--type�����ֵ���Ǻ���
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
		local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8,9,10, 12, 14, 15, 16, 17, 18 } --8,����,17����
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
		x900030_NotifyTip( sceneId, selfId, "��������װ���ѳɹ�����4�ס�" )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end
	
	if GetNumText() == 919 then
		if QueryHumanAbilityLevel( sceneId, selfId, 46 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 46, 1 )
		end
		for i = 644, 703 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x000061_MsgBox( sceneId, selfId, targetId, "    ��ϲ���Ѿ�ѧ�������еľ����䷽��" )
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
		x000061_MsgBox( sceneId, selfId, targetId, "    ��ϲ���Ѿ�ѧ�������еľ����䷽��" )
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
 		
		x000061_MsgBox( sceneId, selfId, targetId, "    ��ϲ���Ѿ�ѧ�������еľ����䷽��" )
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
--�Ի�������Ϣ��ʾ
--**********************************
function x900030_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end
--**********************************
--���ܴ�NPC������
--**********************************
function x900030_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--�ܾ���NPC������
--**********************************
function x900030_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�

end

--**********************************
--�������Ѿ���������
--**********************************
function x900030_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--��Ϣ��ʾ
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
--�ύ�����������
--**********************************
function x900030_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

end

--**********************************
--�����¼�
--**********************************
function x900030_OnDie( sceneId, selfId, killerId )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x900030_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

