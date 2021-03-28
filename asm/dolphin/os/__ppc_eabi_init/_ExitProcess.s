lbl_80342BEC:
/* 80342BEC  7C 08 02 A6 */	mflr r0
/* 80342BF0  90 01 00 04 */	stw r0, 4(r1)
/* 80342BF4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80342BF8  4B FF 71 09 */	bl PPCHalt
/* 80342BFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80342C00  38 21 00 08 */	addi r1, r1, 8
/* 80342C04  7C 08 03 A6 */	mtlr r0
/* 80342C08  4E 80 00 20 */	blr 
