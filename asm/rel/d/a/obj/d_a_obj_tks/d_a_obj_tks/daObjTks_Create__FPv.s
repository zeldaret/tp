lbl_80D115B8:
/* 80D115B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D115BC  7C 08 02 A6 */	mflr r0
/* 80D115C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D115C4  4B FF E0 7D */	bl Create__10daObjTks_cFv
/* 80D115C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D115CC  7C 08 03 A6 */	mtlr r0
/* 80D115D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D115D4  4E 80 00 20 */	blr 
