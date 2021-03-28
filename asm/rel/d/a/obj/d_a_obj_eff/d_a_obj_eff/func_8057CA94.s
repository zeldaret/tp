lbl_8057CA94:
/* 8057CA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CA98  7C 08 02 A6 */	mflr r0
/* 8057CA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CAA0  4B FF FF 39 */	bl _create__Q28daObjEff5Act_cFv
/* 8057CAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CAA8  7C 08 03 A6 */	mtlr r0
/* 8057CAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CAB0  4E 80 00 20 */	blr 
