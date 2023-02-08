lbl_8059B22C:
/* 8059B22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B230  7C 08 02 A6 */	mflr r0
/* 8059B234  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B238  4B FF FF 75 */	bl _delete__11daObjSwPr_cFv
/* 8059B23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B240  7C 08 03 A6 */	mtlr r0
/* 8059B244  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B248  4E 80 00 20 */	blr 
