lbl_80D115D8:
/* 80D115D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D115DC  7C 08 02 A6 */	mflr r0
/* 80D115E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D115E4  4B FF E7 51 */	bl Delete__10daObjTks_cFv
/* 80D115E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D115EC  7C 08 03 A6 */	mtlr r0
/* 80D115F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D115F4  4E 80 00 20 */	blr 
