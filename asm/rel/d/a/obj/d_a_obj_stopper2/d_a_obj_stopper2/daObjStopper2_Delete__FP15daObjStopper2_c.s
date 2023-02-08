lbl_80CEFE2C:
/* 80CEFE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFE30  7C 08 02 A6 */	mflr r0
/* 80CEFE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFE38  4B FF FF 81 */	bl _delete__15daObjStopper2_cFv
/* 80CEFE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFE40  7C 08 03 A6 */	mtlr r0
/* 80CEFE44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFE48  4E 80 00 20 */	blr 
