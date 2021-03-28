lbl_802E9C90:
/* 802E9C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9C94  7C 08 02 A6 */	mflr r0
/* 802E9C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9C9C  7C 65 1B 78 */	mr r5, r3
/* 802E9CA0  38 65 00 24 */	addi r3, r5, 0x24
/* 802E9CA4  1C 84 00 03 */	mulli r4, r4, 3
/* 802E9CA8  38 84 00 1E */	addi r4, r4, 0x1e
/* 802E9CAC  88 A5 00 00 */	lbz r5, 0(r5)
/* 802E9CB0  48 07 66 71 */	bl GXLoadTexMtxImm
/* 802E9CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9CB8  7C 08 03 A6 */	mtlr r0
/* 802E9CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9CC0  4E 80 00 20 */	blr 
