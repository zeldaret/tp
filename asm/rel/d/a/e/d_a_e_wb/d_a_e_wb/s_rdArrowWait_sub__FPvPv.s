lbl_807DC004:
/* 807DC004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807DC008  7C 08 02 A6 */	mflr r0
/* 807DC00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807DC010  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807DC014  7C 7F 1B 78 */	mr r31, r3
/* 807DC018  4B 83 CC C8 */	b fopAc_IsActor__FPv
/* 807DC01C  2C 03 00 00 */	cmpwi r3, 0
/* 807DC020  41 82 00 4C */	beq lbl_807DC06C
/* 807DC024  A8 1F 00 08 */	lha r0, 8(r31)
/* 807DC028  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 807DC02C  40 82 00 40 */	bne lbl_807DC06C
/* 807DC030  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 807DC034  28 00 00 02 */	cmplwi r0, 2
/* 807DC038  41 82 00 0C */	beq lbl_807DC044
/* 807DC03C  28 00 00 03 */	cmplwi r0, 3
/* 807DC040  40 82 00 2C */	bne lbl_807DC06C
lbl_807DC044:
/* 807DC044  3C 60 80 7E */	lis r3, lit_4638@ha
/* 807DC048  C0 23 29 DC */	lfs f1, lit_4638@l(r3)
/* 807DC04C  4B A8 B9 08 */	b cM_rndF__Ff
/* 807DC050  3C 60 80 7E */	lis r3, lit_5242@ha
/* 807DC054  C0 03 2A 64 */	lfs f0, lit_5242@l(r3)
/* 807DC058  EC 00 08 2A */	fadds f0, f0, f1
/* 807DC05C  FC 00 00 1E */	fctiwz f0, f0
/* 807DC060  D8 01 00 08 */	stfd f0, 8(r1)
/* 807DC064  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807DC068  B0 1F 09 92 */	sth r0, 0x992(r31)
lbl_807DC06C:
/* 807DC06C  38 60 00 00 */	li r3, 0
/* 807DC070  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807DC074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807DC078  7C 08 03 A6 */	mtlr r0
/* 807DC07C  38 21 00 20 */	addi r1, r1, 0x20
/* 807DC080  4E 80 00 20 */	blr 
