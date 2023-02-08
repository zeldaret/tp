lbl_80BF6F18:
/* 80BF6F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF6F1C  7C 08 02 A6 */	mflr r0
/* 80BF6F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6F24  48 00 00 15 */	bl setBaseMtx__13daObjGeyser_cFv
/* 80BF6F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF6F2C  7C 08 03 A6 */	mtlr r0
/* 80BF6F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6F34  4E 80 00 20 */	blr 
