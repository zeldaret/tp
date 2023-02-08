lbl_80D1C32C:
/* 80D1C32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C330  7C 08 02 A6 */	mflr r0
/* 80D1C334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C338  4B FF FC 79 */	bl create__11daObjTrnd_cFv
/* 80D1C33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C340  7C 08 03 A6 */	mtlr r0
/* 80D1C344  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C348  4E 80 00 20 */	blr 
