--地图传送点NPC

x900020_g_ScriptId	= 900020

--**********************************
--事件交互入口
--**********************************
function x900020_OnDefaultEvent( sceneId, selfId, targetId )
        RestoreHp( sceneId, selfId ) --满血
        RestoreMp( sceneId, selfId ) --满气
	    RestoreRage( sceneId, selfId ) --满怒
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	BeginEvent( sceneId )
			AddText( sceneId, "#eaf0c14#Y欢迎来到天龙八部，微微的冰气让你度过炎炎夏日的酷暑炎气！！！" )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c城市地图传送【观光游览】", 9, 600 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c门派地图传送【便捷师门】", 9, 900 )			
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c野外BOSS传送【贵重材料】", 9, 100 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c古墓BOSS传送【贵重材料】", 9, 200 )			
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c必争BOSS传送【贵重材料】", 9, 300 )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c副本休闲传送【悠闲生活】", 9, 400 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c任务地图传送【主线任务】", 9, 500 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c任务地图传送【主线任务】", 9, 1000 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c野外地图传送【高级地图】", 9, 800 )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c野外山洞传送【挂机地图】", 9, 700 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--事件列表选中一项
--**********************************
function x900020_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "#G请选择您所需要前往的地图传送" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c草原  小白", 9, 101)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c武夷  冰妖", 9, 102)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c苍山  金刚", 9, 103)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c玄武  蛤蟆", 9, 104)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c镜湖  小龙", 9, 110)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c宝藏木桶伯", 9, 105)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c摩崖洞工魂", 9, 111)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c雪原企鹅王", 9, 107)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c秦皇地宫一", 9, 106)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c秦皇地宫二", 9, 108)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c秦皇地宫三", 9, 109)	
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
					AddText( sceneId, "#G请选择您所需要前往的地图传送！" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓一层【高级打宝】", 9, 201)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓二层【高级打宝】", 9, 202)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓三层【高级打宝】", 9, 203)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓四层【高级打宝】", 9, 204)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓五层【高级打宝】", 9, 205)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓六层【高级打宝】", 9, 206)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c古墓七层【高级打宝】", 9, 207)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c古墓八层【高级打宝】", 9, 208)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c古墓九层【高级打宝】", 9, 209)			
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
					AddText( sceneId, "#G请选择您所需要前往的地图传送！" )
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆镜湖小龙◆", 9, 330)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆宝箱争夺◆", 9, 331)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆千年龙龟◆", 9, 332)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆镜湖仙草◆", 9, 333)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆束河霜影◆", 9, 334)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆敦煌新手◆", 9, 335)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆太湖新手◆", 9, 336)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆西湖新手◆", 9, 337)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆苍山中级◆", 9, 338)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆雁北中级◆", 9, 339)		
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆南海高级◆", 9, 340)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c◆南诏高级◆", 9, 341)			
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
					AddText( sceneId, "#G请选择您所需要前往的地图传送" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c洛阳  商会", 9, 601)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c洛阳  古都", 9, 607)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c苏州  城镇", 9, 602)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c苏州铁匠铺", 9, 604)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c束河  古镇", 9, 605)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c楼兰  古城", 9, 606)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c  玄武岛  ", 9, 603)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c  圣兽山  ", 9, 608)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c  夜西湖  ", 9, 609)
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
					AddText( sceneId, "#G亲爱的玩家：欢迎使用副本专用传送" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c洛阳踢球赛【副本】", 9, 401)	
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c珍珑棋局赛【副本】", 9, 402)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c跑跑老三环【副本】", 9, 403)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c楼兰新三环【副本】", 9, 404)			
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c楼兰寻宝洞【副本】", 9, 405)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c太湖燕子坞【副本】", 9, 406)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c楼兰缥缈峰【副本】", 9, 407)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c镜湖灭剿匪【副本】", 9, 408)						

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
					AddText( sceneId, "#G请选择您所需要前往的地图传送！" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c剑阁    【主线任务】", 9, 501)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c无量山  【主线任务】", 9, 502)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c敦煌    【主线任务】", 9, 503)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c嵩山    【主线任务】", 9, 504)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c西湖    【主线任务】", 9, 505)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c洱海    【主线任务】", 9, 506)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c雁南    【主线任务】", 9, 507)			
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c龙泉    【主线任务】", 9, 508)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c苍山    【主线任务】", 9, 509)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c雁北    【主线任务】", 9, 510)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c武夷    【主线任务】", 9, 511)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c石林    【主线任务】", 9, 512)
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
					AddText( sceneId, "#G请选择您所需要前往的地图传送！" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c山洞船坞【练级地图】", 9, 704)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c剑冢    【练级地图】", 9, 705)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c摩崖洞  【练级地图】", 9, 706)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c野人沟  【练级地图】", 9, 707)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c温泉洞  【练级地图】", 9, 708)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c黄龙洞  【练级地图】", 9, 709)			
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c草料场  【练级地图】", 9, 710)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c苗人洞  【练级地图】", 9, 711)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c水晶湖  【练级地图】", 9, 712)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c先王坟  【练级地图】", 9, 713)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c天坑树洞【练级地图】", 9, 714)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c白沙盐坑【练级地图】", 9, 715)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c桃花源  【练级地图】", 9, 716)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c海贼洞  【练级地图】", 9, 717)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c雪狼湖  【练级地图】", 9, 718)
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
					AddText( sceneId, "#G请选择您所需要前往的地图传送！" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c火焰山  【练级地图】", 9, 801)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c火焰谷  【练级地图】", 9, 802)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c高昌    【练级地图】", 9, 803)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c高昌迷宫【练级地图】", 9, 804)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c塔里木  【练级地图】", 9, 805)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c塔克拉玛【练级地图】", 9, 806)
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c昆仑山  【练级地图】", 9, 807)
			--AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c昆仑福地【练级地图】", 9, 808)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c大宛    【练级地图】", 9, 809)			
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c汗血岭  【练级地图】", 9, 810)
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c撒马尔罕【练级地图】", 9, 811)
			--AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c圣火宫  【练级地图】", 9, 812)
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
					AddText( sceneId, "#G请选择您要前往的门派！" )
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c少林  【门派地图】", 9, 901)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c丐帮  【门派地图】", 9, 902)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c明教  【门派地图】", 9, 903)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c武当  【门派地图】", 9, 904)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c天龙  【门派地图】", 9, 905)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c逍遥  【门派地图】", 9, 906)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c峨嵋  【门派地图】", 9, 907)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c星宿  【门派地图】", 9, 908)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c天山  【门派地图】", 9, 909)			
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
					AddText( sceneId, "#G请选择您所需要前往的地图传送！" )
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c草原    【主线任务】", 9, 1001)
		    AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c梅岭    【主线任务】", 9, 1002)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c玉溪    【主线任务】", 9, 1003)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c辽西    【主线任务】", 9, 1004)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c银皑雪原【主线任务】", 9, 1005)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c南海    【主线任务】", 9, 1006)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c南诏    【主线任务】", 9, 1007)
			AddNumText( sceneId, x900020_g_scriptId, "#e6600FF#g2fff7c盐湖    【主线任务】", 9, 1008)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c长白山  【主线任务】", 9, 1009)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c琼州    【主线任务】", 9, 1010)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c苗疆    【主线任务】", 9, 1011)
			AddNumText( sceneId, x900020_g_ScriptId, "#e6600FF#g2fff7c黄龙府  【主线任务】", 9, 1012)
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
--对话窗口信息提示
--**********************************
function x900020_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end



