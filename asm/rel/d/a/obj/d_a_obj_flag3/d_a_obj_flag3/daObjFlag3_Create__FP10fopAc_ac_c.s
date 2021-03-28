lbl_80BEF93C:
/* 80BEF93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEF940  7C 08 02 A6 */	mflr r0
/* 80BEF944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEF948  48 00 00 15 */	bl create__12daObjFlag3_cFv
/* 80BEF94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEF950  7C 08 03 A6 */	mtlr r0
/* 80BEF954  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEF958  4E 80 00 20 */	blr 
