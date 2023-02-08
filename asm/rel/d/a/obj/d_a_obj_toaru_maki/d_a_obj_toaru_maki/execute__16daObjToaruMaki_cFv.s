lbl_80D13524:
/* 80D13524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13528  7C 08 02 A6 */	mflr r0
/* 80D1352C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13530  4B FF FF 0D */	bl setModelMtx__16daObjToaruMaki_cFv
/* 80D13534  38 60 00 01 */	li r3, 1
/* 80D13538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1353C  7C 08 03 A6 */	mtlr r0
/* 80D13540  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13544  4E 80 00 20 */	blr 
