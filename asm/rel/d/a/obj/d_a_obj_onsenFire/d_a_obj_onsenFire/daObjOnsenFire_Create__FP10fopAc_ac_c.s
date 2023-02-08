lbl_80CA83FC:
/* 80CA83FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8400  7C 08 02 A6 */	mflr r0
/* 80CA8404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8408  4B FF FE 71 */	bl create__16daObjOnsenFire_cFv
/* 80CA840C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8410  7C 08 03 A6 */	mtlr r0
/* 80CA8414  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8418  4E 80 00 20 */	blr 
