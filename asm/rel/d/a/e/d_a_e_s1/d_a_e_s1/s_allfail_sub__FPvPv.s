lbl_8077CA0C:
/* 8077CA0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8077CA10  7C 08 02 A6 */	mflr r0
/* 8077CA14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077CA18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8077CA1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8077CA20  7C 7E 1B 78 */	mr r30, r3
/* 8077CA24  7C 9F 23 78 */	mr r31, r4
/* 8077CA28  4B 89 C2 B8 */	b fopAc_IsActor__FPv
/* 8077CA2C  2C 03 00 00 */	cmpwi r3, 0
/* 8077CA30  41 82 00 58 */	beq lbl_8077CA88
/* 8077CA34  A8 1E 00 08 */	lha r0, 8(r30)
/* 8077CA38  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 8077CA3C  40 82 00 4C */	bne lbl_8077CA88
/* 8077CA40  88 7E 05 B6 */	lbz r3, 0x5b6(r30)
/* 8077CA44  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 8077CA48  7C 03 00 40 */	cmplw r3, r0
/* 8077CA4C  40 82 00 3C */	bne lbl_8077CA88
/* 8077CA50  38 00 00 0A */	li r0, 0xa
/* 8077CA54  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8077CA58  38 00 00 0B */	li r0, 0xb
/* 8077CA5C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077CA60  3C 60 80 78 */	lis r3, lit_4096@ha
/* 8077CA64  C0 23 0E 10 */	lfs f1, lit_4096@l(r3)
/* 8077CA68  4B AE AE EC */	b cM_rndF__Ff
/* 8077CA6C  3C 60 80 78 */	lis r3, lit_4353@ha
/* 8077CA70  C0 03 0E 1C */	lfs f0, lit_4353@l(r3)
/* 8077CA74  EC 00 08 2A */	fadds f0, f0, f1
/* 8077CA78  FC 00 00 1E */	fctiwz f0, f0
/* 8077CA7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8077CA80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8077CA84  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8077CA88:
/* 8077CA88  38 60 00 00 */	li r3, 0
/* 8077CA8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8077CA90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8077CA94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077CA98  7C 08 03 A6 */	mtlr r0
/* 8077CA9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8077CAA0  4E 80 00 20 */	blr 
