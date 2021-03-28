lbl_80C131FC:
/* 80C131FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C13200  7C 08 02 A6 */	mflr r0
/* 80C13204  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13208  4B FF FB 15 */	bl create__14daGraveStone_cFv
/* 80C1320C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C13210  7C 08 03 A6 */	mtlr r0
/* 80C13214  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13218  4E 80 00 20 */	blr 
