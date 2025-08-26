--洛阳NPC
--地摊
--普通

--地摊
x000209_g_shoptableindex=209

--**********************************
--事件交互入口
--**********************************
function x000209_OnDefaultEvent( sceneId, selfId,targetId )
	DispatchShopItem( sceneId, selfId,targetId, x000209_g_shoptableindex )
end
