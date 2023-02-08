lbl_80BBAC24:
/* 80BBAC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAC28  7C 08 02 A6 */	mflr r0
/* 80BBAC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAC30  38 80 FF FF */	li r4, -1
/* 80BBAC34  4B FF FF 89 */	bl __dt__12daObjBombf_cFv
/* 80BBAC38  38 60 00 01 */	li r3, 1
/* 80BBAC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAC40  7C 08 03 A6 */	mtlr r0
/* 80BBAC44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAC48  4E 80 00 20 */	blr 
