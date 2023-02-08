lbl_807629D8:
/* 807629D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807629DC  7C 08 02 A6 */	mflr r0
/* 807629E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807629E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807629E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807629EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807629F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807629F4  7C 7E 1B 78 */	mr r30, r3
/* 807629F8  3C 60 80 76 */	lis r3, lit_3788@ha /* 0x80764D0C@ha */
/* 807629FC  3B E3 4D 0C */	addi r31, r3, lit_3788@l /* 0x80764D0C@l */
/* 80762A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80762A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80762A08  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80762A0C  C0 3E 0A 10 */	lfs f1, 0xa10(r30)
/* 80762A10  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80762A14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80762A18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80762A1C  C0 3E 0A 18 */	lfs f1, 0xa18(r30)
/* 80762A20  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80762A24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80762A28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80762A2C  A8 1E 0A 44 */	lha r0, 0xa44(r30)
/* 80762A30  2C 00 00 01 */	cmpwi r0, 1
/* 80762A34  41 82 00 40 */	beq lbl_80762A74
/* 80762A38  40 80 00 B0 */	bge lbl_80762AE8
/* 80762A3C  2C 00 00 00 */	cmpwi r0, 0
/* 80762A40  40 80 00 08 */	bge lbl_80762A48
/* 80762A44  48 00 00 A4 */	b lbl_80762AE8
lbl_80762A48:
/* 80762A48  38 00 00 01 */	li r0, 1
/* 80762A4C  B0 1E 0A 44 */	sth r0, 0xa44(r30)
/* 80762A50  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80762A54  4B B0 4F 01 */	bl cM_rndF__Ff
/* 80762A58  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80762A5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80762A60  FC 00 00 1E */	fctiwz f0, f0
/* 80762A64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80762A68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80762A6C  B0 1E 0A 38 */	sth r0, 0xa38(r30)
/* 80762A70  48 00 00 78 */	b lbl_80762AE8
lbl_80762A74:
/* 80762A74  C3 FF 00 6C */	lfs f31, 0x6c(r31)
/* 80762A78  A8 1E 0A 38 */	lha r0, 0xa38(r30)
/* 80762A7C  2C 00 00 00 */	cmpwi r0, 0
/* 80762A80  40 82 00 40 */	bne lbl_80762AC0
/* 80762A84  A8 7E 0A 48 */	lha r3, 0xa48(r30)
/* 80762A88  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 80762A8C  7C 63 00 50 */	subf r3, r3, r0
/* 80762A90  3C 63 00 01 */	addis r3, r3, 1
/* 80762A94  38 03 80 00 */	addi r0, r3, -32768
/* 80762A98  7C 00 07 34 */	extsh r0, r0
/* 80762A9C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80762AA0  40 80 00 48 */	bge lbl_80762AE8
/* 80762AA4  2C 00 F0 00 */	cmpwi r0, -4096
/* 80762AA8  40 81 00 40 */	ble lbl_80762AE8
/* 80762AAC  38 00 00 03 */	li r0, 3
/* 80762AB0  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80762AB4  38 00 00 00 */	li r0, 0
/* 80762AB8  B0 1E 0A 44 */	sth r0, 0xa44(r30)
/* 80762ABC  48 00 00 2C */	b lbl_80762AE8
lbl_80762AC0:
/* 80762AC0  A8 1E 0A 3A */	lha r0, 0xa3a(r30)
/* 80762AC4  2C 00 00 00 */	cmpwi r0, 0
/* 80762AC8  40 82 00 20 */	bne lbl_80762AE8
/* 80762ACC  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80762AD0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80762AD4  41 82 00 14 */	beq lbl_80762AE8
/* 80762AD8  38 00 00 05 */	li r0, 5
/* 80762ADC  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80762AE0  38 00 00 00 */	li r0, 0
/* 80762AE4  B0 1E 0A 44 */	sth r0, 0xa44(r30)
lbl_80762AE8:
/* 80762AE8  80 1E 0A 34 */	lwz r0, 0xa34(r30)
/* 80762AEC  2C 00 00 05 */	cmpwi r0, 5
/* 80762AF0  40 82 00 4C */	bne lbl_80762B3C
/* 80762AF4  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 80762AF8  38 80 00 01 */	li r4, 1
/* 80762AFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80762B00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80762B04  40 82 00 18 */	bne lbl_80762B1C
/* 80762B08  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80762B0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80762B10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80762B14  41 82 00 08 */	beq lbl_80762B1C
/* 80762B18  38 80 00 00 */	li r4, 0
lbl_80762B1C:
/* 80762B1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80762B20  41 82 00 1C */	beq lbl_80762B3C
/* 80762B24  7F C3 F3 78 */	mr r3, r30
/* 80762B28  38 80 00 08 */	li r4, 8
/* 80762B2C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80762B30  38 A0 00 02 */	li r5, 2
/* 80762B34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762B38  4B FF F8 85 */	bl anm_init__FP10e_rb_classifUcf
lbl_80762B3C:
/* 80762B3C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80762B40  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80762B44  4B B0 4B 31 */	bl cM_atan2s__Fff
/* 80762B48  7C 64 1B 78 */	mr r4, r3
/* 80762B4C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80762B50  38 A0 00 02 */	li r5, 2
/* 80762B54  38 C0 08 00 */	li r6, 0x800
/* 80762B58  4B B0 DA B1 */	bl cLib_addCalcAngleS2__FPssss
/* 80762B5C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80762B60  EC 20 00 32 */	fmuls f1, f0, f0
/* 80762B64  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80762B68  EC 00 00 32 */	fmuls f0, f0, f0
/* 80762B6C  EC 21 00 2A */	fadds f1, f1, f0
/* 80762B70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80762B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80762B78  40 81 00 0C */	ble lbl_80762B84
/* 80762B7C  FC 00 08 34 */	frsqrte f0, f1
/* 80762B80  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80762B84:
/* 80762B84  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80762B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80762B8C  40 80 00 18 */	bge lbl_80762BA4
/* 80762B90  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80762B94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80762B98  EF FF 00 32 */	fmuls f31, f31, f0
/* 80762B9C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80762BA0  48 00 00 08 */	b lbl_80762BA8
lbl_80762BA4:
/* 80762BA4  C0 7F 00 08 */	lfs f3, 8(r31)
lbl_80762BA8:
/* 80762BA8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80762BAC  FC 20 F8 90 */	fmr f1, f31
/* 80762BB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762BB4  4B B0 CE 89 */	bl cLib_addCalc2__FPffff
/* 80762BB8  38 7E 0A 4C */	addi r3, r30, 0xa4c
/* 80762BBC  38 80 0F A0 */	li r4, 0xfa0
/* 80762BC0  38 A0 00 01 */	li r5, 1
/* 80762BC4  38 C0 00 64 */	li r6, 0x64
/* 80762BC8  4B B0 DA 41 */	bl cLib_addCalcAngleS2__FPssss
/* 80762BCC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80762BD0  A8 1E 0A 4C */	lha r0, 0xa4c(r30)
/* 80762BD4  7C 03 02 14 */	add r0, r3, r0
/* 80762BD8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80762BDC  38 7E 0A 20 */	addi r3, r30, 0xa20
/* 80762BE0  3C 80 80 76 */	lis r4, l_HIO@ha /* 0x80764F90@ha */
/* 80762BE4  38 84 4F 90 */	addi r4, r4, l_HIO@l /* 0x80764F90@l */
/* 80762BE8  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80762BEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762BF0  FC 60 10 90 */	fmr f3, f2
/* 80762BF4  4B B0 CE 49 */	bl cLib_addCalc2__FPffff
/* 80762BF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070464@ha */
/* 80762BFC  38 03 04 64 */	addi r0, r3, 0x0464 /* 0x00070464@l */
/* 80762C00  90 01 00 08 */	stw r0, 8(r1)
/* 80762C04  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80762C08  4B BF F4 A5 */	bl __cvt_fp2unsigned
/* 80762C0C  7C 65 1B 78 */	mr r5, r3
/* 80762C10  38 7E 09 6C */	addi r3, r30, 0x96c
/* 80762C14  38 81 00 08 */	addi r4, r1, 8
/* 80762C18  38 C0 FF FF */	li r6, -1
/* 80762C1C  81 9E 09 6C */	lwz r12, 0x96c(r30)
/* 80762C20  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80762C24  7D 89 03 A6 */	mtctr r12
/* 80762C28  4E 80 04 21 */	bctrl 
/* 80762C2C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80762C30  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80762C34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80762C38  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80762C3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80762C40  7C 08 03 A6 */	mtlr r0
/* 80762C44  38 21 00 40 */	addi r1, r1, 0x40
/* 80762C48  4E 80 00 20 */	blr 
