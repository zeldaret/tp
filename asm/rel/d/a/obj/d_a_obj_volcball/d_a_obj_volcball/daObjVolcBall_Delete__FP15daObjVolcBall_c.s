lbl_80D23AE4:
/* 80D23AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23AE8  7C 08 02 A6 */	mflr r0
/* 80D23AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23AF0  4B FF FF 1D */	bl _delete__15daObjVolcBall_cFv
/* 80D23AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23AF8  7C 08 03 A6 */	mtlr r0
/* 80D23AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23B00  4E 80 00 20 */	blr 
