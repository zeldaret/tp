lbl_80B82238:
/* 80B82238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8223C  7C 08 02 A6 */	mflr r0
/* 80B82240  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B82244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B82248  7C 7F 1B 78 */	mr r31, r3
/* 80B8224C  3C 60 80 B9 */	lis r3, lit_3939@ha
/* 80B82250  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)
/* 80B82254  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B82258  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B8225C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B82260  38 63 C4 58 */	addi r3, r3, m__17daNpc_zrA_Param_c@l
/* 80B82264  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80B82268  FC 00 00 50 */	fneg f0, f0
/* 80B8226C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B82270  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 80B82274  4B 48 AC 98 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B82278  38 61 00 08 */	addi r3, r1, 8
/* 80B8227C  4B 48 AB 58 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B82280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B82284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B82288  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B8228C  D0 1F 15 78 */	stfs f0, 0x1578(r31)
/* 80B82290  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B82294  D0 1F 15 7C */	stfs f0, 0x157c(r31)
/* 80B82298  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8229C  D0 1F 15 80 */	stfs f0, 0x1580(r31)
/* 80B822A0  38 7F 15 78 */	addi r3, r31, 0x1578
/* 80B822A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B822A8  7C 65 1B 78 */	mr r5, r3
/* 80B822AC  4B 7C 4D E4 */	b PSVECAdd
/* 80B822B0  38 00 00 00 */	li r0, 0
/* 80B822B4  98 1F 15 90 */	stb r0, 0x1590(r31)
/* 80B822B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B822BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B822C0  7C 08 03 A6 */	mtlr r0
/* 80B822C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B822C8  4E 80 00 20 */	blr 
