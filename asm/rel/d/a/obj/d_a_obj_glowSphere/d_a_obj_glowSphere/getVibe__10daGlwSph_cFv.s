lbl_80BFA010:
/* 80BFA010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFA014  7C 08 02 A6 */	mflr r0
/* 80BFA018  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFA01C  3C 60 80 C0 */	lis r3, lit_4012@ha /* 0x80BFA9B8@ha */
/* 80BFA020  C0 23 A9 B8 */	lfs f1, lit_4012@l(r3)  /* 0x80BFA9B8@l */
/* 80BFA024  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BFA028  3C 60 80 C0 */	lis r3, lit_3714@ha /* 0x80BFA9A8@ha */
/* 80BFA02C  C0 03 A9 A8 */	lfs f0, lit_3714@l(r3)  /* 0x80BFA9A8@l */
/* 80BFA030  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BFA034  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BFA038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFA03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFA040  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BFA044  38 80 00 04 */	li r4, 4
/* 80BFA048  38 A0 00 01 */	li r5, 1
/* 80BFA04C  38 C1 00 08 */	addi r6, r1, 8
/* 80BFA050  4B 47 59 D5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BFA054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFA058  7C 08 03 A6 */	mtlr r0
/* 80BFA05C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFA060  4E 80 00 20 */	blr 
