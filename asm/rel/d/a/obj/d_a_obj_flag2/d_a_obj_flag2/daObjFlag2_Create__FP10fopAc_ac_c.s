lbl_80BEE050:
/* 80BEE050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEE054  7C 08 02 A6 */	mflr r0
/* 80BEE058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEE05C  4B FF F6 45 */	bl create__12daObjFlag2_cFv
/* 80BEE060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEE064  7C 08 03 A6 */	mtlr r0
/* 80BEE068  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEE06C  4E 80 00 20 */	blr 
