lbl_8063476C:
/* 8063476C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80634770  7C 08 02 A6 */	mflr r0
/* 80634774  90 01 00 64 */	stw r0, 0x64(r1)
/* 80634778  39 61 00 60 */	addi r11, r1, 0x60
/* 8063477C  4B D2 DA 61 */	bl _savegpr_29
/* 80634780  7C 7E 1B 78 */	mr r30, r3
/* 80634784  3C 60 80 64 */	lis r3, lit_3788@ha /* 0x806397F4@ha */
/* 80634788  3B E3 97 F4 */	addi r31, r3, lit_3788@l /* 0x806397F4@l */
/* 8063478C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070305@ha */
/* 80634790  38 03 03 05 */	addi r0, r3, 0x0305 /* 0x00070305@l */
/* 80634794  90 01 00 0C */	stw r0, 0xc(r1)
/* 80634798  38 7E 06 34 */	addi r3, r30, 0x634
/* 8063479C  38 81 00 0C */	addi r4, r1, 0xc
/* 806347A0  38 A0 00 00 */	li r5, 0
/* 806347A4  38 C0 FF FF */	li r6, -1
/* 806347A8  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 806347AC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806347B0  7D 89 03 A6 */	mtctr r12
/* 806347B4  4E 80 04 21 */	bctrl 
/* 806347B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806347BC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806347C0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806347C4  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 806347C8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806347CC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806347D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 806347D4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806347D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806347DC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806347E0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806347E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806347E8  7F C3 F3 78 */	mr r3, r30
/* 806347EC  38 81 00 28 */	addi r4, r1, 0x28
/* 806347F0  48 00 26 AD */	bl reviseIceCenterPos__8daB_YO_cFP4cXyz
/* 806347F4  80 1E 0F 74 */	lwz r0, 0xf74(r30)
/* 806347F8  2C 00 00 02 */	cmpwi r0, 2
/* 806347FC  41 82 01 40 */	beq lbl_8063493C
/* 80634800  40 80 00 14 */	bge lbl_80634814
/* 80634804  2C 00 00 00 */	cmpwi r0, 0
/* 80634808  41 82 00 18 */	beq lbl_80634820
/* 8063480C  40 80 00 44 */	bge lbl_80634850
/* 80634810  48 00 04 C4 */	b lbl_80634CD4
lbl_80634814:
/* 80634814  2C 00 00 04 */	cmpwi r0, 4
/* 80634818  40 80 04 BC */	bge lbl_80634CD4
/* 8063481C  48 00 02 08 */	b lbl_80634A24
lbl_80634820:
/* 80634820  38 00 00 00 */	li r0, 0
/* 80634824  B0 1E 0F 6C */	sth r0, 0xf6c(r30)
/* 80634828  38 00 00 01 */	li r0, 1
/* 8063482C  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80634830  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80634834  D0 1E 0F 4C */	stfs f0, 0xf4c(r30)
/* 80634838  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8063483C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80634840  38 00 00 5A */	li r0, 0x5a
/* 80634844  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80634848  D0 1E 0F 50 */	stfs f0, 0xf50(r30)
/* 8063484C  48 00 04 88 */	b lbl_80634CD4
lbl_80634850:
/* 80634850  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80634854  D0 1E 0F 34 */	stfs f0, 0xf34(r30)
/* 80634858  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8063485C  D0 1E 0F 38 */	stfs f0, 0xf38(r30)
/* 80634860  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80634864  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80634868  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 8063486C  2C 00 00 00 */	cmpwi r0, 0
/* 80634870  41 82 00 38 */	beq lbl_806348A8
/* 80634874  7F C3 F3 78 */	mr r3, r30
/* 80634878  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8063487C  4B 9E 5E 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80634880  7C 64 1B 78 */	mr r4, r3
/* 80634884  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80634888  38 A0 00 20 */	li r5, 0x20
/* 8063488C  38 C0 00 40 */	li r6, 0x40
/* 80634890  38 E0 00 04 */	li r7, 4
/* 80634894  4B C3 BC AD */	bl cLib_addCalcAngleS__FPsssss
/* 80634898  7F C3 F3 78 */	mr r3, r30
/* 8063489C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806348A0  4B FF DD C1 */	bl calcFreeMove__8daB_YO_cFf
/* 806348A4  48 00 00 3C */	b lbl_806348E0
lbl_806348A8:
/* 806348A8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806348AC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806348B0  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806348B4  4B C3 BE 8D */	bl cLib_chaseF__FPfff
/* 806348B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806348BC  D0 1E 0F 38 */	stfs f0, 0xf38(r30)
/* 806348C0  38 7E 0F 50 */	addi r3, r30, 0xf50
/* 806348C4  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 806348C8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806348CC  4B C3 BE 75 */	bl cLib_chaseF__FPfff
/* 806348D0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806348D4  38 9E 0F 34 */	addi r4, r30, 0xf34
/* 806348D8  C0 3E 0F 50 */	lfs f1, 0xf50(r30)
/* 806348DC  4B C3 C0 B5 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
lbl_806348E0:
/* 806348E0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806348E4  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 806348E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806348EC  40 80 00 18 */	bge lbl_80634904
/* 806348F0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806348F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806348F8  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806348FC  4B C3 BE 45 */	bl cLib_chaseF__FPfff
/* 80634900  48 00 00 14 */	b lbl_80634914
lbl_80634904:
/* 80634904  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80634908  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 8063490C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80634910  4B C3 BE 31 */	bl cLib_chaseF__FPfff
lbl_80634914:
/* 80634914  A0 7E 0F 6C */	lhz r3, 0xf6c(r30)
/* 80634918  A0 1E 0F 6E */	lhz r0, 0xf6e(r30)
/* 8063491C  7C 60 03 78 */	or r0, r3, r0
/* 80634920  2C 00 03 FF */	cmpwi r0, 0x3ff
/* 80634924  40 82 03 B0 */	bne lbl_80634CD4
/* 80634928  38 00 00 1E */	li r0, 0x1e
/* 8063492C  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80634930  38 00 00 02 */	li r0, 2
/* 80634934  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80634938  48 00 03 9C */	b lbl_80634CD4
lbl_8063493C:
/* 8063493C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80634940  D0 1E 0F 34 */	stfs f0, 0xf34(r30)
/* 80634944  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80634948  D0 1E 0F 38 */	stfs f0, 0xf38(r30)
/* 8063494C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80634950  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80634954  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80634958  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8063495C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80634960  4B C3 BD E1 */	bl cLib_chaseF__FPfff
/* 80634964  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80634968  D0 1E 0F 38 */	stfs f0, 0xf38(r30)
/* 8063496C  38 7E 0F 58 */	addi r3, r30, 0xf58
/* 80634970  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80634974  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 80634978  4B C3 BD C9 */	bl cLib_chaseF__FPfff
/* 8063497C  38 7E 0F 50 */	addi r3, r30, 0xf50
/* 80634980  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80634984  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80634988  4B C3 BD B9 */	bl cLib_chaseF__FPfff
/* 8063498C  38 61 00 28 */	addi r3, r1, 0x28
/* 80634990  38 9E 0F 34 */	addi r4, r30, 0xf34
/* 80634994  C0 3E 0F 50 */	lfs f1, 0xf50(r30)
/* 80634998  4B C3 BF F9 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 8063499C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806349A0  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 806349A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806349A8  40 80 00 18 */	bge lbl_806349C0
/* 806349AC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806349B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806349B4  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806349B8  4B C3 BD 89 */	bl cLib_chaseF__FPfff
/* 806349BC  48 00 00 14 */	b lbl_806349D0
lbl_806349C0:
/* 806349C0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806349C4  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 806349C8  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806349CC  4B C3 BD 75 */	bl cLib_chaseF__FPfff
lbl_806349D0:
/* 806349D0  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 806349D4  2C 00 00 00 */	cmpwi r0, 0
/* 806349D8  40 82 02 FC */	bne lbl_80634CD4
/* 806349DC  7F C3 F3 78 */	mr r3, r30
/* 806349E0  38 80 00 06 */	li r4, 6
/* 806349E4  4B FF B8 49 */	bl setIcicleOperate__8daB_YO_cFi
/* 806349E8  38 00 00 00 */	li r0, 0
/* 806349EC  B0 1E 0F 6C */	sth r0, 0xf6c(r30)
/* 806349F0  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 806349F4  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 806349F8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 806349FC  FC 00 00 1E */	fctiwz f0, f0
/* 80634A00  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80634A04  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80634A08  38 03 00 1E */	addi r0, r3, 0x1e
/* 80634A0C  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80634A10  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80634A14  D0 1E 0F 50 */	stfs f0, 0xf50(r30)
/* 80634A18  38 00 00 03 */	li r0, 3
/* 80634A1C  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80634A20  48 00 02 B4 */	b lbl_80634CD4
lbl_80634A24:
/* 80634A24  A0 7E 0F 6C */	lhz r3, 0xf6c(r30)
/* 80634A28  A0 1E 0F 6E */	lhz r0, 0xf6e(r30)
/* 80634A2C  7C 60 03 78 */	or r0, r3, r0
/* 80634A30  2C 00 03 FF */	cmpwi r0, 0x3ff
/* 80634A34  41 82 00 AC */	beq lbl_80634AE0
/* 80634A38  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80634A3C  D0 1E 0F 34 */	stfs f0, 0xf34(r30)
/* 80634A40  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80634A44  D0 1E 0F 38 */	stfs f0, 0xf38(r30)
/* 80634A48  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80634A4C  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80634A50  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80634A54  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80634A58  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80634A5C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80634A60  EC 40 00 72 */	fmuls f2, f0, f1
/* 80634A64  C0 3E 0F 34 */	lfs f1, 0xf34(r30)
/* 80634A68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80634A6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80634A70  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80634A74  7C 03 04 2E */	lfsx f0, r3, r0
/* 80634A78  EC 02 00 32 */	fmuls f0, f2, f0
/* 80634A7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80634A80  D0 1E 0F 34 */	stfs f0, 0xf34(r30)
/* 80634A84  C0 3E 0F 3C */	lfs f1, 0xf3c(r30)
/* 80634A88  7C 63 02 14 */	add r3, r3, r0
/* 80634A8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80634A90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80634A94  EC 01 00 2A */	fadds f0, f1, f0
/* 80634A98  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80634A9C  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 80634AA0  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 80634AA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80634AA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80634AAC  3C 00 43 30 */	lis r0, 0x4330
/* 80634AB0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80634AB4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80634AB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80634ABC  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 80634AC0  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 80634AC4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80634AC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80634ACC  4C 40 13 82 */	cror 2, 0, 2
/* 80634AD0  40 82 00 40 */	bne lbl_80634B10
/* 80634AD4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80634AD8  D0 1E 0F 4C */	stfs f0, 0xf4c(r30)
/* 80634ADC  48 00 00 34 */	b lbl_80634B10
lbl_80634AE0:
/* 80634AE0  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 80634AE4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80634AE8  40 80 00 28 */	bge lbl_80634B10
/* 80634AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80634AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80634AF4  3B A3 09 78 */	addi r29, r3, 0x978
/* 80634AF8  7F A3 EB 78 */	mr r3, r29
/* 80634AFC  38 80 00 14 */	li r4, 0x14
/* 80634B00  4B A0 00 C1 */	bl offSwitch__12dSv_danBit_cFi
/* 80634B04  7F A3 EB 78 */	mr r3, r29
/* 80634B08  38 80 00 16 */	li r4, 0x16
/* 80634B0C  4B A0 00 8D */	bl onSwitch__12dSv_danBit_cFi
lbl_80634B10:
/* 80634B10  38 7E 0F 58 */	addi r3, r30, 0xf58
/* 80634B14  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80634B18  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 80634B1C  4B C3 BC 25 */	bl cLib_chaseF__FPfff
/* 80634B20  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80634B24  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80634B28  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80634B2C  4B C3 BC 15 */	bl cLib_chaseF__FPfff
/* 80634B30  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80634B34  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80634B38  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80634B3C  4B C3 BC 05 */	bl cLib_chaseF__FPfff
/* 80634B40  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80634B44  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 80634B48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80634B4C  4B C3 BB F5 */	bl cLib_chaseF__FPfff
/* 80634B50  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80634B54  D0 1E 0F 38 */	stfs f0, 0xf38(r30)
/* 80634B58  38 7E 0F 50 */	addi r3, r30, 0xf50
/* 80634B5C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80634B60  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80634B64  4B C3 BB DD */	bl cLib_chaseF__FPfff
/* 80634B68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80634B6C  38 9E 0F 34 */	addi r4, r30, 0xf34
/* 80634B70  C0 3E 0F 50 */	lfs f1, 0xf50(r30)
/* 80634B74  4B C3 BE 1D */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80634B78  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80634B7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80634B80  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80634B84  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80634B88  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80634B8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80634B90  C0 5E 0F 3C */	lfs f2, 0xf3c(r30)
/* 80634B94  C0 1E 0F 34 */	lfs f0, 0xf34(r30)
/* 80634B98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80634B9C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80634BA0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80634BA4  38 61 00 10 */	addi r3, r1, 0x10
/* 80634BA8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80634BAC  4B D1 27 F1 */	bl PSVECSquareDistance
/* 80634BB0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80634BB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80634BB8  40 81 00 58 */	ble lbl_80634C10
/* 80634BBC  FC 00 08 34 */	frsqrte f0, f1
/* 80634BC0  C8 9F 01 40 */	lfd f4, 0x140(r31)
/* 80634BC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80634BC8  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 80634BCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80634BD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80634BD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80634BD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80634BDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80634BE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80634BE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80634BE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80634BEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80634BF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80634BF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80634BF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80634BFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80634C00  FC 02 00 32 */	fmul f0, f2, f0
/* 80634C04  FC 21 00 32 */	fmul f1, f1, f0
/* 80634C08  FC 20 08 18 */	frsp f1, f1
/* 80634C0C  48 00 00 88 */	b lbl_80634C94
lbl_80634C10:
/* 80634C10  C8 1F 01 50 */	lfd f0, 0x150(r31)
/* 80634C14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80634C18  40 80 00 10 */	bge lbl_80634C28
/* 80634C1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80634C20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80634C24  48 00 00 70 */	b lbl_80634C94
lbl_80634C28:
/* 80634C28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80634C2C  80 81 00 08 */	lwz r4, 8(r1)
/* 80634C30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80634C34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80634C38  7C 03 00 00 */	cmpw r3, r0
/* 80634C3C  41 82 00 14 */	beq lbl_80634C50
/* 80634C40  40 80 00 40 */	bge lbl_80634C80
/* 80634C44  2C 03 00 00 */	cmpwi r3, 0
/* 80634C48  41 82 00 20 */	beq lbl_80634C68
/* 80634C4C  48 00 00 34 */	b lbl_80634C80
lbl_80634C50:
/* 80634C50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80634C54  41 82 00 0C */	beq lbl_80634C60
/* 80634C58  38 00 00 01 */	li r0, 1
/* 80634C5C  48 00 00 28 */	b lbl_80634C84
lbl_80634C60:
/* 80634C60  38 00 00 02 */	li r0, 2
/* 80634C64  48 00 00 20 */	b lbl_80634C84
lbl_80634C68:
/* 80634C68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80634C6C  41 82 00 0C */	beq lbl_80634C78
/* 80634C70  38 00 00 05 */	li r0, 5
/* 80634C74  48 00 00 10 */	b lbl_80634C84
lbl_80634C78:
/* 80634C78  38 00 00 03 */	li r0, 3
/* 80634C7C  48 00 00 08 */	b lbl_80634C84
lbl_80634C80:
/* 80634C80  38 00 00 04 */	li r0, 4
lbl_80634C84:
/* 80634C84  2C 00 00 01 */	cmpwi r0, 1
/* 80634C88  40 82 00 0C */	bne lbl_80634C94
/* 80634C8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80634C90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80634C94:
/* 80634C94  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80634C98  C0 1E 0F 4C */	lfs f0, 0xf4c(r30)
/* 80634C9C  EC 02 00 2A */	fadds f0, f2, f0
/* 80634CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80634CA4  40 81 00 14 */	ble lbl_80634CB8
/* 80634CA8  7F C3 F3 78 */	mr r3, r30
/* 80634CAC  38 80 00 06 */	li r4, 6
/* 80634CB0  38 A0 00 00 */	li r5, 0
/* 80634CB4  4B FF B1 59 */	bl setActionMode__8daB_YO_cFii
lbl_80634CB8:
/* 80634CB8  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 80634CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80634CC0  40 82 00 14 */	bne lbl_80634CD4
/* 80634CC4  7F C3 F3 78 */	mr r3, r30
/* 80634CC8  38 80 00 06 */	li r4, 6
/* 80634CCC  38 A0 00 00 */	li r5, 0
/* 80634CD0  4B FF B1 3D */	bl setActionMode__8daB_YO_cFii
lbl_80634CD4:
/* 80634CD4  39 61 00 60 */	addi r11, r1, 0x60
/* 80634CD8  4B D2 D5 51 */	bl _restgpr_29
/* 80634CDC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80634CE0  7C 08 03 A6 */	mtlr r0
/* 80634CE4  38 21 00 60 */	addi r1, r1, 0x60
/* 80634CE8  4E 80 00 20 */	blr 
