lbl_80266C6C:
/* 80266C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80266C70  7C 08 02 A6 */	mflr r0
/* 80266C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80266C78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80266C7C  7C 7F 1B 78 */	mr r31, r3
/* 80266C80  7C 83 23 78 */	mr r3, r4
/* 80266C84  7C A4 2B 78 */	mr r4, r5
/* 80266C88  38 A1 00 08 */	addi r5, r1, 8
/* 80266C8C  48 0E 05 29 */	bl PSVECCrossProduct
/* 80266C90  C0 01 00 08 */	lfs f0, 8(r1)
/* 80266C94  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80266C98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80266C9C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80266CA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80266CA4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80266CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80266CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80266CB0  7C 08 03 A6 */	mtlr r0
/* 80266CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80266CB8  4E 80 00 20 */	blr 
