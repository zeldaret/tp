lbl_80A0E418:
/* 80A0E418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0E41C  7C 08 02 A6 */	mflr r0
/* 80A0E420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0E424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0E428  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0E42C  41 82 00 1C */	beq lbl_80A0E448
/* 80A0E430  3C A0 80 A1 */	lis r5, __vt__8cM3dGAab@ha
/* 80A0E434  38 05 45 CC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A0E438  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A0E43C  7C 80 07 35 */	extsh. r0, r4
/* 80A0E440  40 81 00 08 */	ble lbl_80A0E448
/* 80A0E444  4B 8C 08 F8 */	b __dl__FPv
lbl_80A0E448:
/* 80A0E448  7F E3 FB 78 */	mr r3, r31
/* 80A0E44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0E450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0E454  7C 08 03 A6 */	mtlr r0
/* 80A0E458  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0E45C  4E 80 00 20 */	blr 
