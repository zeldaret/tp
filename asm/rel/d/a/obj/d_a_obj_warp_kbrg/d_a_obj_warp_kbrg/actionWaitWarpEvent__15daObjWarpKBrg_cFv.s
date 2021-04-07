lbl_80D27E08:
/* 80D27E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D27E0C  7C 08 02 A6 */	mflr r0
/* 80D27E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D27E14  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27E18  4B 63 A3 C1 */	bl _savegpr_28
/* 80D27E1C  7C 7C 1B 78 */	mr r28, r3
/* 80D27E20  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D27E24  83 A3 10 18 */	lwz r29, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D27E28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27E2C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27E30  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D27E34  7F C3 F3 78 */	mr r3, r30
/* 80D27E38  88 1C 05 D8 */	lbz r0, 0x5d8(r28)
/* 80D27E3C  54 00 08 3C */	slwi r0, r0, 1
/* 80D27E40  7C 9C 02 14 */	add r4, r28, r0
/* 80D27E44  A8 84 05 CE */	lha r4, 0x5ce(r4)
/* 80D27E48  4B 31 FB B1 */	bl startCheck__16dEvent_manager_cFs
/* 80D27E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80D27E50  41 82 00 68 */	beq lbl_80D27EB8
/* 80D27E54  C0 1C 06 28 */	lfs f0, 0x628(r28)
/* 80D27E58  D0 1D 09 AC */	stfs f0, 0x9ac(r29)
/* 80D27E5C  C0 1C 06 2C */	lfs f0, 0x62c(r28)
/* 80D27E60  D0 1D 09 B0 */	stfs f0, 0x9b0(r29)
/* 80D27E64  C0 1C 06 30 */	lfs f0, 0x630(r28)
/* 80D27E68  D0 1D 09 B4 */	stfs f0, 0x9b4(r29)
/* 80D27E6C  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 80D27E70  64 00 08 00 */	oris r0, r0, 0x800
/* 80D27E74  60 00 04 00 */	ori r0, r0, 0x400
/* 80D27E78  90 1D 08 90 */	stw r0, 0x890(r29)
/* 80D27E7C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D27E80  7F 84 E3 78 */	mr r4, r28
/* 80D27E84  4B 31 B7 D9 */	bl setPt2__14dEvt_control_cFPv
/* 80D27E88  7F C3 F3 78 */	mr r3, r30
/* 80D27E8C  3C 80 80 D3 */	lis r4, l_staff_name@ha /* 0x80D29744@ha */
/* 80D27E90  38 84 97 44 */	addi r4, r4, l_staff_name@l /* 0x80D29744@l */
/* 80D27E94  80 84 00 00 */	lwz r4, 0(r4)
/* 80D27E98  38 A0 00 00 */	li r5, 0
/* 80D27E9C  38 C0 00 00 */	li r6, 0
/* 80D27EA0  4B 31 FC 7D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D27EA4  90 7C 05 D4 */	stw r3, 0x5d4(r28)
/* 80D27EA8  38 00 00 04 */	li r0, 4
/* 80D27EAC  98 1C 05 CA */	stb r0, 0x5ca(r28)
/* 80D27EB0  7F 83 E3 78 */	mr r3, r28
/* 80D27EB4  48 00 03 99 */	bl demoProc__15daObjWarpKBrg_cFv
lbl_80D27EB8:
/* 80D27EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27EBC  4B 63 A3 69 */	bl _restgpr_28
/* 80D27EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D27EC4  7C 08 03 A6 */	mtlr r0
/* 80D27EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D27ECC  4E 80 00 20 */	blr 
