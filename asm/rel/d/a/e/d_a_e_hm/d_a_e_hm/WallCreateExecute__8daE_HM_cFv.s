lbl_806E1AA0:
/* 806E1AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E1AA4  7C 08 02 A6 */	mflr r0
/* 806E1AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E1AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E1AB0  93 C1 00 08 */	stw r30, 8(r1)
/* 806E1AB4  7C 7E 1B 78 */	mr r30, r3
/* 806E1AB8  3C 80 80 6E */	lis r4, lit_3791@ha
/* 806E1ABC  3B E4 59 20 */	addi r31, r4, lit_3791@l
/* 806E1AC0  A8 03 05 D6 */	lha r0, 0x5d6(r3)
/* 806E1AC4  2C 00 00 01 */	cmpwi r0, 1
/* 806E1AC8  41 82 00 48 */	beq lbl_806E1B10
/* 806E1ACC  40 80 00 78 */	bge lbl_806E1B44
/* 806E1AD0  2C 00 00 00 */	cmpwi r0, 0
/* 806E1AD4  40 80 00 08 */	bge lbl_806E1ADC
/* 806E1AD8  48 00 00 6C */	b lbl_806E1B44
lbl_806E1ADC:
/* 806E1ADC  38 00 00 01 */	li r0, 1
/* 806E1AE0  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 806E1AE4  38 80 00 0E */	li r4, 0xe
/* 806E1AE8  38 A0 00 02 */	li r5, 2
/* 806E1AEC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E1AF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E1AF4  4B FF F3 99 */	bl SetAnm__8daE_HM_cFiiff
/* 806E1AF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E1AFC  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 806E1B00  A8 7E 05 D6 */	lha r3, 0x5d6(r30)
/* 806E1B04  38 03 00 01 */	addi r0, r3, 1
/* 806E1B08  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E1B0C  48 00 00 38 */	b lbl_806E1B44
lbl_806E1B10:
/* 806E1B10  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 806E1B14  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E1B18  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 806E1B1C  4B B8 EC 24 */	b cLib_chaseF__FPfff
/* 806E1B20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E1B24  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 806E1B28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E1B2C  40 82 00 18 */	bne lbl_806E1B44
/* 806E1B30  38 00 00 03 */	li r0, 3
/* 806E1B34  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 806E1B38  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E1B3C  7F C3 F3 78 */	mr r3, r30
/* 806E1B40  48 00 1C B5 */	bl MemberClear__8daE_HM_cFv
lbl_806E1B44:
/* 806E1B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E1B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E1B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E1B50  7C 08 03 A6 */	mtlr r0
/* 806E1B54  38 21 00 10 */	addi r1, r1, 0x10
/* 806E1B58  4E 80 00 20 */	blr 
