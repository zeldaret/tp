lbl_807D8A78:
/* 807D8A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D8A7C  7C 08 02 A6 */	mflr r0
/* 807D8A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D8A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D8A88  93 C1 00 08 */	stw r30, 8(r1)
/* 807D8A8C  7C 7E 1B 78 */	mr r30, r3
/* 807D8A90  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D8A94  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807D8A98  38 00 00 0A */	li r0, 0xa
/* 807D8A9C  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 807D8AA0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D8AA4  2C 00 00 01 */	cmpwi r0, 1
/* 807D8AA8  41 82 00 94 */	beq lbl_807D8B3C
/* 807D8AAC  40 80 01 68 */	bge lbl_807D8C14
/* 807D8AB0  2C 00 00 00 */	cmpwi r0, 0
/* 807D8AB4  40 80 00 08 */	bge lbl_807D8ABC
/* 807D8AB8  48 00 01 5C */	b lbl_807D8C14
lbl_807D8ABC:
/* 807D8ABC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807D8AC0  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 807D8AC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D8AC8  4C 40 13 82 */	cror 2, 0, 2
/* 807D8ACC  40 82 00 50 */	bne lbl_807D8B1C
/* 807D8AD0  A0 1E 06 BE */	lhz r0, 0x6be(r30)
/* 807D8AD4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807D8AD8  41 82 00 1C */	beq lbl_807D8AF4
/* 807D8ADC  38 80 00 09 */	li r4, 9
/* 807D8AE0  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8AE4  38 A0 00 00 */	li r5, 0
/* 807D8AE8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8AEC  4B FF 9A 5D */	bl anm_init__FP10e_wb_classifUcf
/* 807D8AF0  48 00 00 40 */	b lbl_807D8B30
lbl_807D8AF4:
/* 807D8AF4  38 80 00 08 */	li r4, 8
/* 807D8AF8  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8AFC  38 A0 00 00 */	li r5, 0
/* 807D8B00  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8B04  4B FF 9A 45 */	bl anm_init__FP10e_wb_classifUcf
/* 807D8B08  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807D8B0C  D0 1E 16 84 */	stfs f0, 0x1684(r30)
/* 807D8B10  38 00 13 88 */	li r0, 0x1388
/* 807D8B14  B0 1E 16 8A */	sth r0, 0x168a(r30)
/* 807D8B18  48 00 00 18 */	b lbl_807D8B30
lbl_807D8B1C:
/* 807D8B1C  38 80 00 22 */	li r4, 0x22
/* 807D8B20  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8B24  38 A0 00 00 */	li r5, 0
/* 807D8B28  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8B2C  4B FF 9A 1D */	bl anm_init__FP10e_wb_classifUcf
lbl_807D8B30:
/* 807D8B30  38 00 00 01 */	li r0, 1
/* 807D8B34  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D8B38  48 00 00 DC */	b lbl_807D8C14
lbl_807D8B3C:
/* 807D8B3C  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807D8B40  38 80 00 01 */	li r4, 1
/* 807D8B44  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D8B48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D8B4C  40 82 00 18 */	bne lbl_807D8B64
/* 807D8B50  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D8B54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D8B58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D8B5C  41 82 00 08 */	beq lbl_807D8B64
/* 807D8B60  38 80 00 00 */	li r4, 0
lbl_807D8B64:
/* 807D8B64  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D8B68  41 82 00 AC */	beq lbl_807D8C14
/* 807D8B6C  A0 1E 06 BE */	lhz r0, 0x6be(r30)
/* 807D8B70  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807D8B74  41 82 00 90 */	beq lbl_807D8C04
/* 807D8B78  A8 1E 06 92 */	lha r0, 0x692(r30)
/* 807D8B7C  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D8B80  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 807D8B84  2C 00 00 01 */	cmpwi r0, 1
/* 807D8B88  40 82 00 10 */	bne lbl_807D8B98
/* 807D8B8C  38 00 00 06 */	li r0, 6
/* 807D8B90  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D8B94  48 00 00 80 */	b lbl_807D8C14
lbl_807D8B98:
/* 807D8B98  2C 00 00 06 */	cmpwi r0, 6
/* 807D8B9C  40 82 00 10 */	bne lbl_807D8BAC
/* 807D8BA0  38 00 00 01 */	li r0, 1
/* 807D8BA4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D8BA8  48 00 00 6C */	b lbl_807D8C14
lbl_807D8BAC:
/* 807D8BAC  2C 00 00 65 */	cmpwi r0, 0x65
/* 807D8BB0  40 82 00 48 */	bne lbl_807D8BF8
/* 807D8BB4  38 00 00 66 */	li r0, 0x66
/* 807D8BB8  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D8BBC  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D8BC0  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D8BC4  A8 03 00 44 */	lha r0, 0x44(r3)
/* 807D8BC8  B0 1E 14 32 */	sth r0, 0x1432(r30)
/* 807D8BCC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807D8BD0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807D8BD4  7F C3 F3 78 */	mr r3, r30
/* 807D8BD8  38 80 00 1B */	li r4, 0x1b
/* 807D8BDC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D8BE0  38 A0 00 00 */	li r5, 0
/* 807D8BE4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8BE8  4B FF 99 61 */	bl anm_init__FP10e_wb_classifUcf
/* 807D8BEC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807D8BF0  D0 1E 16 84 */	stfs f0, 0x1684(r30)
/* 807D8BF4  48 00 00 30 */	b lbl_807D8C24
lbl_807D8BF8:
/* 807D8BF8  38 00 00 00 */	li r0, 0
/* 807D8BFC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D8C00  48 00 00 14 */	b lbl_807D8C14
lbl_807D8C04:
/* 807D8C04  38 00 00 07 */	li r0, 7
/* 807D8C08  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D8C0C  38 00 00 00 */	li r0, 0
/* 807D8C10  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807D8C14:
/* 807D8C14  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807D8C18  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D8C1C  FC 40 08 90 */	fmr f2, f1
/* 807D8C20  4B A9 6E 61 */	bl cLib_addCalc0__FPfff
lbl_807D8C24:
/* 807D8C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D8C28  83 C1 00 08 */	lwz r30, 8(r1)
/* 807D8C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D8C30  7C 08 03 A6 */	mtlr r0
/* 807D8C34  38 21 00 10 */	addi r1, r1, 0x10
/* 807D8C38  4E 80 00 20 */	blr 
