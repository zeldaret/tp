lbl_80D1BE04:
/* 80D1BE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1BE08  7C 08 02 A6 */	mflr r0
/* 80D1BE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1BE10  48 00 00 15 */	bl setBaseMtx__11daObjTrnd_cFv
/* 80D1BE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1BE18  7C 08 03 A6 */	mtlr r0
/* 80D1BE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1BE20  4E 80 00 20 */	blr 
