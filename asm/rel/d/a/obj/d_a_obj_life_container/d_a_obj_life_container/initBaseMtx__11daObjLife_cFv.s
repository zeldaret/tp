lbl_804CCBE4:
/* 804CCBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCBE8  7C 08 02 A6 */	mflr r0
/* 804CCBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCBF0  48 00 00 15 */	bl setBaseMtx__11daObjLife_cFv
/* 804CCBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCBF8  7C 08 03 A6 */	mtlr r0
/* 804CCBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCC00  4E 80 00 20 */	blr 
