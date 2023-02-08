lbl_803223B0:
/* 803223B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803223B4  7C 08 02 A6 */	mflr r0
/* 803223B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803223BC  80 83 00 04 */	lwz r4, 4(r3)
/* 803223C0  4B FF BC D9 */	bl indexToPtr_private__11J3DTevBlockFUl
/* 803223C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803223C8  7C 08 03 A6 */	mtlr r0
/* 803223CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803223D0  4E 80 00 20 */	blr 
