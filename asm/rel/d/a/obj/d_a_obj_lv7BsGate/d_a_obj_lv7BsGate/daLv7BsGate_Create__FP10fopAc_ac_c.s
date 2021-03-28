lbl_80C85144:
/* 80C85144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85148  7C 08 02 A6 */	mflr r0
/* 80C8514C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85150  4B FF F8 FD */	bl create__13daLv7BsGate_cFv
/* 80C85154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85158  7C 08 03 A6 */	mtlr r0
/* 80C8515C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85160  4E 80 00 20 */	blr 
