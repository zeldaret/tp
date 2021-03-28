lbl_80D35FE0:
/* 80D35FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D35FE4  7C 08 02 A6 */	mflr r0
/* 80D35FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D35FF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D35FF4  41 82 00 1C */	beq lbl_80D36010
/* 80D35FF8  3C A0 80 D3 */	lis r5, __vt__8cM3dGAab@ha
/* 80D35FFC  38 05 61 CC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D36000  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D36004  7C 80 07 35 */	extsh. r0, r4
/* 80D36008  40 81 00 08 */	ble lbl_80D36010
/* 80D3600C  4B 59 8D 30 */	b __dl__FPv
lbl_80D36010:
/* 80D36010  7F E3 FB 78 */	mr r3, r31
/* 80D36014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D36018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3601C  7C 08 03 A6 */	mtlr r0
/* 80D36020  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36024  4E 80 00 20 */	blr 
