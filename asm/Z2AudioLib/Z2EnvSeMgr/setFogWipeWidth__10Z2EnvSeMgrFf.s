lbl_802C93A0:
/* 802C93A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C93A4  7C 08 02 A6 */	mflr r0
/* 802C93A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C93AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C93B0  7C 7F 1B 78 */	mr r31, r3
/* 802C93B4  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C93B8  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C93BC  FC 80 18 90 */	fmr f4, f3
/* 802C93C0  C0 A2 C3 C8 */	lfs f5, lit_3769(r2)
/* 802C93C4  38 60 00 01 */	li r3, 1
/* 802C93C8  4B FE 02 C5 */	bl linearTransform__6Z2CalcFfffffb
/* 802C93CC  D0 3F 03 08 */	stfs f1, 0x308(r31)
/* 802C93D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C93D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C93D8  7C 08 03 A6 */	mtlr r0
/* 802C93DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C93E0  4E 80 00 20 */	blr 
