lbl_80C33A58:
/* 80C33A58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C33A5C  7C 08 02 A6 */	mflr r0
/* 80C33A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C33A64  88 03 0B 9F */	lbz r0, 0xb9f(r3)
/* 80C33A68  28 00 00 00 */	cmplwi r0, 0
/* 80C33A6C  40 82 00 38 */	bne lbl_80C33AA4
/* 80C33A70  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80C33A74  C0 23 0B 58 */	lfs f1, 0xb58(r3)
/* 80C33A78  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C33A7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C33A80  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C33A84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C33A88  38 63 0B 8C */	addi r3, r3, 0xb8c
/* 80C33A8C  38 81 00 08 */	addi r4, r1, 8
/* 80C33A90  3C A0 80 C3 */	lis r5, lit_4531@ha
/* 80C33A94  C0 25 3D 20 */	lfs f1, lit_4531@l(r5)
/* 80C33A98  3C A0 80 C3 */	lis r5, lit_4544@ha
/* 80C33A9C  C0 45 3D 54 */	lfs f2, lit_4544@l(r5)
/* 80C33AA0  4B 3E 96 6C */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80C33AA4:
/* 80C33AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C33AA8  7C 08 03 A6 */	mtlr r0
/* 80C33AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C33AB0  4E 80 00 20 */	blr 
