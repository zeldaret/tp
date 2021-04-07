lbl_80BB9FBC:
/* 80BB9FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB9FC0  7C 08 02 A6 */	mflr r0
/* 80BB9FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB9FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB9FCC  4B 7A 82 09 */	bl _savegpr_27
/* 80BB9FD0  7C 7B 1B 78 */	mr r27, r3
/* 80BB9FD4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BB9FD8  54 1D C6 3E */	rlwinm r29, r0, 0x18, 0x18, 0x1f
/* 80BB9FDC  54 1E 47 3E */	rlwinm r30, r0, 8, 0x1c, 0x1f
/* 80BB9FE0  3B 80 00 00 */	li r28, 0
/* 80BB9FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9FE8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9FEC  48 00 00 30 */	b lbl_80BBA01C
lbl_80BB9FF0:
/* 80BB9FF0  7F E3 FB 78 */	mr r3, r31
/* 80BB9FF4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80BB9FF8  7C 9D 02 14 */	add r4, r29, r0
/* 80BB9FFC  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80BBA000  7C 05 07 74 */	extsb r5, r0
/* 80BBA004  4B 47 B3 5D */	bl isSwitch__10dSv_info_cCFii
/* 80BBA008  2C 03 00 00 */	cmpwi r3, 0
/* 80BBA00C  41 82 00 0C */	beq lbl_80BBA018
/* 80BBA010  38 60 00 01 */	li r3, 1
/* 80BBA014  48 00 00 18 */	b lbl_80BBA02C
lbl_80BBA018:
/* 80BBA018  3B 9C 00 01 */	addi r28, r28, 1
lbl_80BBA01C:
/* 80BBA01C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80BBA020  7C 00 F0 40 */	cmplw r0, r30
/* 80BBA024  41 80 FF CC */	blt lbl_80BB9FF0
/* 80BBA028  38 60 00 00 */	li r3, 0
lbl_80BBA02C:
/* 80BBA02C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BBA030  4B 7A 81 F1 */	bl _restgpr_27
/* 80BBA034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BBA038  7C 08 03 A6 */	mtlr r0
/* 80BBA03C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BBA040  4E 80 00 20 */	blr 
