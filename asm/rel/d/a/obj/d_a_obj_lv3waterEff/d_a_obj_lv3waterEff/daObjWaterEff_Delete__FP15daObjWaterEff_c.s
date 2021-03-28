lbl_80C5C830:
/* 80C5C830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C834  7C 08 02 A6 */	mflr r0
/* 80C5C838  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C83C  4B FF FF 7D */	bl _delete__15daObjWaterEff_cFv
/* 80C5C840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C844  7C 08 03 A6 */	mtlr r0
/* 80C5C848  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C84C  4E 80 00 20 */	blr 
