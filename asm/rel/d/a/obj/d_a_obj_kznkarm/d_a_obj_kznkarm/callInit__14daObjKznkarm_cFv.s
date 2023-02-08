lbl_80C4F88C:
/* 80C4F88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F890  7C 08 02 A6 */	mflr r0
/* 80C4F894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F898  81 83 07 8C */	lwz r12, 0x78c(r3)
/* 80C4F89C  4B 71 27 E9 */	bl __ptmf_scall
/* 80C4F8A0  60 00 00 00 */	nop 
/* 80C4F8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F8A8  7C 08 03 A6 */	mtlr r0
/* 80C4F8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F8B0  4E 80 00 20 */	blr 
