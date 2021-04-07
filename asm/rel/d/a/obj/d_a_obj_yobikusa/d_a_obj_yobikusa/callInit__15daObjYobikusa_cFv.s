lbl_8059CA2C:
/* 8059CA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059CA30  7C 08 02 A6 */	mflr r0
/* 8059CA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059CA38  81 83 05 AC */	lwz r12, 0x5ac(r3)
/* 8059CA3C  4B DC 56 49 */	bl __ptmf_scall
/* 8059CA40  60 00 00 00 */	nop 
/* 8059CA44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059CA48  7C 08 03 A6 */	mtlr r0
/* 8059CA4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059CA50  4E 80 00 20 */	blr 
