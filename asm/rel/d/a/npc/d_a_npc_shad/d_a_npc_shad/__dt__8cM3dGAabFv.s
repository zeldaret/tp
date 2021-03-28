lbl_80AD83D8:
/* 80AD83D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD83DC  7C 08 02 A6 */	mflr r0
/* 80AD83E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD83E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD83E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD83EC  41 82 00 1C */	beq lbl_80AD8408
/* 80AD83F0  3C A0 80 AE */	lis r5, __vt__8cM3dGAab@ha
/* 80AD83F4  38 05 2C 8C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AD83F8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AD83FC  7C 80 07 35 */	extsh. r0, r4
/* 80AD8400  40 81 00 08 */	ble lbl_80AD8408
/* 80AD8404  4B 7F 69 38 */	b __dl__FPv
lbl_80AD8408:
/* 80AD8408  7F E3 FB 78 */	mr r3, r31
/* 80AD840C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD8410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD8414  7C 08 03 A6 */	mtlr r0
/* 80AD8418  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD841C  4E 80 00 20 */	blr 
