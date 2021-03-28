lbl_80BE9A00:
/* 80BE9A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9A04  7C 08 02 A6 */	mflr r0
/* 80BE9A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9A0C  4B FF FF AD */	bl _delete__14daObjFPillar_cFv
/* 80BE9A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9A14  7C 08 03 A6 */	mtlr r0
/* 80BE9A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9A1C  4E 80 00 20 */	blr 
