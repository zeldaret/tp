lbl_80CB7E98:
/* 80CB7E98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB7E9C  7C 08 02 A6 */	mflr r0
/* 80CB7EA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB7EA4  7C 66 1B 78 */	mr r6, r3
/* 80CB7EA8  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80CB7EAC  C0 23 0B 64 */	lfs f1, 0xb64(r3)
/* 80CB7EB0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CB7EB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CB7EB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CB7EBC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80CB7EC0  38 66 0B 98 */	addi r3, r6, 0xb98
/* 80CB7EC4  38 81 00 08 */	addi r4, r1, 8
/* 80CB7EC8  3C A0 80 CC */	lis r5, lit_5155@ha
/* 80CB7ECC  C0 25 84 5C */	lfs f1, lit_5155@l(r5)
/* 80CB7ED0  C0 06 0B 18 */	lfs f0, 0xb18(r6)
/* 80CB7ED4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB7ED8  3C A0 80 CC */	lis r5, lit_4881@ha
/* 80CB7EDC  C0 45 84 30 */	lfs f2, lit_4881@l(r5)
/* 80CB7EE0  4B 36 52 2C */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80CB7EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB7EE8  7C 08 03 A6 */	mtlr r0
/* 80CB7EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB7EF0  4E 80 00 20 */	blr 
