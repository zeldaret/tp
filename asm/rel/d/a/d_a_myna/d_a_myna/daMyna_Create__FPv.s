lbl_8094A890:
/* 8094A890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094A894  7C 08 02 A6 */	mflr r0
/* 8094A898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094A89C  4B FF B8 05 */	bl create__8daMyna_cFv
/* 8094A8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094A8A4  7C 08 03 A6 */	mtlr r0
/* 8094A8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8094A8AC  4E 80 00 20 */	blr 
