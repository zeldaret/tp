lbl_80AA75C8:
/* 80AA75C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA75CC  7C 08 02 A6 */	mflr r0
/* 80AA75D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA75D4  80 83 0A 18 */	lwz r4, 0xa18(r3)
/* 80AA75D8  39 84 00 0C */	addi r12, r4, 0xc
/* 80AA75DC  4B 8B AA A9 */	bl __ptmf_scall
/* 80AA75E0  60 00 00 00 */	nop 
/* 80AA75E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA75E8  7C 08 03 A6 */	mtlr r0
/* 80AA75EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA75F0  4E 80 00 20 */	blr 
