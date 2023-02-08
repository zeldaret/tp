lbl_80CBC7B4:
/* 80CBC7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC7B8  7C 08 02 A6 */	mflr r0
/* 80CBC7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC7C0  48 00 0C 01 */	bl create__16daObjRIVERROCK_cFv
/* 80CBC7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC7C8  7C 08 03 A6 */	mtlr r0
/* 80CBC7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC7D0  4E 80 00 20 */	blr 
