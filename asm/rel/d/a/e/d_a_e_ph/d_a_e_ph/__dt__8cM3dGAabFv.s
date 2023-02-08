lbl_80741A8C:
/* 80741A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741A90  7C 08 02 A6 */	mflr r0
/* 80741A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80741A9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80741AA0  41 82 00 1C */	beq lbl_80741ABC
/* 80741AA4  3C A0 80 74 */	lis r5, __vt__8cM3dGAab@ha /* 0x80741D78@ha */
/* 80741AA8  38 05 1D 78 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80741D78@l */
/* 80741AAC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80741AB0  7C 80 07 35 */	extsh. r0, r4
/* 80741AB4  40 81 00 08 */	ble lbl_80741ABC
/* 80741AB8  4B B8 D2 85 */	bl __dl__FPv
lbl_80741ABC:
/* 80741ABC  7F E3 FB 78 */	mr r3, r31
/* 80741AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80741AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741AC8  7C 08 03 A6 */	mtlr r0
/* 80741ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80741AD0  4E 80 00 20 */	blr 
