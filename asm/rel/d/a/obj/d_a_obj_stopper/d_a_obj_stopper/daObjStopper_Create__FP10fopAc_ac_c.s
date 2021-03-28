lbl_80CEEE5C:
/* 80CEEE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEEE60  7C 08 02 A6 */	mflr r0
/* 80CEEE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEEE68  4B FF E3 F1 */	bl create__14daObjStopper_cFv
/* 80CEEE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEEE70  7C 08 03 A6 */	mtlr r0
/* 80CEEE74  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEEE78  4E 80 00 20 */	blr 
