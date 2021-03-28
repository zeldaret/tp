lbl_80C07C98:
/* 80C07C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C07C9C  A0 03 20 0C */	lhz r0, 0x200c(r3)
/* 80C07CA0  28 00 00 00 */	cmplwi r0, 0
/* 80C07CA4  40 82 00 20 */	bne lbl_80C07CC4
/* 80C07CA8  3C 60 80 C1 */	lis r3, lit_5726@ha
/* 80C07CAC  C0 23 FC B0 */	lfs f1, lit_5726@l(r3)
/* 80C07CB0  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C07CB4  38 63 FA 7C */	addi r3, r3, m__17daObj_GrA_Param_c@l
/* 80C07CB8  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80C07CBC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C07CC0  48 00 00 28 */	b lbl_80C07CE8
lbl_80C07CC4:
/* 80C07CC4  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80C07CC8  3C 60 80 C1 */	lis r3, lit_4501@ha
/* 80C07CCC  C8 23 FB AC */	lfd f1, lit_4501@l(r3)
/* 80C07CD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C07CD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C07CD8  3C 00 43 30 */	lis r0, 0x4330
/* 80C07CDC  90 01 00 08 */	stw r0, 8(r1)
/* 80C07CE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C07CE4  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80C07CE8:
/* 80C07CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C07CEC  4E 80 00 20 */	blr 
