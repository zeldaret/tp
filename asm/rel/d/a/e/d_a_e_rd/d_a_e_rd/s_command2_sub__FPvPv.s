lbl_8050D168:
/* 8050D168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050D16C  7C 08 02 A6 */	mflr r0
/* 8050D170  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050D174  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050D178  7C 7F 1B 78 */	mr r31, r3
/* 8050D17C  4B B0 BB 65 */	bl fopAc_IsActor__FPv
/* 8050D180  2C 03 00 00 */	cmpwi r3, 0
/* 8050D184  41 82 00 58 */	beq lbl_8050D1DC
/* 8050D188  A8 1F 00 08 */	lha r0, 8(r31)
/* 8050D18C  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8050D190  40 82 00 4C */	bne lbl_8050D1DC
/* 8050D194  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 8050D198  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8050D19C  40 82 00 40 */	bne lbl_8050D1DC
/* 8050D1A0  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8050D1A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8050D1A8  40 80 00 34 */	bge lbl_8050D1DC
/* 8050D1AC  3C 60 80 52 */	lis r3, lit_4240@ha /* 0x805185DC@ha */
/* 8050D1B0  C0 23 85 DC */	lfs f1, lit_4240@l(r3)  /* 0x805185DC@l */
/* 8050D1B4  4B D5 A7 A1 */	bl cM_rndF__Ff
/* 8050D1B8  3C 60 80 52 */	lis r3, lit_4240@ha /* 0x805185DC@ha */
/* 8050D1BC  C0 03 85 DC */	lfs f0, lit_4240@l(r3)  /* 0x805185DC@l */
/* 8050D1C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D1C4  FC 00 00 1E */	fctiwz f0, f0
/* 8050D1C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8050D1CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8050D1D0  B0 1F 09 90 */	sth r0, 0x990(r31)
/* 8050D1D4  38 00 00 0A */	li r0, 0xa
/* 8050D1D8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_8050D1DC:
/* 8050D1DC  38 60 00 00 */	li r3, 0
/* 8050D1E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050D1E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050D1E8  7C 08 03 A6 */	mtlr r0
/* 8050D1EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8050D1F0  4E 80 00 20 */	blr 
