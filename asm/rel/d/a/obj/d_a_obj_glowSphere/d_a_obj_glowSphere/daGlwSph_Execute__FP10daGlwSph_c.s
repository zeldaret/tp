lbl_80BFA458:
/* 80BFA458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA45C  7C 08 02 A6 */	mflr r0
/* 80BFA460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA464  4B FF F6 B9 */	bl execute__10daGlwSph_cFv
/* 80BFA468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA46C  7C 08 03 A6 */	mtlr r0
/* 80BFA470  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA474  4E 80 00 20 */	blr 
