lbl_8071F418:
/* 8071F418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F41C  7C 08 02 A6 */	mflr r0
/* 8071F420  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F428  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071F42C  41 82 00 1C */	beq lbl_8071F448
/* 8071F430  3C A0 80 72 */	lis r5, __vt__8cM3dGAab@ha
/* 8071F434  38 05 F7 DC */	addi r0, r5, __vt__8cM3dGAab@l
/* 8071F438  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8071F43C  7C 80 07 35 */	extsh. r0, r4
/* 8071F440  40 81 00 08 */	ble lbl_8071F448
/* 8071F444  4B BA F8 F8 */	b __dl__FPv
lbl_8071F448:
/* 8071F448  7F E3 FB 78 */	mr r3, r31
/* 8071F44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F454  7C 08 03 A6 */	mtlr r0
/* 8071F458  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F45C  4E 80 00 20 */	blr 
