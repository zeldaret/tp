lbl_80BCBE50:
/* 80BCBE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCBE54  7C 08 02 A6 */	mflr r0
/* 80BCBE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCBE5C  4B FF FA 21 */	bl Execute__10daObjCHO_cFv
/* 80BCBE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCBE64  7C 08 03 A6 */	mtlr r0
/* 80BCBE68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCBE6C  4E 80 00 20 */	blr 
