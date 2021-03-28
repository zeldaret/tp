lbl_80D4343C:
/* 80D4343C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43440  7C 08 02 A6 */	mflr r0
/* 80D43444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43448  4B FF F8 51 */	bl Delete__14daObjZraMark_cFv
/* 80D4344C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43450  7C 08 03 A6 */	mtlr r0
/* 80D43454  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43458  4E 80 00 20 */	blr 
