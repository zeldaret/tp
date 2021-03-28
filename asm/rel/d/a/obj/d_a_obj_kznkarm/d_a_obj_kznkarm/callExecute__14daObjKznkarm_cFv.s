lbl_80C4F8B4:
/* 80C4F8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F8B8  7C 08 02 A6 */	mflr r0
/* 80C4F8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F8C0  80 83 07 8C */	lwz r4, 0x78c(r3)
/* 80C4F8C4  39 84 00 0C */	addi r12, r4, 0xc
/* 80C4F8C8  4B 71 27 BC */	b __ptmf_scall
/* 80C4F8CC  60 00 00 00 */	nop 
/* 80C4F8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F8D4  7C 08 03 A6 */	mtlr r0
/* 80C4F8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F8DC  4E 80 00 20 */	blr 
