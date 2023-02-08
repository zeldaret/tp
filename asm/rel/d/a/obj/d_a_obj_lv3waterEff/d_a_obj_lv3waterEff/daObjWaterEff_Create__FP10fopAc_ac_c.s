lbl_80C5C850:
/* 80C5C850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C854  7C 08 02 A6 */	mflr r0
/* 80C5C858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C85C  4B FF FD 81 */	bl create__15daObjWaterEff_cFv
/* 80C5C860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C864  7C 08 03 A6 */	mtlr r0
/* 80C5C868  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C86C  4E 80 00 20 */	blr 
