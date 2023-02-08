lbl_806B5A7C:
/* 806B5A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5A80  7C 08 02 A6 */	mflr r0
/* 806B5A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5A88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5A8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B5A90  41 82 00 1C */	beq lbl_806B5AAC
/* 806B5A94  3C A0 80 6B */	lis r5, __vt__8cM3dGSph@ha /* 0x806B620C@ha */
/* 806B5A98  38 05 62 0C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806B620C@l */
/* 806B5A9C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806B5AA0  7C 80 07 35 */	extsh. r0, r4
/* 806B5AA4  40 81 00 08 */	ble lbl_806B5AAC
/* 806B5AA8  4B C1 92 95 */	bl __dl__FPv
lbl_806B5AAC:
/* 806B5AAC  7F E3 FB 78 */	mr r3, r31
/* 806B5AB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5AB8  7C 08 03 A6 */	mtlr r0
/* 806B5ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5AC0  4E 80 00 20 */	blr 
