lbl_80D27B2C:
/* 80D27B2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D27B30  7C 08 02 A6 */	mflr r0
/* 80D27B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D27B38  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27B3C  4B 63 A6 9D */	bl _savegpr_28
/* 80D27B40  7C 7E 1B 78 */	mr r30, r3
/* 80D27B44  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D27B48  83 E3 10 18 */	lwz r31, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D27B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27B54  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D27B58  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D27B5C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D27B60  7C 05 07 74 */	extsb r5, r0
/* 80D27B64  4B 30 D7 FD */	bl isSwitch__10dSv_info_cCFii
/* 80D27B68  2C 03 00 00 */	cmpwi r3, 0
/* 80D27B6C  41 82 00 38 */	beq lbl_80D27BA4
/* 80D27B70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27B74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27B78  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D27B7C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D27B80  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D27B84  A0 84 00 6C */	lhz r4, 0x6c(r4)
/* 80D27B88  4B 30 CE 35 */	bl isEventBit__11dSv_event_cCFUs
/* 80D27B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D27B90  41 82 00 14 */	beq lbl_80D27BA4
/* 80D27B94  38 00 00 01 */	li r0, 1
/* 80D27B98  98 1E 05 CA */	stb r0, 0x5ca(r30)
/* 80D27B9C  7F C3 F3 78 */	mr r3, r30
/* 80D27BA0  48 00 00 CD */	bl actionOrderEvent__15daObjWarpKBrg_cFv
lbl_80D27BA4:
/* 80D27BA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27BA8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27BAC  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80D27BB0  7F 83 E3 78 */	mr r3, r28
/* 80D27BB4  88 1E 05 D8 */	lbz r0, 0x5d8(r30)
/* 80D27BB8  54 00 08 3C */	slwi r0, r0, 1
/* 80D27BBC  7C 9E 02 14 */	add r4, r30, r0
/* 80D27BC0  A8 84 05 CE */	lha r4, 0x5ce(r4)
/* 80D27BC4  4B 31 FE 35 */	bl startCheck__16dEvent_manager_cFs
/* 80D27BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80D27BCC  41 82 00 88 */	beq lbl_80D27C54
/* 80D27BD0  7F 83 E3 78 */	mr r3, r28
/* 80D27BD4  4B 32 08 15 */	bl getRunEventName__16dEvent_manager_cFv
/* 80D27BD8  3C 80 80 D3 */	lis r4, d_a_obj_warp_kbrg__stringBase0@ha /* 0x80D29688@ha */
/* 80D27BDC  38 84 96 88 */	addi r4, r4, d_a_obj_warp_kbrg__stringBase0@l /* 0x80D29688@l */
/* 80D27BE0  38 84 00 1D */	addi r4, r4, 0x1d
/* 80D27BE4  4B 64 0D B1 */	bl strcmp
/* 80D27BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80D27BEC  40 82 00 68 */	bne lbl_80D27C54
/* 80D27BF0  C0 1E 06 28 */	lfs f0, 0x628(r30)
/* 80D27BF4  D0 1F 09 AC */	stfs f0, 0x9ac(r31)
/* 80D27BF8  C0 1E 06 2C */	lfs f0, 0x62c(r30)
/* 80D27BFC  D0 1F 09 B0 */	stfs f0, 0x9b0(r31)
/* 80D27C00  C0 1E 06 30 */	lfs f0, 0x630(r30)
/* 80D27C04  D0 1F 09 B4 */	stfs f0, 0x9b4(r31)
/* 80D27C08  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 80D27C0C  64 00 08 00 */	oris r0, r0, 0x800
/* 80D27C10  60 00 04 00 */	ori r0, r0, 0x400
/* 80D27C14  90 1F 08 90 */	stw r0, 0x890(r31)
/* 80D27C18  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80D27C1C  7F C4 F3 78 */	mr r4, r30
/* 80D27C20  4B 31 BA 3D */	bl setPt2__14dEvt_control_cFPv
/* 80D27C24  7F 83 E3 78 */	mr r3, r28
/* 80D27C28  3C 80 80 D3 */	lis r4, l_staff_name@ha /* 0x80D29744@ha */
/* 80D27C2C  38 84 97 44 */	addi r4, r4, l_staff_name@l /* 0x80D29744@l */
/* 80D27C30  80 84 00 00 */	lwz r4, 0(r4)
/* 80D27C34  38 A0 00 00 */	li r5, 0
/* 80D27C38  38 C0 00 00 */	li r6, 0
/* 80D27C3C  4B 31 FE E1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D27C40  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80D27C44  38 00 00 04 */	li r0, 4
/* 80D27C48  98 1E 05 CA */	stb r0, 0x5ca(r30)
/* 80D27C4C  7F C3 F3 78 */	mr r3, r30
/* 80D27C50  48 00 05 FD */	bl demoProc__15daObjWarpKBrg_cFv
lbl_80D27C54:
/* 80D27C54  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27C58  4B 63 A5 CD */	bl _restgpr_28
/* 80D27C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D27C60  7C 08 03 A6 */	mtlr r0
/* 80D27C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80D27C68  4E 80 00 20 */	blr 
