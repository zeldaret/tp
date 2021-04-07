lbl_80BA7804:
/* 80BA7804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7808  7C 08 02 A6 */	mflr r0
/* 80BA780C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA7814  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA7818  7C 7E 1B 78 */	mr r30, r3
/* 80BA781C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA7820  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7824  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80BA7828  A8 9E 05 F0 */	lha r4, 0x5f0(r30)
/* 80BA782C  4B 4A 02 4D */	bl endCheck__16dEvent_manager_cFs
/* 80BA7830  2C 03 00 00 */	cmpwi r3, 0
/* 80BA7834  41 82 00 34 */	beq lbl_80BA7868
/* 80BA7838  38 00 00 03 */	li r0, 3
/* 80BA783C  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80BA7840  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80BA7844  4B 49 AC 25 */	bl reset__14dEvt_control_cFv
/* 80BA7848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA784C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7850  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BA7854  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BA7858  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA785C  7C 05 07 74 */	extsb r5, r0
/* 80BA7860  4B 48 D9 A1 */	bl onSwitch__10dSv_info_cFii
/* 80BA7864  48 00 00 0C */	b lbl_80BA7870
lbl_80BA7868:
/* 80BA7868  7F C3 F3 78 */	mr r3, r30
/* 80BA786C  48 00 00 21 */	bl demoProc__16daObjAvalanche_cFv
lbl_80BA7870:
/* 80BA7870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA7874  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA7878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA787C  7C 08 03 A6 */	mtlr r0
/* 80BA7880  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7884  4E 80 00 20 */	blr 
