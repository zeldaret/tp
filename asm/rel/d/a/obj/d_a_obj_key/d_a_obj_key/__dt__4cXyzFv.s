lbl_80C3FB84:
/* 80C3FB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3FB88  7C 08 02 A6 */	mflr r0
/* 80C3FB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3FB90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3FB94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3FB98  41 82 00 10 */	beq lbl_80C3FBA8
/* 80C3FB9C  7C 80 07 35 */	extsh. r0, r4
/* 80C3FBA0  40 81 00 08 */	ble lbl_80C3FBA8
/* 80C3FBA4  4B 68 F1 98 */	b __dl__FPv
lbl_80C3FBA8:
/* 80C3FBA8  7F E3 FB 78 */	mr r3, r31
/* 80C3FBAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3FBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3FBB4  7C 08 03 A6 */	mtlr r0
/* 80C3FBB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3FBBC  4E 80 00 20 */	blr 
