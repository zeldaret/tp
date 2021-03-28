lbl_80C90DB8:
/* 80C90DB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C90DBC  7C 08 02 A6 */	mflr r0
/* 80C90DC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C90DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90DC8  4B 6D 14 14 */	b _savegpr_29
/* 80C90DCC  7C 7F 1B 78 */	mr r31, r3
/* 80C90DD0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C90DD4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C90DD8  40 82 00 F8 */	bne lbl_80C90ED0
/* 80C90DDC  7F E0 FB 79 */	or. r0, r31, r31
/* 80C90DE0  41 82 00 E4 */	beq lbl_80C90EC4
/* 80C90DE4  7C 1E 03 78 */	mr r30, r0
/* 80C90DE8  4B 38 7D 7C */	b __ct__10fopAc_ac_cFv
/* 80C90DEC  3B BE 05 74 */	addi r29, r30, 0x574
/* 80C90DF0  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C90DF4  38 03 1A C4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C90DF8  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80C90DFC  7F A3 EB 78 */	mr r3, r29
/* 80C90E00  38 80 00 00 */	li r4, 0
/* 80C90E04  4B 69 75 F8 */	b init__12J3DFrameCtrlFs
/* 80C90E08  38 00 00 00 */	li r0, 0
/* 80C90E0C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C90E10  3B BE 05 8C */	addi r29, r30, 0x58c
/* 80C90E14  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C90E18  38 03 1A C4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C90E1C  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80C90E20  7F A3 EB 78 */	mr r3, r29
/* 80C90E24  38 80 00 00 */	li r4, 0
/* 80C90E28  4B 69 75 D4 */	b init__12J3DFrameCtrlFs
/* 80C90E2C  38 00 00 00 */	li r0, 0
/* 80C90E30  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C90E34  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C90E38  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C90E3C  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80C90E40  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C90E44  4B 3F 29 1C */	b __ct__10dCcD_GSttsFv
/* 80C90E48  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C90E4C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C90E50  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80C90E54  38 03 00 20 */	addi r0, r3, 0x20
/* 80C90E58  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80C90E5C  3B BE 05 E0 */	addi r29, r30, 0x5e0
/* 80C90E60  7F A3 EB 78 */	mr r3, r29
/* 80C90E64  4B 3F 2B C4 */	b __ct__12dCcD_GObjInfFv
/* 80C90E68  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C90E6C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C90E70  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C90E74  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha
/* 80C90E78  38 03 1A B8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C90E7C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C90E80  3C 60 80 C9 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C90E84  38 03 1A AC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C90E88  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C90E8C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C90E90  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C90E94  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C90E98  38 03 00 58 */	addi r0, r3, 0x58
/* 80C90E9C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C90EA0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C90EA4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C90EA8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C90EAC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C90EB0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C90EB4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C90EB8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C90EBC  38 7E 07 28 */	addi r3, r30, 0x728
/* 80C90EC0  4B 5D 71 B4 */	b __ct__13cBgS_PolyInfoFv
lbl_80C90EC4:
/* 80C90EC4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C90EC8  60 00 00 08 */	ori r0, r0, 8
/* 80C90ECC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C90ED0:
/* 80C90ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C90ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C90ED8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C90EDC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C90EE0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80C90EE4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C90EE8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C90EEC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C90EF0  4B 3A 3A CC */	b isEventBit__11dSv_event_cCFUs
/* 80C90EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80C90EF8  41 82 00 0C */	beq lbl_80C90F04
/* 80C90EFC  38 60 00 05 */	li r3, 5
/* 80C90F00  48 00 00 54 */	b lbl_80C90F54
lbl_80C90F04:
/* 80C90F04  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80C90F08  3C 80 80 C9 */	lis r4, l_arcName@ha
/* 80C90F0C  38 84 19 9C */	addi r4, r4, l_arcName@l
/* 80C90F10  80 84 00 00 */	lwz r4, 0(r4)
/* 80C90F14  4B 39 BF A8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C90F18  7C 7E 1B 78 */	mr r30, r3
/* 80C90F1C  2C 1E 00 04 */	cmpwi r30, 4
/* 80C90F20  40 82 00 30 */	bne lbl_80C90F50
/* 80C90F24  7F E3 FB 78 */	mr r3, r31
/* 80C90F28  3C 80 80 C9 */	lis r4, createHeapCallBack__18daObjMasterSword_cFP10fopAc_ac_c@ha
/* 80C90F2C  38 84 0C 50 */	addi r4, r4, createHeapCallBack__18daObjMasterSword_cFP10fopAc_ac_c@l
/* 80C90F30  38 A0 18 30 */	li r5, 0x1830
/* 80C90F34  4B 38 95 7C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C90F38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C90F3C  40 82 00 0C */	bne lbl_80C90F48
/* 80C90F40  38 60 00 05 */	li r3, 5
/* 80C90F44  48 00 00 10 */	b lbl_80C90F54
lbl_80C90F48:
/* 80C90F48  7F E3 FB 78 */	mr r3, r31
/* 80C90F4C  48 00 00 21 */	bl create_init__18daObjMasterSword_cFv
lbl_80C90F50:
/* 80C90F50  7F C3 F3 78 */	mr r3, r30
lbl_80C90F54:
/* 80C90F54  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90F58  4B 6D 12 D0 */	b _restgpr_29
/* 80C90F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C90F60  7C 08 03 A6 */	mtlr r0
/* 80C90F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80C90F68  4E 80 00 20 */	blr 
