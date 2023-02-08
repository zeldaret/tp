lbl_805A80C0:
/* 805A80C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A80C4  7C 08 02 A6 */	mflr r0
/* 805A80C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A80CC  4B FF F3 59 */	bl create__13daTagStatue_cFv
/* 805A80D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A80D4  7C 08 03 A6 */	mtlr r0
/* 805A80D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A80DC  4E 80 00 20 */	blr 
