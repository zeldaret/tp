lbl_802D4EDC:
/* 802D4EDC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D4EE0  7C 08 02 A6 */	mflr r0
/* 802D4EE4  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D4EE8  39 61 01 20 */	addi r11, r1, 0x120
/* 802D4EEC  48 08 D2 F1 */	bl _savegpr_29
/* 802D4EF0  7C 7D 1B 78 */	mr r29, r3
/* 802D4EF4  7C BE 2B 78 */	mr r30, r5
/* 802D4EF8  80 63 00 48 */	lwz r3, 0x48(r3)
/* 802D4EFC  48 09 3C E9 */	bl strlen
/* 802D4F00  3B E1 00 08 */	addi r31, r1, 8
/* 802D4F04  7F FF 1A 14 */	add r31, r31, r3
/* 802D4F08  38 61 00 08 */	addi r3, r1, 8
/* 802D4F0C  80 9D 00 48 */	lwz r4, 0x48(r29)
/* 802D4F10  48 09 3C 1D */	bl strcpy
/* 802D4F14  7F A3 EB 78 */	mr r3, r29
/* 802D4F18  38 81 00 08 */	addi r4, r1, 8
/* 802D4F1C  7F C5 F3 78 */	mr r5, r30
/* 802D4F20  48 00 04 F1 */	bl findFile__12JKRFileCacheCFPcPCc
/* 802D4F24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D4F28  41 82 00 20 */	beq lbl_802D4F48
/* 802D4F2C  7F A3 EB 78 */	mr r3, r29
/* 802D4F30  7F E4 FB 78 */	mr r4, r31
/* 802D4F34  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D4F38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D4F3C  7D 89 03 A6 */	mtctr r12
/* 802D4F40  4E 80 04 21 */	bctrl 
/* 802D4F44  48 00 00 08 */	b lbl_802D4F4C
lbl_802D4F48:
/* 802D4F48  38 60 00 00 */	li r3, 0
lbl_802D4F4C:
/* 802D4F4C  39 61 01 20 */	addi r11, r1, 0x120
/* 802D4F50  48 08 D2 D9 */	bl _restgpr_29
/* 802D4F54  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D4F58  7C 08 03 A6 */	mtlr r0
/* 802D4F5C  38 21 01 20 */	addi r1, r1, 0x120
/* 802D4F60  4E 80 00 20 */	blr 
