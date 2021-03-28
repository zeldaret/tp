lbl_8023C360:
/* 8023C360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C364  7C 08 02 A6 */	mflr r0
/* 8023C368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C36C  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C370  48 12 5E 65 */	bl _savegpr_27
/* 8023C374  7C 7B 1B 78 */	mr r27, r3
/* 8023C378  7C 9C 23 78 */	mr r28, r4
/* 8023C37C  7C BD 2B 78 */	mr r29, r5
/* 8023C380  3B C0 00 00 */	li r30, 0
/* 8023C384  3B E0 00 00 */	li r31, 0
lbl_8023C388:
/* 8023C388  38 1F 00 0C */	addi r0, r31, 0xc
/* 8023C38C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 8023C390  28 03 00 00 */	cmplwi r3, 0
/* 8023C394  41 82 00 30 */	beq lbl_8023C3C4
/* 8023C398  2C 1E 00 00 */	cmpwi r30, 0
/* 8023C39C  40 82 00 18 */	bne lbl_8023C3B4
/* 8023C3A0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C3A4  48 0C 42 B5 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023C3A8  7F 84 E3 78 */	mr r4, r28
/* 8023C3AC  48 12 C7 81 */	bl strcpy
/* 8023C3B0  48 00 00 14 */	b lbl_8023C3C4
lbl_8023C3B4:
/* 8023C3B4  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C3B8  48 0C 42 A1 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023C3BC  7F A4 EB 78 */	mr r4, r29
/* 8023C3C0  48 12 C7 6D */	bl strcpy
lbl_8023C3C4:
/* 8023C3C4  3B DE 00 01 */	addi r30, r30, 1
/* 8023C3C8  2C 1E 00 07 */	cmpwi r30, 7
/* 8023C3CC  3B FF 00 04 */	addi r31, r31, 4
/* 8023C3D0  41 80 FF B8 */	blt lbl_8023C388
/* 8023C3D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C3D8  48 12 5E 49 */	bl _restgpr_27
/* 8023C3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C3E0  7C 08 03 A6 */	mtlr r0
/* 8023C3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C3E8  4E 80 00 20 */	blr 
