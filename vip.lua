--��ͼ���͵�NPC

x900020_g_ScriptId	= 900020

--**********************************
--�¼��������
--**********************************
function x900020_OnDefaultEvent( sceneId, selfId, targetId )
        RestoreHp( sceneId, selfId ) --��Ѫ
        RestoreMp( sceneId, selfId ) --����
	    RestoreRage( sceneId, selfId ) --��ŭ
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	BeginEvent( sceneId )
			AddText( sceneId, "#eaf0c14#Y��ӭ���������˲���΢΢�ı�������ȹ��������յĿ�������������" )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c���е�ͼ���͡��۹�������", 9, 600 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c���ɵ�ͼ���͡����ʦ�š�", 9, 900 )			
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7cҰ��BOSS���͡����ز��ϡ�", 9, 100 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c��ĹBOSS���͡����ز��ϡ�", 9, 200 )			
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����BOSS���͡����ز��ϡ�", 9, 300 )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�������д��͡��������", 9, 400 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c�����ͼ���͡���������", 9, 500 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c�����ͼ���͡���������", 9, 1000 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7cҰ���ͼ���͡��߼���ͼ��", 9, 800 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7cҰ��ɽ�����͡��һ���ͼ��", 9, 700 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x900020_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ����" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ԭ  С��", 9, 101)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  ����", 9, 102)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ɽ  ���", 9, 103)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  ���", 9, 104)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  С��", 9, 110)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ľͰ��", 9, 105)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cĦ�¶�����", 9, 111)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cѩԭ�����", 9, 107)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�ػʵع�һ", 9, 106)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�ػʵع���", 9, 108)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�ػʵع���", 9, 109)	
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 101 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 20, 152, 106, 10 )
	end

	if GetNumText() == 110 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 125, 135, 10 )
	end
	
	if GetNumText() == 106 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 400, 58, 205, 10 )
	end	
	
	if GetNumText() == 108 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 401, 165, 156, 10 )
	end	
	
	if GetNumText() == 109 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 402, 128, 84, 10 )
	end	

	if GetNumText() == 102 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 32, 140, 172, 10 )
	end

	if GetNumText() == 103 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 59, 247, 10 )
	end

	if GetNumText() == 104 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 39, 182, 202, 10 )
	end

	if GetNumText() == 105 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 150, 129, 24, 10 )
	end

	if GetNumText() == 107 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 188, 79, 38, 10 )
	end

	if GetNumText() == 111 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 170, 216, 176, 10 )

	end

	if GetNumText() == 200 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ���ͣ�" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺһ�㡾�߼��򱦡�", 9, 201)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺ���㡾�߼��򱦡�", 9, 202)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺ���㡾�߼��򱦡�", 9, 203)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺ�Ĳ㡾�߼��򱦡�", 9, 204)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺ��㡾�߼��򱦡�", 9, 205)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺ���㡾�߼��򱦡�", 9, 206)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ĺ�߲㡾�߼��򱦡�", 9, 207)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c��Ĺ�˲㡾�߼��򱦡�", 9, 208)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c��Ĺ�Ų㡾�߼��򱦡�", 9, 209)			
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 201 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 159, 107, 87, 10 )
	end

	if GetNumText() == 202 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 160, 107, 34, 10 )
	end

	if GetNumText() == 203 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 161, 109, 99, 10 )
	end

	if GetNumText() == 204 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 162, 49, 36, 10 )
	end

	if GetNumText() == 205 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 163, 102, 43, 10 )
	end

	if GetNumText() == 206 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 164, 65, 62, 10 )
	end

	if GetNumText() == 207 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 165, 100, 85, 10 )
	end

	if GetNumText() == 208 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 166, 87, 21, 10 )
	end

	if GetNumText() == 209 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 167, 53, 74, 10 )
	end

	if GetNumText() == 300 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ���ͣ�" )
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c������С����", 9, 330)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�����������", 9, 331)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ǧ�������", 9, 332)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�������ɲݡ�", 9, 333)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c������˪Ӱ��", 9, 334)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���ػ����֡�", 9, 335)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��̫�����֡�", 9, 336)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���������֡�", 9, 337)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ɽ�м���", 9, 338)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���㱱�м���", 9, 339)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���Ϻ��߼���", 9, 340)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����گ�߼���", 9, 341)			
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 330 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 138, 135, 10 )
	end

	if GetNumText() == 331 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 141, 113, 10 )
	end

	if GetNumText() == 332 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 172, 34, 10 )
	end

	if GetNumText() == 333 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 99, 37, 10 )
	end

	if GetNumText() == 334 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 40, 261, 10 )
	end

	if GetNumText() == 335 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 8, 152, 115, 10 )
	end

	if GetNumText() == 336 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 4, 132, 144, 10 )
	end

	if GetNumText() == 337 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 30, 154, 119, 10 )
	end

	if GetNumText() == 338 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 153, 192, 10 )
	end

	if GetNumText() == 339 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 19, 175, 105, 10 )
	end

	if GetNumText() == 340 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 254, 180, 10 )
	end

	if GetNumText() == 341 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 120, 115, 10 )
	end

	if GetNumText() == 600 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ����" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  �̻�", 9, 601)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  �Ŷ�", 9, 607)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  ����", 9, 602)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����������", 9, 604)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  ����", 9, 605)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c¥��  �ų�", 9, 606)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c  ���䵺  ", 9, 603)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c  ʥ��ɽ  ", 9, 608)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c  ҹ����  ", 9, 609)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 601 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
	end
	if GetNumText() == 607 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
	end	

	if GetNumText() == 602 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114, 162, 10 )
	end

	if GetNumText() == 604 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
	end

	if GetNumText() == 605 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 202, 211, 10 )
	end

	if GetNumText() == 606 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 287, 132, 10 )
	end
	
	if GetNumText() == 603 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 39, 88, 32, 10 )
	end

	if GetNumText() == 608 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 230, 226, 10 )
	end

	if GetNumText() == 609 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 121, 84, 48, 10 )
	end
	
	if GetNumText() == 400 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G�װ�����ң���ӭʹ�ø���ר�ô���" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c������������������", 9, 401)	
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�����������������", 9, 402)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c������������������", 9, 403)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c¥����������������", 9, 404)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c¥��Ѱ������������", 9, 405)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c̫�������롾������", 9, 406)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c¥����翷塾������", 9, 407)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c������˷ˡ�������", 9, 408)						

		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 401 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 202, 58, 10 )
	end

	if GetNumText() == 402 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 268, 87, 10 )
	end

	if GetNumText() == 403 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 61, 162, 10 )
	end

	if GetNumText() == 404 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 293, 68, 10 )
	end

	if GetNumText() == 405 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 162, 77, 10 )
	end

	if GetNumText() == 406 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 4, 71, 119, 10 )
	end
	
	if GetNumText() == 407 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 190, 222, 10 )
	end
		
	if GetNumText() == 408 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 200, 54, 10 )
	end
		
	if GetNumText() == 500 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ���ͣ�" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����    ����������", 9, 501)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ɽ  ����������", 9, 502)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�ػ�    ����������", 9, 503)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ɽ    ����������", 9, 504)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����    ����������", 9, 505)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����    ����������", 9, 506)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����    ����������", 9, 507)			
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ȫ    ����������", 9, 508)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ɽ    ����������", 9, 509)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�㱱    ����������", 9, 510)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����    ����������", 9, 511)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cʯ��    ����������", 9, 512)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 501 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 7, 42, 277, 10 )
	end

	if GetNumText() == 502 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 6, 47, 170, 10 )
	end

	if GetNumText() == 503 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 8, 252, 147, 10 )
	end

	if GetNumText() == 504 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 3, 42, 54, 10 )
	end

	if GetNumText() == 505 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 30, 44, 52, 10 )
	end

	if GetNumText() == 506 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 24, 280, 37, 10 )
	end

	if GetNumText() == 507 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 18, 244, 81, 10 )
	end

	if GetNumText() == 508 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 31, 42, 267, 10 )
	end

	if GetNumText() == 509 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 164, 57, 10 )
	end

	if GetNumText() == 510 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 19, 229, 272, 10 )
	end

	if GetNumText() == 511 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 32, 193, 48, 10 )
	end

	if GetNumText() == 512 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 26, 261, 127, 10 )
	end

	if GetNumText() == 700 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ���ͣ�" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cɽ�����롾������ͼ��", 9, 704)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ڣ    ��������ͼ��", 9, 705)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cĦ�¶�  ��������ͼ��", 9, 706)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cҰ�˹�  ��������ͼ��", 9, 707)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c��Ȫ��  ��������ͼ��", 9, 708)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c������  ��������ͼ��", 9, 709)			
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���ϳ�  ��������ͼ��", 9, 710)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���˶�  ��������ͼ��", 9, 711)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cˮ����  ��������ͼ��", 9, 712)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c������  ��������ͼ��", 9, 713)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���������������ͼ��", 9, 714)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ɳ�οӡ�������ͼ��", 9, 715)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�һ�Դ  ��������ͼ��", 9, 716)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c������  ��������ͼ��", 9, 717)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7cѩ�Ǻ�  ��������ͼ��", 9, 718)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 704 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 168, 26, 216, 10 )
	end

	if GetNumText() == 705 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 169, 20, 20, 10 )
	end

	if GetNumText() == 706 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 170, 22, 225, 10 )
	end

	if GetNumText() == 707 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 171, 27, 66, 10 )
	end

	if GetNumText() == 708 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 172, 36, 236, 10 )
	end

	if GetNumText() == 709 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 173, 110, 221, 10 )
	end

	if GetNumText() == 710 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 156, 41, 218, 10 )
	end

	if GetNumText() == 711 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 157, 89, 234, 10 )
	end

	if GetNumText() == 712 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 174, 230, 230, 10 )
	end

	if GetNumText() == 713 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 175, 127, 26, 10 )
	end

	if GetNumText() == 714 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 176, 235, 25, 10 )
	end

	if GetNumText() == 715 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 517, 97, 95, 10 )
	end

	if GetNumText() == 716 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 177, 25, 23, 10 )
	end

	if GetNumText() == 717 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 178, 47, 223, 10 )
	end

	if GetNumText() == 718 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 179, 114, 219, 10 )
	end

	if GetNumText() == 800 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ���ͣ�" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ɽ  ��������ͼ��", 9, 801)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�����  ��������ͼ��", 9, 802)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�߲�    ��������ͼ��", 9, 803)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�߲��Թ���������ͼ��", 9, 804)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ľ  ��������ͼ��", 9, 805)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�������꡾������ͼ��", 9, 806)
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ɽ  ��������ͼ��", 9, 807)
			--AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c���ظ��ء�������ͼ��", 9, 808)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����    ��������ͼ��", 9, 809)			
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ѫ��  ��������ͼ��", 9, 810)
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c���������������ͼ��", 9, 811)
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cʥ��  ��������ͼ��", 9, 812)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 801 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 423, 223, 29, 10 )
	end

	if GetNumText() == 802 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 519, 71, 29, 10 )
	end

	if GetNumText() == 803 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 424, 31, 38, 10 )
	end

	if GetNumText() == 804 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 520, 100, 99, 10 )
	end

	if GetNumText() == 805 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 425, 32, 29, 10 )
	end

	if GetNumText() == 806 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 427, 28, 24, 10 )
	end

	if GetNumText() == 807 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 541, 109, 19, 10 )
	end

	if GetNumText() == 808 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
	end

	if GetNumText() == 809 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 431, 193, 222, 10 )
	end

	if GetNumText() == 810 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 432, 88, 91, 10 )
	end

	if GetNumText() == 811 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 536, 40, 217, 10 )
	end

	if GetNumText() == 812 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 537, 25, 97, 10 )
	end

	if GetNumText() == 900 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ����Ҫǰ�������ɣ�" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  �����ɵ�ͼ��", 9, 901)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7cؤ��  �����ɵ�ͼ��", 9, 902)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  �����ɵ�ͼ��", 9, 903)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�䵱  �����ɵ�ͼ��", 9, 904)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  �����ɵ�ͼ��", 9, 905)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��ң  �����ɵ�ͼ��", 9, 906)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����  �����ɵ�ͼ��", 9, 907)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����  �����ɵ�ͼ��", 9, 908)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c��ɽ  �����ɵ�ͼ��", 9, 909)			
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 901 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 9, 95, 84, 10 )
	end

	if GetNumText() == 902 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 10, 92, 79, 10 )
	end

	if GetNumText() == 903 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 11, 97, 108, 10 )
	end

	if GetNumText() == 904 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 12, 77, 98, 10 )
	end

	if GetNumText() == 905 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 13, 95, 91, 10 )
	end

	if GetNumText() == 906 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 14, 118, 149, 10 )
	end

	if GetNumText() == 907 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 15, 95, 87, 10 )
	end

	if GetNumText() == 908 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 16, 96, 95, 10 )
	end

	if GetNumText() == 909 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 17, 94, 63, 10 )
	end

	if GetNumText() == 1000 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G��ѡ��������Ҫǰ���ĵ�ͼ���ͣ�" )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c��ԭ    ����������", 9, 1001)
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c÷��    ����������", 9, 1002)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��Ϫ    ����������", 9, 1003)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����    ����������", 9, 1004)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c����ѩԭ����������", 9, 1005)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�Ϻ�    ����������", 9, 1006)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c��گ    ����������", 9, 1007)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c�κ�    ����������", 9, 1008)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����ɽ  ����������", 9, 1009)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c����    ����������", 9, 1010)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c�置    ����������", 9, 1011)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c������  ����������", 9, 1012)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 1001 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 20, 194, 230, 10 )
	end

	if GetNumText() == 1002 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 33, 180, 72, 10 )
	end

	if GetNumText() == 1003 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 27, 44, 53, 10 )
	end

	if GetNumText() == 1004 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 21, 161, 199, 10 )
	end

	if GetNumText() == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 188, 60, 222, 10 )
	end

	if GetNumText() == 1006 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 205, 260, 10 )
	end

	if GetNumText() == 1007 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 185, 44, 10 )
	end

	if GetNumText() == 1008 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 415, 46, 27, 10 )
	end

	if GetNumText() == 1009 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 22, 154, 112, 10 )
	end

	if GetNumText() == 1010 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 35, 276, 277, 10 )
	end

    if GetNumText() == 1011 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 29, 69, 40, 10 )
	end

	if GetNumText() == 1012 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 23, 45, 177, 10 )
	end

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x900020_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end



