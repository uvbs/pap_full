--�ű���
x414004_g_scriptId = 414004 --��ʱд���,�����õ�ʱ��һ��Ҫ��.
x414004_g_keyID = 12100004 --��ʱд���,�����õ�ʱ��һ��Ҫ��.
x414004_g_keyname = "Կ�ף�4����" --��ʱд���,�����õ�ʱ��һ��Ҫ��.


--��Ҫ�ĵȼ�

--**********************************
--�¼��������
--**********************************
function x414004_OnDefaultEvent( sceneId, selfId, bagIndex )
	local HaveKey = HaveItemInBag(sceneId,selfId,x414004_g_keyID)
	
	if HaveKey > 0 then
		OpenRndomBox ( sceneId, selfId, 1, 2, 5, 3, 5, 4, 5, 5, 3, 6, 2) 
		DelItem(sceneId,selfId,x414004_g_keyID,1)
		LuaFnEraseItem(sceneId,selfId,bagIndex)
		BeginEvent(sceneId)
			strText = "#Y��ʹ��һ��"..x414004_g_keyname.."��������һ������"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		BeginEvent(sceneId)
			strText = "#Y�������䣬��Ҫ"..x414004_g_keyname.."һ��"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x414004_IsSkillLikeScript( sceneId, selfId)
	return 0; --����ű���Ҫ����֧��
end