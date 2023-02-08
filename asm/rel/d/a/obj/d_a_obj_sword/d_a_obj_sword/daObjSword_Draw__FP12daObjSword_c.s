lbl_80CFDDA4:
/* 80CFDDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDDA8  7C 08 02 A6 */	mflr r0
/* 80CFDDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDDB0  4B FF FF 69 */	bl draw__12daObjSword_cFv
/* 80CFDDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDDB8  7C 08 03 A6 */	mtlr r0
/* 80CFDDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDDC0  4E 80 00 20 */	blr 
