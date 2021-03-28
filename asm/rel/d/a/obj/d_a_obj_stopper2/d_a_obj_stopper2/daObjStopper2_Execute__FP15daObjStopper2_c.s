lbl_80CEFE0C:
/* 80CEFE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFE10  7C 08 02 A6 */	mflr r0
/* 80CEFE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFE18  4B FF F8 55 */	bl execute__15daObjStopper2_cFv
/* 80CEFE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFE20  7C 08 03 A6 */	mtlr r0
/* 80CEFE24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFE28  4E 80 00 20 */	blr 
