lbl_80BF4728:
/* 80BF4728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF472C  7C 08 02 A6 */	mflr r0
/* 80BF4730  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF4734  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80BF4738  C0 23 0A 04 */	lfs f1, 0xa04(r3)
/* 80BF473C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BF4740  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BF4744  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BF4748  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BF474C  38 81 00 08 */	addi r4, r1, 8
/* 80BF4750  3C A0 80 BF */	lis r5, lit_4592@ha /* 0x80BF4A20@ha */
/* 80BF4754  C0 25 4A 20 */	lfs f1, lit_4592@l(r5)  /* 0x80BF4A20@l */
/* 80BF4758  3C A0 80 BF */	lis r5, lit_4365@ha /* 0x80BF49F0@ha */
/* 80BF475C  C0 45 49 F0 */	lfs f2, lit_4365@l(r5)  /* 0x80BF49F0@l */
/* 80BF4760  38 63 0A 30 */	addi r3, r3, 0xa30
/* 80BF4764  4B 42 89 A9 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80BF4768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF476C  7C 08 03 A6 */	mtlr r0
/* 80BF4770  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF4774  4E 80 00 20 */	blr 
