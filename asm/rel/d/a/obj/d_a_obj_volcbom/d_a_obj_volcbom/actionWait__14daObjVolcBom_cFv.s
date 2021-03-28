lbl_80D25A08:
/* 80D25A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D25A0C  7C 08 02 A6 */	mflr r0
/* 80D25A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D25A14  39 61 00 20 */	addi r11, r1, 0x20
/* 80D25A18  4B 63 C7 C0 */	b _savegpr_28
/* 80D25A1C  7C 7F 1B 78 */	mr r31, r3
/* 80D25A20  4B FF F8 A9 */	bl checkTalkDistance__14daObjVolcBom_cFv
/* 80D25A24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D25A28  41 82 00 38 */	beq lbl_80D25A60
/* 80D25A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D25A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D25A34  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D25A38  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D25A3C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D25A40  A0 84 00 A8 */	lhz r4, 0xa8(r4)
/* 80D25A44  4B 30 EF 78 */	b isEventBit__11dSv_event_cCFUs
/* 80D25A48  2C 03 00 00 */	cmpwi r3, 0
/* 80D25A4C  41 82 00 14 */	beq lbl_80D25A60
/* 80D25A50  38 00 00 01 */	li r0, 1
/* 80D25A54  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D25A58  7F E3 FB 78 */	mr r3, r31
/* 80D25A5C  48 00 00 A9 */	bl actionOrderEvent__14daObjVolcBom_cFv
lbl_80D25A60:
/* 80D25A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D25A64  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D25A68  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 80D25A6C  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80D25A70  7F 83 E3 78 */	mr r3, r28
/* 80D25A74  A8 9F 09 F0 */	lha r4, 0x9f0(r31)
/* 80D25A78  4B 32 1F 80 */	b startCheck__16dEvent_manager_cFs
/* 80D25A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80D25A80  41 82 00 6C */	beq lbl_80D25AEC
/* 80D25A84  7F 83 E3 78 */	mr r3, r28
/* 80D25A88  4B 32 29 60 */	b getRunEventName__16dEvent_manager_cFv
/* 80D25A8C  3C 80 80 D2 */	lis r4, struct_80D26C0C+0x0@ha
/* 80D25A90  38 84 6C 0C */	addi r4, r4, struct_80D26C0C+0x0@l
/* 80D25A94  38 84 00 0A */	addi r4, r4, 0xa
/* 80D25A98  4B 64 2E FC */	b strcmp
/* 80D25A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80D25AA0  40 82 00 4C */	bne lbl_80D25AEC
/* 80D25AA4  80 1D 05 7C */	lwz r0, 0x57c(r29)
/* 80D25AA8  64 00 02 00 */	oris r0, r0, 0x200
/* 80D25AAC  90 1D 05 7C */	stw r0, 0x57c(r29)
/* 80D25AB0  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D25AB4  7F E4 FB 78 */	mr r4, r31
/* 80D25AB8  4B 31 DB A4 */	b setPt2__14dEvt_control_cFPv
/* 80D25ABC  7F 83 E3 78 */	mr r3, r28
/* 80D25AC0  3C 80 80 D2 */	lis r4, l_staff_name@ha
/* 80D25AC4  38 84 6C 7C */	addi r4, r4, l_staff_name@l
/* 80D25AC8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D25ACC  38 A0 00 00 */	li r5, 0
/* 80D25AD0  38 C0 00 00 */	li r6, 0
/* 80D25AD4  4B 32 20 48 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D25AD8  90 7F 09 F4 */	stw r3, 0x9f4(r31)
/* 80D25ADC  38 00 00 03 */	li r0, 3
/* 80D25AE0  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D25AE4  7F E3 FB 78 */	mr r3, r31
/* 80D25AE8  48 00 04 01 */	bl demoProc__14daObjVolcBom_cFv
lbl_80D25AEC:
/* 80D25AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D25AF0  4B 63 C7 34 */	b _restgpr_28
/* 80D25AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D25AF8  7C 08 03 A6 */	mtlr r0
/* 80D25AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25B00  4E 80 00 20 */	blr 
