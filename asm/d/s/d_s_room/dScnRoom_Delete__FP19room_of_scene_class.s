lbl_8025B73C:
/* 8025B73C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025B740  7C 08 02 A6 */	mflr r0
/* 8025B744  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025B748  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B74C  48 10 6A 8D */	bl _savegpr_28
/* 8025B750  7C 7E 1B 78 */	mr r30, r3
/* 8025B754  83 E3 00 B0 */	lwz r31, 0xb0(r3)
/* 8025B758  38 80 00 00 */	li r4, 0
/* 8025B75C  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8025B760  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 8025B764  1C 1F 04 04 */	mulli r0, r31, 0x404
/* 8025B768  7C 63 02 14 */	add r3, r3, r0
/* 8025B76C  98 83 03 F4 */	stb r4, 0x3f4(r3)
/* 8025B770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025B774  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8025B778  3B 9D 4E C4 */	addi r28, r29, 0x4ec4
/* 8025B77C  7F 83 E3 78 */	mr r3, r28
/* 8025B780  7F E4 FB 78 */	mr r4, r31
/* 8025B784  4B DC 8C 01 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8025B788  81 83 00 00 */	lwz r12, 0(r3)
/* 8025B78C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8025B790  7D 89 03 A6 */	mtctr r12
/* 8025B794  4E 80 04 21 */	bctrl 
/* 8025B798  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 8025B79C  80 03 00 00 */	lwz r0, 0(r3)
/* 8025B7A0  2C 00 00 00 */	cmpwi r0, 0
/* 8025B7A4  40 82 00 54 */	bne lbl_8025B7F8
/* 8025B7A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025B7AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025B7B0  88 03 4E 1C */	lbz r0, 0x4e1c(r3)
/* 8025B7B4  7C 00 07 75 */	extsb. r0, r0
/* 8025B7B8  41 82 00 40 */	beq lbl_8025B7F8
/* 8025B7BC  38 7D 4E 0E */	addi r3, r29, 0x4e0e
/* 8025B7C0  38 9D 4E 00 */	addi r4, r29, 0x4e00
/* 8025B7C4  48 10 D1 D1 */	bl strcmp
/* 8025B7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8025B7CC  40 82 00 2C */	bne lbl_8025B7F8
/* 8025B7D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025B7D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025B7D8  88 03 4E 18 */	lbz r0, 0x4e18(r3)
/* 8025B7DC  7C 00 07 74 */	extsb r0, r0
/* 8025B7E0  7C 1F 00 00 */	cmpw r31, r0
/* 8025B7E4  41 82 00 48 */	beq lbl_8025B82C
/* 8025B7E8  7F E3 FB 78 */	mr r3, r31
/* 8025B7EC  4B FF FE 91 */	bl isReadRoom__Fi
/* 8025B7F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025B7F4  40 82 00 38 */	bne lbl_8025B82C
lbl_8025B7F8:
/* 8025B7F8  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 8025B7FC  4B DD 3C C1 */	bl dComIfG_getRoomArcName__Fi
/* 8025B800  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8025B804  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8025B808  3C 84 00 02 */	addis r4, r4, 2
/* 8025B80C  38 84 D4 F8 */	addi r4, r4, -11016
/* 8025B810  38 A0 00 40 */	li r5, 0x40
/* 8025B814  4B DE 09 81 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025B818  7F E3 FB 78 */	mr r3, r31
/* 8025B81C  4B DC 8B 95 */	bl getMemoryBlock__20dStage_roomControl_cFi
/* 8025B820  28 03 00 00 */	cmplwi r3, 0
/* 8025B824  41 82 00 08 */	beq lbl_8025B82C
/* 8025B828  48 07 2D A5 */	bl freeAll__7JKRHeapFv
lbl_8025B82C:
/* 8025B82C  7F 83 E3 78 */	mr r3, r28
/* 8025B830  7F E4 FB 78 */	mr r4, r31
/* 8025B834  4B DC 8B 51 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8025B838  81 83 00 00 */	lwz r12, 0(r3)
/* 8025B83C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8025B840  7D 89 03 A6 */	mtctr r12
/* 8025B844  4E 80 04 21 */	bctrl 
/* 8025B848  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 8025B84C  7F E4 FB 78 */	mr r4, r31
/* 8025B850  4B DE B1 9D */	bl roomFinish__16dEvent_manager_cFi
/* 8025B854  38 60 00 01 */	li r3, 1
/* 8025B858  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B85C  48 10 69 C9 */	bl _restgpr_28
/* 8025B860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025B864  7C 08 03 A6 */	mtlr r0
/* 8025B868  38 21 00 20 */	addi r1, r1, 0x20
/* 8025B86C  4E 80 00 20 */	blr 
