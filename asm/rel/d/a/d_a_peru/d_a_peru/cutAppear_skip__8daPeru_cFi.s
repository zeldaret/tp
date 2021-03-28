lbl_80D4A984:
/* 80D4A984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D4A988  7C 08 02 A6 */	mflr r0
/* 80D4A98C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D4A990  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4A994  4B 61 78 44 */	b _savegpr_28
/* 80D4A998  7C 7C 1B 78 */	mr r28, r3
/* 80D4A99C  7C 9D 23 78 */	mr r29, r4
/* 80D4A9A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4A9A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4A9A8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80D4A9AC  7F C3 F3 78 */	mr r3, r30
/* 80D4A9B0  3C A0 80 D5 */	lis r5, struct_80D4C1B0+0x0@ha
/* 80D4A9B4  38 A5 C1 B0 */	addi r5, r5, struct_80D4C1B0+0x0@l
/* 80D4A9B8  38 A5 00 23 */	addi r5, r5, 0x23
/* 80D4A9BC  38 C0 00 03 */	li r6, 3
/* 80D4A9C0  4B 2F D7 2C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D4A9C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4A9C8  40 82 00 0C */	bne lbl_80D4A9D4
/* 80D4A9CC  38 60 00 01 */	li r3, 1
/* 80D4A9D0  48 00 00 30 */	b lbl_80D4AA00
lbl_80D4A9D4:
/* 80D4A9D4  7F C3 F3 78 */	mr r3, r30
/* 80D4A9D8  7F A4 EB 78 */	mr r4, r29
/* 80D4A9DC  4B 2F D3 70 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D4A9E0  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A9E4  41 82 00 10 */	beq lbl_80D4A9F4
/* 80D4A9E8  7F 83 E3 78 */	mr r3, r28
/* 80D4A9EC  7F E4 FB 78 */	mr r4, r31
/* 80D4A9F0  48 00 00 29 */	bl _cutAppear_skip_Init__8daPeru_cFRCi
lbl_80D4A9F4:
/* 80D4A9F4  7F 83 E3 78 */	mr r3, r28
/* 80D4A9F8  7F E4 FB 78 */	mr r4, r31
/* 80D4A9FC  48 00 00 F5 */	bl _cutAppear_skip_Main__8daPeru_cFRCi
lbl_80D4AA00:
/* 80D4AA00  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4AA04  4B 61 78 20 */	b _restgpr_28
/* 80D4AA08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4AA0C  7C 08 03 A6 */	mtlr r0
/* 80D4AA10  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4AA14  4E 80 00 20 */	blr 
