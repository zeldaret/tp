lbl_80BE64B8:
/* 80BE64B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE64BC  7C 08 02 A6 */	mflr r0
/* 80BE64C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE64C4  38 80 FF FF */	li r4, -1
/* 80BE64C8  4B FF FF 01 */	bl __dt__13daObjFchain_cFv
/* 80BE64CC  38 60 00 01 */	li r3, 1
/* 80BE64D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE64D4  7C 08 03 A6 */	mtlr r0
/* 80BE64D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE64DC  4E 80 00 20 */	blr 
