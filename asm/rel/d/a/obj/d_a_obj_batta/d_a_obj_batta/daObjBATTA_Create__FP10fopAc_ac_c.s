lbl_80BAA184:
/* 80BAA184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAA188  7C 08 02 A6 */	mflr r0
/* 80BAA18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAA190  48 00 20 05 */	bl create__12daObjBATTA_cFv
/* 80BAA194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAA198  7C 08 03 A6 */	mtlr r0
/* 80BAA19C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAA1A0  4E 80 00 20 */	blr 
