lbl_80BEF6D8:
/* 80BEF6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEF6DC  7C 08 02 A6 */	mflr r0
/* 80BEF6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEF6E4  38 80 FF FF */	li r4, -1
/* 80BEF6E8  48 00 00 19 */	bl __dt__12daObjFlag3_cFv
/* 80BEF6EC  38 60 00 01 */	li r3, 1
/* 80BEF6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEF6F4  7C 08 03 A6 */	mtlr r0
/* 80BEF6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEF6FC  4E 80 00 20 */	blr 
