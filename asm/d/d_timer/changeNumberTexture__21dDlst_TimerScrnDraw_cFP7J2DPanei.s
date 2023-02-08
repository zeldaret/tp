lbl_8025EE24:
/* 8025EE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025EE28  7C 08 02 A6 */	mflr r0
/* 8025EE2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025EE30  39 61 00 20 */	addi r11, r1, 0x20
/* 8025EE34  48 10 33 A5 */	bl _savegpr_28
/* 8025EE38  7C 7C 1B 78 */	mr r28, r3
/* 8025EE3C  7C 9D 23 78 */	mr r29, r4
/* 8025EE40  7C BE 2B 79 */	or. r30, r5, r5
/* 8025EE44  41 80 00 0C */	blt lbl_8025EE50
/* 8025EE48  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8025EE4C  41 80 00 08 */	blt lbl_8025EE54
lbl_8025EE50:
/* 8025EE50  3B C0 00 00 */	li r30, 0
lbl_8025EE54:
/* 8025EE54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025EE58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025EE5C  83 E3 5D 30 */	lwz r31, 0x5d30(r3)
/* 8025EE60  7F 83 E3 78 */	mr r3, r28
/* 8025EE64  7F C4 F3 78 */	mr r4, r30
/* 8025EE68  48 00 00 65 */	bl getNumber__21dDlst_TimerScrnDraw_cFi
/* 8025EE6C  7C 65 1B 78 */	mr r5, r3
/* 8025EE70  7F E3 FB 78 */	mr r3, r31
/* 8025EE74  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8025EE78  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8025EE7C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8025EE80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8025EE84  7D 89 03 A6 */	mtctr r12
/* 8025EE88  4E 80 04 21 */	bctrl 
/* 8025EE8C  7F 83 E3 78 */	mr r3, r28
/* 8025EE90  7F C4 F3 78 */	mr r4, r30
/* 8025EE94  48 00 00 39 */	bl getNumber__21dDlst_TimerScrnDraw_cFi
/* 8025EE98  7C 64 1B 78 */	mr r4, r3
/* 8025EE9C  7F A3 EB 78 */	mr r3, r29
/* 8025EEA0  38 A0 00 00 */	li r5, 0
/* 8025EEA4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8025EEA8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8025EEAC  7D 89 03 A6 */	mtctr r12
/* 8025EEB0  4E 80 04 21 */	bctrl 
/* 8025EEB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8025EEB8  48 10 33 6D */	bl _restgpr_28
/* 8025EEBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025EEC0  7C 08 03 A6 */	mtlr r0
/* 8025EEC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8025EEC8  4E 80 00 20 */	blr 
