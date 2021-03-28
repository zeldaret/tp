lbl_80054A6C:
/* 80054A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80054A70  7C 08 02 A6 */	mflr r0
/* 80054A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80054A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80054A7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80054A80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80054A84  7C 9F 23 78 */	mr r31, r4
/* 80054A88  41 82 00 28 */	beq lbl_80054AB0
/* 80054A8C  3C 80 80 3B */	lis r4, __vt__14ShdwDrawPoly_c@ha
/* 80054A90  38 04 8D EC */	addi r0, r4, __vt__14ShdwDrawPoly_c@l
/* 80054A94  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80054A98  38 80 00 00 */	li r4, 0
/* 80054A9C  48 21 35 35 */	bl __dt__13cBgS_ShdwDrawFv
/* 80054AA0  7F E0 07 35 */	extsh. r0, r31
/* 80054AA4  40 81 00 0C */	ble lbl_80054AB0
/* 80054AA8  7F C3 F3 78 */	mr r3, r30
/* 80054AAC  48 27 A2 91 */	bl __dl__FPv
lbl_80054AB0:
/* 80054AB0  7F C3 F3 78 */	mr r3, r30
/* 80054AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80054AB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80054ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80054AC0  7C 08 03 A6 */	mtlr r0
/* 80054AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80054AC8  4E 80 00 20 */	blr 
