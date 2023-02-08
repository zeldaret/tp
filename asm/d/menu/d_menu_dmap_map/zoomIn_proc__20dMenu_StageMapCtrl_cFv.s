lbl_801C1EC0:
/* 801C1EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C1EC4  7C 08 02 A6 */	mflr r0
/* 801C1EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C1ED0  7C 7F 1B 78 */	mr r31, r3
/* 801C1ED4  88 63 00 F2 */	lbz r3, 0xf2(r3)
/* 801C1ED8  88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 801C1EDC  7C 00 07 74 */	extsb r0, r0
/* 801C1EE0  7C 80 18 50 */	subf r4, r0, r3
/* 801C1EE4  38 A0 00 04 */	li r5, 4
/* 801C1EE8  4B E5 E2 79 */	bl fopMsgM_valueIncrease__FiiUc
/* 801C1EEC  D0 3F 00 D8 */	stfs f1, 0xd8(r31)
/* 801C1EF0  7F E3 FB 78 */	mr r3, r31
/* 801C1EF4  4B FF FF 81 */	bl zoomCalcSet__20dMenu_StageMapCtrl_cFf
/* 801C1EF8  88 7F 00 F4 */	lbz r3, 0xf4(r31)
/* 801C1EFC  38 03 FF FF */	addi r0, r3, -1
/* 801C1F00  98 1F 00 F4 */	stb r0, 0xf4(r31)
/* 801C1F04  88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 801C1F08  7C 00 07 75 */	extsb. r0, r0
/* 801C1F0C  40 80 00 0C */	bge lbl_801C1F18
/* 801C1F10  38 00 00 02 */	li r0, 2
/* 801C1F14  98 1F 00 F5 */	stb r0, 0xf5(r31)
lbl_801C1F18:
/* 801C1F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C1F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C1F20  7C 08 03 A6 */	mtlr r0
/* 801C1F24  38 21 00 10 */	addi r1, r1, 0x10
/* 801C1F28  4E 80 00 20 */	blr 
