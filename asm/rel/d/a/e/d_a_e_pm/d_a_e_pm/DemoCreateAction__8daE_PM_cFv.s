lbl_807499C0:
/* 807499C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807499C4  7C 08 02 A6 */	mflr r0
/* 807499C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 807499CC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 807499D0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807499D4  7C 7F 1B 78 */	mr r31, r3
/* 807499D8  3C 80 80 75 */	lis r4, lit_3910@ha /* 0x8074BF3C@ha */
/* 807499DC  3B C4 BF 3C */	addi r30, r4, lit_3910@l /* 0x8074BF3C@l */
/* 807499E0  88 03 06 11 */	lbz r0, 0x611(r3)
/* 807499E4  2C 00 00 01 */	cmpwi r0, 1
/* 807499E8  41 82 00 7C */	beq lbl_80749A64
/* 807499EC  40 80 00 10 */	bge lbl_807499FC
/* 807499F0  2C 00 00 00 */	cmpwi r0, 0
/* 807499F4  40 80 00 14 */	bge lbl_80749A08
/* 807499F8  48 00 01 F0 */	b lbl_80749BE8
lbl_807499FC:
/* 807499FC  2C 00 00 03 */	cmpwi r0, 3
/* 80749A00  40 80 01 E8 */	bge lbl_80749BE8
/* 80749A04  48 00 01 48 */	b lbl_80749B4C
lbl_80749A08:
/* 80749A08  38 80 00 0F */	li r4, 0xf
/* 80749A0C  38 A0 00 00 */	li r5, 0
/* 80749A10  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80749A14  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80749A18  4B FF 8C 5D */	bl SetAnm__8daE_PM_cFiiff
/* 80749A1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E5@ha */
/* 80749A20  38 03 00 E5 */	addi r0, r3, 0x00E5 /* 0x000700E5@l */
/* 80749A24  90 01 00 08 */	stw r0, 8(r1)
/* 80749A28  38 7F 07 20 */	addi r3, r31, 0x720
/* 80749A2C  38 81 00 08 */	addi r4, r1, 8
/* 80749A30  38 A0 FF FF */	li r5, -1
/* 80749A34  81 9F 07 20 */	lwz r12, 0x720(r31)
/* 80749A38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80749A3C  7D 89 03 A6 */	mtctr r12
/* 80749A40  4E 80 04 21 */	bctrl 
/* 80749A44  88 7F 06 11 */	lbz r3, 0x611(r31)
/* 80749A48  38 03 00 01 */	addi r0, r3, 1
/* 80749A4C  98 1F 06 11 */	stb r0, 0x611(r31)
/* 80749A50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80749A54  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80749A58  38 00 00 00 */	li r0, 0
/* 80749A5C  98 1F 06 14 */	stb r0, 0x614(r31)
/* 80749A60  48 00 01 88 */	b lbl_80749BE8
lbl_80749A64:
/* 80749A64  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80749A68  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80749A6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80749A70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80749A74  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80749A78  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80749A7C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80749A80  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80749A84  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80749A88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80749A8C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80749A90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80749A94  38 81 00 0C */	addi r4, r1, 0xc
/* 80749A98  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80749A9C  4B FF FA B1 */	bl GakkiLoopAction__8daE_PM_cF4cXyzf
/* 80749AA0  88 1F 06 13 */	lbz r0, 0x613(r31)
/* 80749AA4  28 00 00 01 */	cmplwi r0, 1
/* 80749AA8  40 82 00 14 */	bne lbl_80749ABC
/* 80749AAC  7F E3 FB 78 */	mr r3, r31
/* 80749AB0  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80749AB4  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80749AB8  4B FF 9A 6D */	bl SetMoveCam__8daE_PM_cFff
lbl_80749ABC:
/* 80749ABC  88 1F 06 13 */	lbz r0, 0x613(r31)
/* 80749AC0  28 00 00 01 */	cmplwi r0, 1
/* 80749AC4  40 82 01 24 */	bne lbl_80749BE8
/* 80749AC8  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80749ACC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80749AD0  40 82 01 18 */	bne lbl_80749BE8
/* 80749AD4  C0 5F 05 EC */	lfs f2, 0x5ec(r31)
/* 80749AD8  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 80749ADC  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 80749AE0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80749AE4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80749AE8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80749AEC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80749AF0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80749AF4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80749AF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80749AFC  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80749B00  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80749B04  38 61 00 18 */	addi r3, r1, 0x18
/* 80749B08  38 81 00 30 */	addi r4, r1, 0x30
/* 80749B0C  3C A0 80 75 */	lis r5, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 80749B10  38 A5 C3 E8 */	addi r5, r5, data_8074C3E8@l /* 0x8074C3E8@l */
/* 80749B14  A8 A5 00 00 */	lha r5, 0(r5)
/* 80749B18  38 C1 00 24 */	addi r6, r1, 0x24
/* 80749B1C  4B B2 72 A5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80749B20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80749B24  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
/* 80749B28  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80749B2C  D0 1F 06 B4 */	stfs f0, 0x6b4(r31)
/* 80749B30  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80749B34  D0 1F 06 B8 */	stfs f0, 0x6b8(r31)
/* 80749B38  7F E3 FB 78 */	mr r3, r31
/* 80749B3C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80749B40  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80749B44  4B FF 99 E1 */	bl SetMoveCam__8daE_PM_cFff
/* 80749B48  48 00 00 A0 */	b lbl_80749BE8
lbl_80749B4C:
/* 80749B4C  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 80749B50  38 80 00 01 */	li r4, 1
/* 80749B54  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80749B58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80749B5C  40 82 00 18 */	bne lbl_80749B74
/* 80749B60  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80749B64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80749B68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80749B6C  41 82 00 08 */	beq lbl_80749B74
/* 80749B70  38 80 00 00 */	li r4, 0
lbl_80749B74:
/* 80749B74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80749B78  41 82 00 70 */	beq lbl_80749BE8
/* 80749B7C  80 1F 0A B4 */	lwz r0, 0xab4(r31)
/* 80749B80  60 00 00 04 */	ori r0, r0, 4
/* 80749B84  90 1F 0A B4 */	stw r0, 0xab4(r31)
/* 80749B88  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80749B8C  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 80749B90  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80749B94  88 1F 06 13 */	lbz r0, 0x613(r31)
/* 80749B98  28 00 00 01 */	cmplwi r0, 1
/* 80749B9C  40 82 00 38 */	bne lbl_80749BD4
/* 80749BA0  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x8074C394@ha */
/* 80749BA4  38 63 C3 94 */	addi r3, r3, l_HIO@l /* 0x8074C394@l */
/* 80749BA8  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80749BAC  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 80749BB0  38 60 00 00 */	li r3, 0
/* 80749BB4  98 7F 06 13 */	stb r3, 0x613(r31)
/* 80749BB8  38 00 00 01 */	li r0, 1
/* 80749BBC  98 1F 06 10 */	stb r0, 0x610(r31)
/* 80749BC0  98 7F 06 11 */	stb r3, 0x611(r31)
/* 80749BC4  98 7F 06 12 */	stb r3, 0x612(r31)
/* 80749BC8  7F E3 FB 78 */	mr r3, r31
/* 80749BCC  4B FF 9A 35 */	bl SetReleaseCam__8daE_PM_cFv
/* 80749BD0  48 00 00 18 */	b lbl_80749BE8
lbl_80749BD4:
/* 80749BD4  38 00 00 01 */	li r0, 1
/* 80749BD8  98 1F 06 10 */	stb r0, 0x610(r31)
/* 80749BDC  38 00 00 00 */	li r0, 0
/* 80749BE0  98 1F 06 11 */	stb r0, 0x611(r31)
/* 80749BE4  98 1F 06 12 */	stb r0, 0x612(r31)
lbl_80749BE8:
/* 80749BE8  3C 60 80 75 */	lis r3, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 80749BEC  A8 03 C3 E8 */	lha r0, data_8074C3E8@l(r3)  /* 0x8074C3E8@l */
/* 80749BF0  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 80749BF4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80749BF8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80749BFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80749C00  7C 08 03 A6 */	mtlr r0
/* 80749C04  38 21 00 50 */	addi r1, r1, 0x50
/* 80749C08  4E 80 00 20 */	blr 
