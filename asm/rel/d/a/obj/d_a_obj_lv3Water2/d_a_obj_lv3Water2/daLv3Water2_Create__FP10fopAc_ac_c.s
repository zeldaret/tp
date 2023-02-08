lbl_80C5B12C:
/* 80C5B12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B130  7C 08 02 A6 */	mflr r0
/* 80C5B134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B138  4B FF F4 AD */	bl create__13daLv3Water2_cFv
/* 80C5B13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B140  7C 08 03 A6 */	mtlr r0
/* 80C5B144  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B148  4E 80 00 20 */	blr 
