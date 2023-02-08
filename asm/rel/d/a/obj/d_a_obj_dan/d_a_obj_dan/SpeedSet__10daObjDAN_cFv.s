lbl_80BDAA3C:
/* 80BDAA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDAA40  7C 08 02 A6 */	mflr r0
/* 80BDAA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDAA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDAA4C  7C 7F 1B 78 */	mr r31, r3
/* 80BDAA50  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80BDAA54  C0 3F 07 70 */	lfs f1, 0x770(r31)
/* 80BDAA58  3C 80 80 BE */	lis r4, lit_3923@ha /* 0x80BDC3F8@ha */
/* 80BDAA5C  C0 44 C3 F8 */	lfs f2, lit_3923@l(r4)  /* 0x80BDC3F8@l */
/* 80BDAA60  3C 80 80 BE */	lis r4, lit_3924@ha /* 0x80BDC3FC@ha */
/* 80BDAA64  C0 64 C3 FC */	lfs f3, lit_3924@l(r4)  /* 0x80BDC3FC@l */
/* 80BDAA68  4B 69 4F D5 */	bl cLib_addCalc2__FPffff
/* 80BDAA6C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80BDAA70  A8 9F 07 78 */	lha r4, 0x778(r31)
/* 80BDAA74  38 A0 00 A0 */	li r5, 0xa0
/* 80BDAA78  38 C0 01 00 */	li r6, 0x100
/* 80BDAA7C  4B 69 5B 8D */	bl cLib_addCalcAngleS2__FPssss
/* 80BDAA80  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80BDAA84  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BDAA88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDAA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDAA90  7C 08 03 A6 */	mtlr r0
/* 80BDAA94  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDAA98  4E 80 00 20 */	blr 
