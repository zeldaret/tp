lbl_80BFDF1C:
/* 80BFDF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDF20  7C 08 02 A6 */	mflr r0
/* 80BFDF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDF28  4B FF F9 05 */	bl create__10daGoGate_cFv
/* 80BFDF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDF30  7C 08 03 A6 */	mtlr r0
/* 80BFDF34  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDF38  4E 80 00 20 */	blr 
