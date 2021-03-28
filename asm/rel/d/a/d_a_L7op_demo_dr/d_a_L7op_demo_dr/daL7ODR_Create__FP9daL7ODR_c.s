lbl_805ADD48:
/* 805ADD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ADD4C  7C 08 02 A6 */	mflr r0
/* 805ADD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ADD54  4B FF FD 6D */	bl create__9daL7ODR_cFv
/* 805ADD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ADD5C  7C 08 03 A6 */	mtlr r0
/* 805ADD60  38 21 00 10 */	addi r1, r1, 0x10
/* 805ADD64  4E 80 00 20 */	blr 
