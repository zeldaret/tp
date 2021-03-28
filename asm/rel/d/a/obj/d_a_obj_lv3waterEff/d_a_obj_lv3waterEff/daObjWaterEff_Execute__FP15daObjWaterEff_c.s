lbl_80C5C810:
/* 80C5C810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C814  7C 08 02 A6 */	mflr r0
/* 80C5C818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C81C  4B FF FE 95 */	bl execute__15daObjWaterEff_cFv
/* 80C5C820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C824  7C 08 03 A6 */	mtlr r0
/* 80C5C828  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C82C  4E 80 00 20 */	blr 
