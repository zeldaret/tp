lbl_80BFA498:
/* 80BFA498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA49C  7C 08 02 A6 */	mflr r0
/* 80BFA4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA4A4  4B FF F1 31 */	bl create__10daGlwSph_cFv
/* 80BFA4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA4AC  7C 08 03 A6 */	mtlr r0
/* 80BFA4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA4B4  4E 80 00 20 */	blr 
