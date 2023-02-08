lbl_80D08BCC:
/* 80D08BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08BD0  7C 08 02 A6 */	mflr r0
/* 80D08BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08BD8  48 00 23 71 */	bl create__10daObjTEN_cFv
/* 80D08BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08BE0  7C 08 03 A6 */	mtlr r0
/* 80D08BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08BE8  4E 80 00 20 */	blr 
