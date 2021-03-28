lbl_807658E0:
/* 807658E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807658E4  7C 08 02 A6 */	mflr r0
/* 807658E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807658EC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 807658F0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 807658F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807658F8  93 C1 00 08 */	stw r30, 8(r1)
/* 807658FC  7C 7E 1B 78 */	mr r30, r3
/* 80765900  3C 80 80 77 */	lis r4, lit_4007@ha
/* 80765904  3B E4 B4 5C */	addi r31, r4, lit_4007@l
/* 80765908  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8076590C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80765910  2C 00 00 01 */	cmpwi r0, 1
/* 80765914  41 82 00 38 */	beq lbl_8076594C
/* 80765918  40 80 00 A8 */	bge lbl_807659C0
/* 8076591C  2C 00 00 00 */	cmpwi r0, 0
/* 80765920  40 80 00 08 */	bge lbl_80765928
/* 80765924  48 00 00 9C */	b lbl_807659C0
lbl_80765928:
/* 80765928  38 80 00 46 */	li r4, 0x46
/* 8076592C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80765930  38 A0 00 02 */	li r5, 2
/* 80765934  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80765938  4B FF F7 B9 */	bl anm_init__FP11e_rdb_classifUcf
/* 8076593C  38 00 00 01 */	li r0, 1
/* 80765940  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80765944  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80765948  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
lbl_8076594C:
/* 8076594C  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80765950  2C 00 00 46 */	cmpwi r0, 0x46
/* 80765954  40 82 00 34 */	bne lbl_80765988
/* 80765958  C3 FF 00 54 */	lfs f31, 0x54(r31)
/* 8076595C  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 80765960  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80765964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80765968  40 81 00 58 */	ble lbl_807659C0
/* 8076596C  7F C3 F3 78 */	mr r3, r30
/* 80765970  38 80 00 40 */	li r4, 0x40
/* 80765974  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80765978  38 A0 00 02 */	li r5, 2
/* 8076597C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80765980  4B FF F7 71 */	bl anm_init__FP11e_rdb_classifUcf
/* 80765984  48 00 00 3C */	b lbl_807659C0
lbl_80765988:
/* 80765988  C3 FF 00 3C */	lfs f31, 0x3c(r31)
/* 8076598C  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 80765990  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80765994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80765998  40 80 00 28 */	bge lbl_807659C0
/* 8076599C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807659A0  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 807659A4  7F C3 F3 78 */	mr r3, r30
/* 807659A8  38 80 00 46 */	li r4, 0x46
/* 807659AC  FC 20 F8 90 */	fmr f1, f31
/* 807659B0  38 A0 00 02 */	li r5, 2
/* 807659B4  C0 5E 05 CC */	lfs f2, 0x5cc(r30)
/* 807659B8  4B FF F7 39 */	bl anm_init__FP11e_rdb_classifUcf
/* 807659BC  C3 FF 00 54 */	lfs f31, 0x54(r31)
lbl_807659C0:
/* 807659C0  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 807659C4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 807659C8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807659CC  C0 7E 05 CC */	lfs f3, 0x5cc(r30)
/* 807659D0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807659D4  EC 3F 00 F2 */	fmuls f1, f31, f3
/* 807659D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807659DC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807659E0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 807659E4  4B B0 A0 58 */	b cLib_addCalc2__FPffff
/* 807659E8  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 807659EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807659F0  FC 40 08 90 */	fmr f2, f1
/* 807659F4  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807659F8  4B B0 A0 44 */	b cLib_addCalc2__FPffff
/* 807659FC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80765A00  A8 9E 06 B0 */	lha r4, 0x6b0(r30)
/* 80765A04  38 A0 00 02 */	li r5, 2
/* 80765A08  38 C0 02 00 */	li r6, 0x200
/* 80765A0C  4B B0 AB FC */	b cLib_addCalcAngleS2__FPssss
/* 80765A10  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80765A14  88 1E 0F CC */	lbz r0, 0xfcc(r30)
/* 80765A18  7C 00 07 74 */	extsb r0, r0
/* 80765A1C  2C 00 00 02 */	cmpwi r0, 2
/* 80765A20  41 80 00 2C */	blt lbl_80765A4C
/* 80765A24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80765A28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80765A2C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80765A30  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80765A34  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80765A38  38 84 00 06 */	addi r4, r4, 6
/* 80765A3C  4B C0 2F 58 */	b strcmp
/* 80765A40  2C 03 00 00 */	cmpwi r3, 0
/* 80765A44  40 82 00 08 */	bne lbl_80765A4C
/* 80765A48  C3 FF 00 50 */	lfs f31, 0x50(r31)
lbl_80765A4C:
/* 80765A4C  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 80765A50  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80765A54  EC 00 F8 2A */	fadds f0, f0, f31
/* 80765A58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80765A5C  40 80 00 14 */	bge lbl_80765A70
/* 80765A60  38 00 00 01 */	li r0, 1
/* 80765A64  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 80765A68  38 00 00 00 */	li r0, 0
/* 80765A6C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80765A70:
/* 80765A70  38 00 00 01 */	li r0, 1
/* 80765A74  98 1E 06 C8 */	stb r0, 0x6c8(r30)
/* 80765A78  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80765A7C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80765A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80765A84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80765A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80765A8C  7C 08 03 A6 */	mtlr r0
/* 80765A90  38 21 00 20 */	addi r1, r1, 0x20
/* 80765A94  4E 80 00 20 */	blr 
