lbl_8066C894:
/* 8066C894  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8066C898  7C 08 02 A6 */	mflr r0
/* 8066C89C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8066C8A0  39 61 00 50 */	addi r11, r1, 0x50
/* 8066C8A4  4B CF 59 38 */	b _savegpr_29
/* 8066C8A8  7C 7E 1B 78 */	mr r30, r3
/* 8066C8AC  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066C8B0  3B E3 ED E8 */	addi r31, r3, lit_3662@l
/* 8066C8B4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8066C8B8  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 8066C8BC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8066C8C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066C8C4  FC 40 08 90 */	fmr f2, f1
/* 8066C8C8  4B C0 31 B8 */	b cLib_addCalc0__FPfff
/* 8066C8CC  A8 1E 05 F6 */	lha r0, 0x5f6(r30)
/* 8066C8D0  2C 00 00 01 */	cmpwi r0, 1
/* 8066C8D4  41 82 01 28 */	beq lbl_8066C9FC
/* 8066C8D8  40 80 00 10 */	bge lbl_8066C8E8
/* 8066C8DC  2C 00 00 00 */	cmpwi r0, 0
/* 8066C8E0  40 80 00 14 */	bge lbl_8066C8F4
/* 8066C8E4  48 00 01 AC */	b lbl_8066CA90
lbl_8066C8E8:
/* 8066C8E8  2C 00 00 03 */	cmpwi r0, 3
/* 8066C8EC  40 80 01 A4 */	bge lbl_8066CA90
/* 8066C8F0  48 00 01 34 */	b lbl_8066CA24
lbl_8066C8F4:
/* 8066C8F4  3C 60 80 67 */	lis r3, l_HIO@ha
/* 8066C8F8  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 8066C8FC  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 8066C900  2C 00 00 01 */	cmpwi r0, 1
/* 8066C904  40 82 00 20 */	bne lbl_8066C924
/* 8066C908  7F C3 F3 78 */	mr r3, r30
/* 8066C90C  38 80 00 0D */	li r4, 0xd
/* 8066C910  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066C914  38 A0 00 02 */	li r5, 2
/* 8066C918  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066C91C  4B FF B4 8D */	bl anm_init__FP8do_classifUcf
/* 8066C920  48 00 00 1C */	b lbl_8066C93C
lbl_8066C924:
/* 8066C924  7F C3 F3 78 */	mr r3, r30
/* 8066C928  38 80 00 06 */	li r4, 6
/* 8066C92C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066C930  38 A0 00 02 */	li r5, 2
/* 8066C934  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066C938  4B FF B4 71 */	bl anm_init__FP8do_classifUcf
lbl_8066C93C:
/* 8066C93C  38 00 00 01 */	li r0, 1
/* 8066C940  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066C944  38 00 00 14 */	li r0, 0x14
/* 8066C948  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8066C94C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066C950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066C954  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8066C958  38 80 00 00 */	li r4, 0
/* 8066C95C  90 81 00 08 */	stw r4, 8(r1)
/* 8066C960  38 00 FF FF */	li r0, -1
/* 8066C964  90 01 00 0C */	stw r0, 0xc(r1)
/* 8066C968  90 81 00 10 */	stw r4, 0x10(r1)
/* 8066C96C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8066C970  90 81 00 18 */	stw r4, 0x18(r1)
/* 8066C974  38 80 00 00 */	li r4, 0
/* 8066C978  38 A0 02 A3 */	li r5, 0x2a3
/* 8066C97C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8066C980  38 E0 00 00 */	li r7, 0
/* 8066C984  39 00 00 00 */	li r8, 0
/* 8066C988  39 20 00 00 */	li r9, 0
/* 8066C98C  39 40 00 FF */	li r10, 0xff
/* 8066C990  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066C994  4B 9E 00 FC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8066C998  7C 7D 1B 79 */	or. r29, r3, r3
/* 8066C99C  41 82 00 60 */	beq lbl_8066C9FC
/* 8066C9A0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066C9A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8066C9A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8066C9AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8066C9B0  38 63 00 60 */	addi r3, r3, 0x60
/* 8066C9B4  38 9D 00 68 */	addi r4, r29, 0x68
/* 8066C9B8  38 BD 00 A4 */	addi r5, r29, 0xa4
/* 8066C9BC  4B C1 3E 24 */	b func_802807E0
/* 8066C9C0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8066C9C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8066C9C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8066C9CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8066C9D0  E0 21 00 2C */	psq_l f1, 44(r1), 0, 0 /* qr0 */
/* 8066C9D4  F0 21 00 20 */	psq_st f1, 32(r1), 0, 0 /* qr0 */
/* 8066C9D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066C9DC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8066C9E0  D0 5D 00 98 */	stfs f2, 0x98(r29)
/* 8066C9E4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8066C9E8  D0 3D 00 9C */	stfs f1, 0x9c(r29)
/* 8066C9EC  FC 00 00 18 */	frsp f0, f0
/* 8066C9F0  D0 1D 00 A0 */	stfs f0, 0xa0(r29)
/* 8066C9F4  D0 5D 00 B0 */	stfs f2, 0xb0(r29)
/* 8066C9F8  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
lbl_8066C9FC:
/* 8066C9FC  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8066CA00  2C 00 00 00 */	cmpwi r0, 0
/* 8066CA04  40 82 00 8C */	bne lbl_8066CA90
/* 8066CA08  38 00 00 02 */	li r0, 2
/* 8066CA0C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066CA10  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8066CA14  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 8066CA18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8066CA1C  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 8066CA20  48 00 00 70 */	b lbl_8066CA90
lbl_8066CA24:
/* 8066CA24  3C 60 80 67 */	lis r3, l_HIO@ha
/* 8066CA28  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 8066CA2C  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 8066CA30  2C 00 00 01 */	cmpwi r0, 1
/* 8066CA34  40 82 00 1C */	bne lbl_8066CA50
/* 8066CA38  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066CA3C  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 8066CA40  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066CA44  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066CA48  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8066CA4C  48 00 00 18 */	b lbl_8066CA64
lbl_8066CA50:
/* 8066CA50  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066CA54  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 8066CA58  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066CA5C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066CA60  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8066CA64:
/* 8066CA64  C0 3E 06 34 */	lfs f1, 0x634(r30)
/* 8066CA68  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8066CA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066CA70  4C 40 13 82 */	cror 2, 0, 2
/* 8066CA74  40 82 00 1C */	bne lbl_8066CA90
/* 8066CA78  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066CA7C  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 8066CA80  38 00 00 06 */	li r0, 6
/* 8066CA84  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066CA88  38 00 00 00 */	li r0, 0
/* 8066CA8C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066CA90:
/* 8066CA90  39 61 00 50 */	addi r11, r1, 0x50
/* 8066CA94  4B CF 57 94 */	b _restgpr_29
/* 8066CA98  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8066CA9C  7C 08 03 A6 */	mtlr r0
/* 8066CAA0  38 21 00 50 */	addi r1, r1, 0x50
/* 8066CAA4  4E 80 00 20 */	blr 
