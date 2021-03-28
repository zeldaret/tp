lbl_80C19060:
/* 80C19060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C19064  7C 08 02 A6 */	mflr r0
/* 80C19068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1906C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C19070  7C 7F 1B 78 */	mr r31, r3
/* 80C19074  48 00 01 29 */	bl moveSwing__11daObjHata_cFv
/* 80C19078  7F E3 FB 78 */	mr r3, r31
/* 80C1907C  48 00 00 1D */	bl setModelMtx__11daObjHata_cFv
/* 80C19080  38 60 00 01 */	li r3, 1
/* 80C19084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C19088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1908C  7C 08 03 A6 */	mtlr r0
/* 80C19090  38 21 00 10 */	addi r1, r1, 0x10
/* 80C19094  4E 80 00 20 */	blr 
