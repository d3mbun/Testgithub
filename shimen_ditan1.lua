--洛阳NPC
--地摊
--普通

--地摊
x000208_g_shoptableindex=208

--**********************************
--事件交互入口
--**********************************
function x000208_OnDefaultEvent( sceneId, selfId,targetId )
	DispatchShopItem( sceneId, selfId,targetId, x000208_g_shoptableindex )
end
