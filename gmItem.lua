-- GMˢ��Ʒ
-- С؈צ�u�� QQ: 2633573203

--�_��̖
x734771_g_ScriptId = 734771

function x734771_OnDefaultEvent(sceneId, selfId, targetId)
	local NumText = GetNumText()
	if NumText == 111 then    
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
	DispatchUICommand(sceneId, selfId, 20190302)
	end
end

function x734771_OnEventRequest(sceneId, selfId, targetId, eventId)
    -- Done nothing here, Dummy
end

function x734771_GmItemRequest(sceneId, selfId, itemId, num)
    --TryRecieveItem(sceneId, selfId, itemId, 1)
    if (num ~= nil and num > 1) then
        for i = 1, num do
            TryRecieveItem(sceneId, selfId, itemId, 1)
        end
    else
        TryRecieveItem(sceneId, selfId, itemId, 1)
    end
end

function x734771_OnEnumerate( sceneId, selfId, targetId )
    AddNumText(sceneId, x734771_g_ScriptId, "#b#eaf0cce����GM����", 6, 111 )
											
end