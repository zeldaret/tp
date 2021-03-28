lbl_80D219C0:
/* 80D219C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D219C4  7C 08 02 A6 */	mflr r0
/* 80D219C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D219CC  4B FF FF 81 */	bl _delete__11daObjVGnd_cFv
/* 80D219D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D219D4  7C 08 03 A6 */	mtlr r0
/* 80D219D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D219DC  4E 80 00 20 */	blr 
