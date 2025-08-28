--иa � �i�m truy�n t�ng NPC

x900020_g_ScriptId	= 900020

--**********************************
--S� ki�n l�n nhau c�a v�o
--**********************************
function x900020_OnDefaultEvent( sceneId, selfId, targetId )
        RestoreHp( sceneId, selfId ) --Хy m�u
        RestoreMp( sceneId, selfId ) --Хy kh�
	    RestoreRage( sceneId, selfId ) --Хy n�
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	BeginEvent( sceneId )
			AddText( sceneId, "Hoan ngh�nh c�c h� l�a ch�n Truy�n t�ng!!!" )
			AddNumText( sceneId, x900020_g_ScriptId, " Th�nh th�", 9, 600 )
			AddNumText( sceneId, x900020_g_ScriptId, " M�n ph�i", 9, 900 )			
			AddNumText( sceneId, x900020_g_ScriptId, " BOSS D� ngo�i", 9, 100 )
			AddNumText( sceneId, x900020_g_ScriptId, " BOSS C� M�", 9, 200 )			
			AddNumText( sceneId, x900020_g_ScriptId, " BOSS T�t tranh", 9, 300 )
			AddNumText( sceneId, x900020_g_scriptId, " Ph� b�n", 9, 400 )
			AddNumText( sceneId, x900020_g_ScriptId, " B�n � nhi�m v� ch�nh tuy�n [S� nh�p]", 9, 500 )
			AddNumText( sceneId, x900020_g_ScriptId, " B�n � nhi�m v� ch�nh tuy�n [Cao th�]", 9, 1000 )
			AddNumText( sceneId, x900020_g_ScriptId, " D� ngo�i �a � luy�n c�p", 9, 800 )
			AddNumText( sceneId, x900020_g_ScriptId, " D� ngo�i s�n �ng luy�n c�p", 9, 700 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--S� ki�n li�t bi�u ch�n tr�ng m�t h�ng
--**********************************
function x900020_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i BOSS D� ngo�i:" )
			AddNumText( sceneId, x900020_g_scriptId, " Th�o Nguy�n B�ch Minh Kh�i", 9, 101)
			AddNumText( sceneId, x900020_g_scriptId, " V� Di B�ng Y�u", 9, 102)
			AddNumText( sceneId, x900020_g_scriptId, " Th߽ng S�n Huy�n K�ch Kim Cang", 9, 103)
			AddNumText( sceneId, x900020_g_scriptId, " Huy�n V� M�ng C� Chu C�p", 9, 104)		
			AddNumText( sceneId, x900020_g_scriptId, " K�nh H� H�n Giang Long", 9, 110)
			AddNumText( sceneId, x900020_g_scriptId, " B�o T�ng еng M�c D�ng B�", 9, 105)
			AddNumText( sceneId, x900020_g_scriptId, " Ma Nhai еng C�ng H�n", 9, 111)
			AddNumText( sceneId, x900020_g_scriptId, " Ng�n Ngai Tuy�t Nguy�n X� Nga V߽ng", 9, 107)
			AddNumText( sceneId, x900020_g_scriptId, " T�n Ho�ng иa Cung T�ng 1", 9, 106)
			AddNumText( sceneId, x900020_g_scriptId, " T�n Ho�ng иa Cung T�ng 2", 9, 108)			
			AddNumText( sceneId, x900020_g_scriptId, " T�n Ho�ng иa Cung T�ng 3", 9, 109)	
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i BOSS C� M�:" )
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 1", 9, 201)
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 2", 9, 202)
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 3", 9, 203)
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 4", 9, 204)
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 5", 9, 205)
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 6", 9, 206)
			AddNumText( sceneId, x900020_g_scriptId, " C� M� T�ng 7", 9, 207)
			AddNumText( sceneId, x900020_g_ScriptId, " C� M� T�ng 8", 9, 208)
			AddNumText( sceneId, x900020_g_ScriptId, " C� M� T�ng 9", 9, 209)			
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i BOSS T�t tranh:" )
			--AddNumText( sceneId, x900020_g_scriptId, "* K�nh H� H�n Giang Long", 9, 330)
			AddNumText( sceneId, x900020_g_scriptId, " B�o R߽ng Tranh �o�t", 9, 331)
			AddNumText( sceneId, x900020_g_scriptId, " Ng�n N�m Long Quy", 9, 332)
			AddNumText( sceneId, x900020_g_scriptId, " K�nh H� Ti�n Th�o", 9, 333)
			AddNumText( sceneId, x900020_g_scriptId, " Th�c H� S߽ng �nh", 9, 334)		
			AddNumText( sceneId, x900020_g_scriptId, " ��n Ho�ng T�n Th�", 9, 335)		
			AddNumText( sceneId, x900020_g_scriptId, " Th�i H� T�n Th�", 9, 336)		
			AddNumText( sceneId, x900020_g_scriptId, " T�y H� T�n Th�", 9, 337)
			AddNumText( sceneId, x900020_g_scriptId, " Th߽ng S�n Trung C�p", 9, 338)			
			AddNumText( sceneId, x900020_g_scriptId, " Nh�n b�c Trung C�p", 9, 339)		
			AddNumText( sceneId, x900020_g_scriptId, " Nam H�i Cao C�p", 9, 340)
			AddNumText( sceneId, x900020_g_scriptId, " Nam Chi�u Cao C�p", 9, 341)			
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i Th�nh th�:" )
			AddNumText( sceneId, x900020_g_scriptId, " L�c D߽ng - C�u Ch�u th߽ng h�i", 9, 601)
			AddNumText( sceneId, x900020_g_scriptId, " L�c D߽ng C� ��", 9, 607)			
			AddNumText( sceneId, x900020_g_scriptId, " T� Ch�u Th�nh tr�n", 9, 602)			
			AddNumText( sceneId, x900020_g_scriptId, " T� Ch�u - Thi�t T��ng Ph�", 9, 604)
			AddNumText( sceneId, x900020_g_scriptId, " Th�c H� C� tr�n", 9, 605)
			AddNumText( sceneId, x900020_g_scriptId, " L�u Lan C� th�nh", 9, 606)
			AddNumText( sceneId, x900020_g_scriptId, " Huy�n V� ��o  ", 9, 603)
			AddNumText( sceneId, x900020_g_scriptId, " Th�nh Th� S�n  ", 9, 608)
			AddNumText( sceneId, x900020_g_scriptId, " D� T�y H�  ", 9, 609)
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i Ph� b�n:" )
			AddNumText( sceneId, x900020_g_scriptId, " L�c D߽ng T�c C�u", 9, 401)	
			AddNumText( sceneId, x900020_g_scriptId, " Tr�n Long K� Cu�c", 9, 402)			
			AddNumText( sceneId, x900020_g_scriptId, " T� Ch�u Q123", 9, 403)
			AddNumText( sceneId, x900020_g_scriptId, " L�u Lan Q123", 9, 404)			
			AddNumText( sceneId, x900020_g_scriptId, " L�u Lan T�m B�o", 9, 405)
			AddNumText( sceneId, x900020_g_scriptId, " Th�i H� Y�n T� �", 9, 406)
			AddNumText( sceneId, x900020_g_scriptId, " L�u Lan Phi�u Mi�u Phong", 9, 407)
			AddNumText( sceneId, x900020_g_scriptId, " Di�t Ph� K�nh H�", 9, 408)						

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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i B�n � nhi�m v� ch�nh tuy�n [S� nh�p]:" )
			AddNumText( sceneId, x900020_g_scriptId, " Ki�m C�c", 9, 501)
			AddNumText( sceneId, x900020_g_scriptId, " V� L��ng S�n", 9, 502)
			AddNumText( sceneId, x900020_g_scriptId, " ��n Ho�ng", 9, 503)
			AddNumText( sceneId, x900020_g_scriptId, " Tung S�n", 9, 504)
			AddNumText( sceneId, x900020_g_scriptId, " T�y H�", 9, 505)
			AddNumText( sceneId, x900020_g_ScriptId, " Nh� H�i", 9, 506)
			AddNumText( sceneId, x900020_g_ScriptId, " Nh�n Nam", 9, 507)			
		    AddNumText( sceneId, x900020_g_scriptId, " Long Tuy�n", 9, 508)
			AddNumText( sceneId, x900020_g_scriptId, " Th߽ng S�n", 9, 509)
			AddNumText( sceneId, x900020_g_scriptId, " Nh�n B�c", 9, 510)
			AddNumText( sceneId, x900020_g_scriptId, " V� Di", 9, 511)
			AddNumText( sceneId, x900020_g_scriptId, " Th�ch L�m", 9, 512)
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i D� ngo�i s�n �ng luy�n c�p:" )
			AddNumText( sceneId, x900020_g_scriptId, " S�n еng Tuy�n �", 9, 704)
			AddNumText( sceneId, x900020_g_scriptId, " Ki�m Tr�ng", 9, 705)
			AddNumText( sceneId, x900020_g_scriptId, " Ma Nhai еng", 9, 706)
			AddNumText( sceneId, x900020_g_scriptId, " D� Nh�n C�c", 9, 707)
			AddNumText( sceneId, x900020_g_ScriptId, " �n Tuy�n еng", 9, 708)
			AddNumText( sceneId, x900020_g_ScriptId, " Ho�ng Long еng", 9, 709)			
		    AddNumText( sceneId, x900020_g_scriptId, " Th�o Li�u Tr߶ng", 9, 710)
			AddNumText( sceneId, x900020_g_scriptId, " Mi�u Nh�n еng", 9, 711)
			AddNumText( sceneId, x900020_g_scriptId, " Th�y K�nh H�", 9, 712)
			AddNumText( sceneId, x900020_g_scriptId, " Ti�n V߽ng Ph�n", 9, 713)
			AddNumText( sceneId, x900020_g_scriptId, " Thi�n Khanh Th� еng", 9, 714)
			AddNumText( sceneId, x900020_g_scriptId, " B�ch Sa Di�m Khanh", 9, 715)
			AddNumText( sceneId, x900020_g_scriptId, " ��o Hoa Nguy�n", 9, 716)
			AddNumText( sceneId, x900020_g_ScriptId, " H�i T�c еng", 9, 717)
			AddNumText( sceneId, x900020_g_ScriptId, " Tuy�t Lang H�", 9, 718)
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i D� ngo�i �a � luy�n c�p:" )
			AddNumText( sceneId, x900020_g_scriptId, " H�a Di�m S�n", 9, 801)
			AddNumText( sceneId, x900020_g_scriptId, " H�a Di�m C�c", 9, 802)
			AddNumText( sceneId, x900020_g_scriptId, " Cao X߽ng", 9, 803)
			AddNumText( sceneId, x900020_g_scriptId, " Cao X߽ng M� Cung", 9, 804)
			AddNumText( sceneId, x900020_g_scriptId, " Th�p L� M�c", 9, 805)
			AddNumText( sceneId, x900020_g_scriptId, " Th�p Kh�c L�p M� Can", 9, 806)
			--AddNumText( sceneId, x900020_g_scriptId, " C�n Lu�n S�n", 9, 807)
			--AddNumText( sceneId, x900020_g_ScriptId, " C�n Lu�n Ph�c иa", 9, 808)
			AddNumText( sceneId, x900020_g_ScriptId, " ��i Uy�n", 9, 809)			
		    AddNumText( sceneId, x900020_g_scriptId, " H�n Huy�t L�nh", 9, 810)
			--AddNumText( sceneId, x900020_g_scriptId, " T�t M� Nh� H�n", 9, 811)
			--AddNumText( sceneId, x900020_g_scriptId, " Th�nh H�a Cung", 9, 812)
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i M�n ph�i:" )
			AddNumText( sceneId, x900020_g_scriptId, " Thi�u L�m", 9, 901)
			AddNumText( sceneId, x900020_g_scriptId, " C�i Bang", 9, 902)
			AddNumText( sceneId, x900020_g_scriptId, " Minh Gi�o", 9, 903)
			AddNumText( sceneId, x900020_g_scriptId, " V� �ang", 9, 904)
			AddNumText( sceneId, x900020_g_scriptId, " Thi�n Long", 9, 905)
			AddNumText( sceneId, x900020_g_scriptId, " Ti�u Dao", 9, 906)
			AddNumText( sceneId, x900020_g_scriptId, " Nga Mi", 9, 907)
			AddNumText( sceneId, x900020_g_ScriptId, " Tinh T�c", 9, 908)
			AddNumText( sceneId, x900020_g_ScriptId, " Thi�n S�n", 9, 909)			
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
					AddText( sceneId, "#GM�i c�c h� l�a ch�n truy�n t�ng t�i B�n � nhi�m v� ch�nh tuy�n [Cao th�]:" )
			AddNumText( sceneId, x900020_g_ScriptId, " Th�o Nguy�n", 9, 1001)
		    AddNumText( sceneId, x900020_g_scriptId, " Mai L�nh", 9, 1002)
			AddNumText( sceneId, x900020_g_scriptId, " Ng�c Kh�", 9, 1003)
			AddNumText( sceneId, x900020_g_scriptId, " Li�u T�y", 9, 1004)
			AddNumText( sceneId, x900020_g_scriptId, " Ng�n Ngai Tuy�t Nguy�n", 9, 1005)
			AddNumText( sceneId, x900020_g_scriptId, " Nam H�i", 9, 1006)
			AddNumText( sceneId, x900020_g_scriptId, " Nam Chi�u", 9, 1007)
			AddNumText( sceneId, x900020_g_scriptId, " Di�m H�", 9, 1008)
			AddNumText( sceneId, x900020_g_ScriptId, " Tr߶ng B�ch S�n", 9, 1009)
			AddNumText( sceneId, x900020_g_ScriptId, " Qu�nh Ch�u", 9, 1010)
			AddNumText( sceneId, x900020_g_ScriptId, " Mi�u C߽ng", 9, 1011)
			AddNumText( sceneId, x900020_g_ScriptId, " Ho�ng Long Ph�", 9, 1012)
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
--Яi tho�i c�a s� tin t�c nh�c nh�
--**********************************
function x900020_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


