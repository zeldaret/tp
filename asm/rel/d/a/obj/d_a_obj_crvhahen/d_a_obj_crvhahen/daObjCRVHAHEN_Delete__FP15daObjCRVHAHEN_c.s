lbl_80BD3408:
/* 80BD3408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD340C  7C 08 02 A6 */	mflr r0
/* 80BD3410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3414  48 00 07 61 */	bl Delete__15daObjCRVHAHEN_cFv
/* 80BD3418  38 60 00 01 */	li r3, 1
/* 80BD341C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3420  7C 08 03 A6 */	mtlr r0
/* 80BD3424  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3428  4E 80 00 20 */	blr 
