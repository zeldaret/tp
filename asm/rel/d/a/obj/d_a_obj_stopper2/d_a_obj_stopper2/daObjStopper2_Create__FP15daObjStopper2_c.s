lbl_80CEFE4C:
/* 80CEFE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFE50  7C 08 02 A6 */	mflr r0
/* 80CEFE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFE58  4B FF F7 71 */	bl create__15daObjStopper2_cFv
/* 80CEFE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFE60  7C 08 03 A6 */	mtlr r0
/* 80CEFE64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFE68  4E 80 00 20 */	blr 
