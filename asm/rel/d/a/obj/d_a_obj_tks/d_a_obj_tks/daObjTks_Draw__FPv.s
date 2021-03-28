lbl_80D11618:
/* 80D11618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1161C  7C 08 02 A6 */	mflr r0
/* 80D11620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D11624  4B FF E8 3D */	bl Draw__10daObjTks_cFv
/* 80D11628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1162C  7C 08 03 A6 */	mtlr r0
/* 80D11630  38 21 00 10 */	addi r1, r1, 0x10
/* 80D11634  4E 80 00 20 */	blr 
