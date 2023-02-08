lbl_80BFA478:
/* 80BFA478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA47C  7C 08 02 A6 */	mflr r0
/* 80BFA480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA484  4B FF FF 69 */	bl _delete__10daGlwSph_cFv
/* 80BFA488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA48C  7C 08 03 A6 */	mtlr r0
/* 80BFA490  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA494  4E 80 00 20 */	blr 
