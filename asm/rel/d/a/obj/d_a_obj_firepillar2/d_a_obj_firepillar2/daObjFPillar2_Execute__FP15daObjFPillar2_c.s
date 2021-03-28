lbl_80BEB3E8:
/* 80BEB3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB3EC  7C 08 02 A6 */	mflr r0
/* 80BEB3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB3F4  4B FF F1 91 */	bl execute__15daObjFPillar2_cFv
/* 80BEB3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB3FC  7C 08 03 A6 */	mtlr r0
/* 80BEB400  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB404  4E 80 00 20 */	blr 
