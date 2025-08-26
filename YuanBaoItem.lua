--���ߣ�����<ID:30501100>
--�ű��� 900042
--Author: Steven.Han 10:39 2007-06-08

x900042_g_scriptId = 900042
x900042_g_YuanBaoInfo = {
--Ԫ��
[39000004] = {100,1},
[39000005] = {200,1},
[39000006] = {500,1},
[39000007] = {1000,1},
[39000008] = {2000,1},
[39000009] = {5000,1},
[39900000] = {50,1},
[39900001] = {200,1},
[39900002] = {500,1},
--��Ʊ
[39901000] = {10,2},
[39901001] = {50,2},
[39901002] = {150,2},
--��Ԫ
--[39901003] = {200,3},
--[39901004] = {200,3},
--[39901005] = {200,3},
--[39901006] = {1000,3},
}
--**********************************
--�¼��������
--**********************************
function x900042_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x900042_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end

--**********************************
--ֱ��ȡ��Ч����
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x900042_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end

--**********************************
--���������ڣ�
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x900042_OnConditionCheck( sceneId, selfId )
	--У��ʹ�õ���Ʒ
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
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
end

--**********************************
--���ļ�⼰������ڣ�
--ϵͳ���ڼ������ĵ�ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ�С�
--ע�⣺�ⲻ�⸺�����ĵļ��Ҳ�������ĵ�ִ�С�
--**********************************
function x900042_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--ֻ��ִ��һ����ڣ�
--������˲�����ܻ���������ɺ��������ӿڣ������������Ҹ��������������ʱ�򣩣�������
--����Ҳ����������ɺ��������ӿڣ����ܵ�һ��ʼ�����ĳɹ�ִ��֮�󣩡�
--����1������ɹ�������0������ʧ�ܡ�
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x900042_OnActivateOnce( sceneId, selfId )
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	if x900042_g_YuanBaoInfo[itemTblIndex] == nil then
	    return 0
	end
	if x900042_g_YuanBaoInfo[itemTblIndex][2] == 1 then
    x900042_ShowNotice( sceneId, selfId, "���ɹ���������"..(x900042_g_YuanBaoInfo[itemTblIndex][1]).."��Ԫ����" )
	YuanBao(sceneId,selfId,-1,1,x900042_g_YuanBaoInfo[itemTblIndex][1])
	end
	if x900042_g_YuanBaoInfo[itemTblIndex][2] == 2 then
    x900042_ShowNotice( sceneId, selfId, "���ɹ���������"..(x900042_g_YuanBaoInfo[itemTblIndex][1]).."���ҡ�" )
	AddMoney(sceneId,selfId,x900042_g_YuanBaoInfo[itemTblIndex][1]*10000)
	end
	if x900042_g_YuanBaoInfo[itemTblIndex][2] == 3 then
       	x900042_ShowNotice( sceneId, selfId, "���ɹ���������"..(x900042_g_YuanBaoInfo[itemTblIndex][1]).."���Ԫ����" )
	   	ZengDian(sceneId,selfId,-1,1,x900042_g_YuanBaoInfo[itemTblIndex][1])
	end
	return 1;
end

--**********************************
--��������������ڣ�
--�������ܻ���ÿ����������ʱ��������ӿڡ�
--���أ�1�����´�������0���ж�������
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x900042_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end

function x900042_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
