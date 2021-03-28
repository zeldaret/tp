lbl_801B0570:
/* 801B0570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B0574  7C 08 02 A6 */	mflr r0
/* 801B0578  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B057C  88 03 02 2C */	lbz r0, 0x22c(r3)
/* 801B0580  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801B0584  3C 80 80 3C */	lis r4, init@ha
/* 801B0588  38 04 C4 70 */	addi r0, r4, init@l
/* 801B058C  7D 80 2A 14 */	add r12, r0, r5
/* 801B0590  48 1B 1A F5 */	bl __ptmf_scall
/* 801B0594  60 00 00 00 */	nop 
/* 801B0598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B059C  7C 08 03 A6 */	mtlr r0
/* 801B05A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B05A4  4E 80 00 20 */	blr 
