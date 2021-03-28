lbl_80C1B530:
/* 80C1B530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B534  7C 08 02 A6 */	mflr r0
/* 80C1B538  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B53C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1B540  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1B544  41 82 00 1C */	beq lbl_80C1B560
/* 80C1B548  3C A0 80 C2 */	lis r5, __vt__8cM3dGAab@ha
/* 80C1B54C  38 05 B7 AC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C1B550  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C1B554  7C 80 07 35 */	extsh. r0, r4
/* 80C1B558  40 81 00 08 */	ble lbl_80C1B560
/* 80C1B55C  4B 6B 37 E0 */	b __dl__FPv
lbl_80C1B560:
/* 80C1B560  7F E3 FB 78 */	mr r3, r31
/* 80C1B564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1B568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B56C  7C 08 03 A6 */	mtlr r0
/* 80C1B570  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B574  4E 80 00 20 */	blr 
