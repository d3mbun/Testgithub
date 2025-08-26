-- �콱NPC

x900003_g_scriptId = 900003

--**********************************
--�¼��������
--**********************************
function x900003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"��#cffcc88��ӭ���������˲�085���Ż��ɰ����������㱾�����Ż������һص�������黳��")
	AddNumText( sceneId, x900003_g_scriptId, "�������� ", 2, 300 )
	AddNumText( sceneId, x900003_g_scriptId, "�������� ", 2, 400 )
	AddNumText( sceneId, x900003_g_scriptId, "�޸����� ", 2, 500 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x900003_OnEventRequest( sceneId, selfId, targetId, scriptId )
	local	arg	= GetNumText()
	if arg == 100 then
		x900003_NotifyFailBox( sceneId, selfId, targetId, "��#R231��" )		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 197, 0)
		
	elseif arg== 300 then
		BeginEvent(sceneId)
		AddText(sceneId,"��#G�Ŵ�����#cffcc88����#Gƽ��#cffcc88����ѡ��һ�����Ƚ�#P��Ϥ#cffcc88�����ɣ����������ķ�Ϊ10����������#Gû������#cffcc88���ɡ�ֻҪ�������õ����������ȡ�н��׼�Ҳ��̽��ȡ�")
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [����]", 2, 310 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [��ң]", 2, 320 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [����]", 2, 330 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [��ɽ]", 2, 340 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [����]", 2, 350 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [��ü]", 2, 360 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [�䵱]", 2, 370 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [����]", 2, 380 )
		AddNumText( sceneId, x900003_g_scriptId, "����� #cFF0000 [ؤ��]", 2, 390 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 310 then --����
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G������#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88���ɹ�������#G������#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 320 then --��ң
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G��ң��#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G��ң��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 330 then --����
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G������#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G������#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 340 then --��ɽ
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G��ɽ��#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G��ɽ��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 350 then --����
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G������#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G������#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 360 then --��ü
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G��ü��#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G��ü��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 370 then --�䵱
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G�䵱��#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G�䵱��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 380 then --����
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#G����#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G����#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 390 then --ؤ��
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88���Ѿ�#G�����#cffcc88�����ˣ����������������Ҫ#G����ת����#cffcc88һ����" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P������#Gؤ��#P��#r#R��Ϸ��ô�࣬��ȴ��ѡ���ҡ��ǳ���л����֧�֣�Ϊ�˹����Ҳ��ܸ���ʲô������һ����ӱ���Ŭ��Ϊ������һ�������ļҡ�", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#Gؤ��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg== 400 then
		BeginEvent(sceneId)
		AddText(sceneId,"��#cffcc88������������֮ǰ��������ɣ�������ֻ��Ҫ#G����#cffcc88ӵ��һ��#G������ת���#cffcc88������������#G���¼���#cffcc88�������ɡ�")
		AddText(sceneId,"��#Pע�⣺#G����#cffcc88�����������ɺ�֮ǰ#Gϰ�õ��ķ�#cffcc88����#cFF0000����#cffcc88�������ء�")
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [����] ", 2, 410 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [��ң] ", 2, 420 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [����] ", 2, 430 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [��ɽ] ", 2, 440 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [����] ", 2, 450 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [��ü] ", 2, 460 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [�䵱] ", 2, 470 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [����] ", 2, 480 )
		AddNumText( sceneId, x900003_g_scriptId, "������ #cFF0000 [ؤ��] ", 2, 490 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 410 then  --����
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G������#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88���ɹ�������#G������#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 420 then --��ң
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G��ң��#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G��ң��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 430 then --����
		local mp = GetMenPai(sceneId, selfId)
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G������#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G������#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 440 then --��ɽ
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G��ɽ��#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G��ɽ��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 450 then --����
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G������#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G������#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 460 then --��ü
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G��ü��#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G��ü��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 470 then --�䵱
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106 ,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G�䵱��#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G�䵱��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 480 then --����
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#G����#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#G����#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 490 then --ؤ��
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#cffcc88������û��#G����ת����#cffcc88��������Ҳ�޼����°���" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "��#Pɾ��#G����ת����#Pʧ�ܣ���ȷ��#G��Ʒ#Pδ������" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#P��ϲ���#G["..nam.."]#P�ɹ�����ʦ�ţ�������#Gؤ��#P��", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88���ɹ�������#Gؤ��#cffcc88��ѧϰ��#G�����ķ�#cffcc88��ף����Ϸ��졭" )
	elseif arg == 500 then --�޸�����
		BeginEvent( sceneId )
		AddText( sceneId, "��#I�������ľ��鱬���˻����Ѿ����������ˣ�������������#G��Ҫ����#I��ֱ����ʾ��#P�޸����#IΪֹŶ��" )
		AddNumText(sceneId, x900003_g_scriptId, "��Ҫ����", 6, 520 )
		AddNumText(sceneId, x900003_g_scriptId, "�뿪", 6, 510 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
	elseif arg == 510 then --�޸�����
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	elseif arg == 520 then --�޸�����
		if GetExp(sceneId,selfId) < 0  then 
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
		for i = 0,1000  do
			AddExp(sceneId,selfId,GetExp(sceneId,selfId)*-1)
		end
		x900003_NotifyFailBox( sceneId, selfId, targetId,"��#I�Ѿ�Ϊ������˾��飬��#G�����������#Iֱ����ʾ�޸����Ϊֹ��")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		else
		BeginEvent( sceneId )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"��#I��ϲ��������#cFF0000�Ѿ��޸����#I�ˣ��´���ע�ⲻҪ�ڴ����ľ�����Ŷ��")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		end
	end
	
end
---**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x900003_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
	AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end