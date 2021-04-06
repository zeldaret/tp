lbl_80D3DA70:
/* 80D3DA70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3DA74  7C 08 02 A6 */	mflr r0
/* 80D3DA78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3DA7C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80D3DA80  C0 23 09 F4 */	lfs f1, 0x9f4(r3)
/* 80D3DA84  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D3DA88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D3DA8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D3DA90  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80D3DA94  38 81 00 08 */	addi r4, r1, 8
/* 80D3DA98  3C A0 80 D4 */	lis r5, lit_4550@ha /* 0x80D3DD68@ha */
/* 80D3DA9C  C0 25 DD 68 */	lfs f1, lit_4550@l(r5)  /* 0x80D3DD68@l */
/* 80D3DAA0  3C A0 80 D4 */	lis r5, lit_4329@ha /* 0x80D3DD3C@ha */
/* 80D3DAA4  C0 45 DD 3C */	lfs f2, lit_4329@l(r5)  /* 0x80D3DD3C@l */
/* 80D3DAA8  38 63 0A 28 */	addi r3, r3, 0xa28
/* 80D3DAAC  4B 2D F6 61 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80D3DAB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3DAB4  7C 08 03 A6 */	mtlr r0
/* 80D3DAB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3DABC  4E 80 00 20 */	blr 
