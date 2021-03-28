lbl_800E5830:
/* 800E5830  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E5834  7C 08 02 A6 */	mflr r0
/* 800E5838  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E583C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800E5840  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800E5844  39 61 00 50 */	addi r11, r1, 0x50
/* 800E5848  48 27 C9 91 */	bl _savegpr_28
/* 800E584C  7C 7E 1B 78 */	mr r30, r3
/* 800E5850  7C 9C 23 78 */	mr r28, r4
/* 800E5854  7C BD 2B 78 */	mr r29, r5
/* 800E5858  7C DF 33 78 */	mr r31, r6
/* 800E585C  4B FC 4D 8D */	bl checkNoCollisionCorret__9daAlink_cFv
/* 800E5860  2C 03 00 00 */	cmpwi r3, 0
/* 800E5864  40 82 02 E8 */	bne lbl_800E5B4C
/* 800E5868  7F 83 E3 78 */	mr r3, r28
/* 800E586C  38 9E 37 C8 */	addi r4, r30, 0x37c8
/* 800E5870  7F A5 EB 78 */	mr r5, r29
/* 800E5874  7F E6 FB 78 */	mr r6, r31
/* 800E5878  4B F9 24 ED */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800E587C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E5880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E5884  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E5888  7F 84 E3 78 */	mr r4, r28
/* 800E588C  4B F8 EB 29 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800E5890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E5894  41 82 02 B8 */	beq lbl_800E5B4C
/* 800E5898  38 7C 00 14 */	addi r3, r28, 0x14
/* 800E589C  4B F9 04 71 */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 800E58A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E58A4  41 82 02 A8 */	beq lbl_800E5B4C
/* 800E58A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 800E58AC  7F A4 EB 78 */	mr r4, r29
/* 800E58B0  38 BC 00 30 */	addi r5, r28, 0x30
/* 800E58B4  48 18 12 81 */	bl __mi__4cXyzCFRC3Vec
/* 800E58B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E58BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E58C0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800E58C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E58C8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E58CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E58D0  38 61 00 28 */	addi r3, r1, 0x28
/* 800E58D4  48 26 18 65 */	bl PSVECSquareMag
/* 800E58D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E58DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E58E0  40 81 00 58 */	ble lbl_800E5938
/* 800E58E4  FC 00 08 34 */	frsqrte f0, f1
/* 800E58E8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E58EC  FC 44 00 32 */	fmul f2, f4, f0
/* 800E58F0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E58F4  FC 00 00 32 */	fmul f0, f0, f0
/* 800E58F8  FC 01 00 32 */	fmul f0, f1, f0
/* 800E58FC  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5900  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5904  FC 44 00 32 */	fmul f2, f4, f0
/* 800E5908  FC 00 00 32 */	fmul f0, f0, f0
/* 800E590C  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5910  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5914  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5918  FC 44 00 32 */	fmul f2, f4, f0
/* 800E591C  FC 00 00 32 */	fmul f0, f0, f0
/* 800E5920  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5924  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5928  FC 02 00 32 */	fmul f0, f2, f0
/* 800E592C  FF E1 00 32 */	fmul f31, f1, f0
/* 800E5930  FF E0 F8 18 */	frsp f31, f31
/* 800E5934  48 00 00 90 */	b lbl_800E59C4
lbl_800E5938:
/* 800E5938  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E593C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5940  40 80 00 10 */	bge lbl_800E5950
/* 800E5944  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E5948  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 800E594C  48 00 00 78 */	b lbl_800E59C4
lbl_800E5950:
/* 800E5950  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E5954  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800E5958  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E595C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E5960  7C 03 00 00 */	cmpw r3, r0
/* 800E5964  41 82 00 14 */	beq lbl_800E5978
/* 800E5968  40 80 00 40 */	bge lbl_800E59A8
/* 800E596C  2C 03 00 00 */	cmpwi r3, 0
/* 800E5970  41 82 00 20 */	beq lbl_800E5990
/* 800E5974  48 00 00 34 */	b lbl_800E59A8
lbl_800E5978:
/* 800E5978  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E597C  41 82 00 0C */	beq lbl_800E5988
/* 800E5980  38 00 00 01 */	li r0, 1
/* 800E5984  48 00 00 28 */	b lbl_800E59AC
lbl_800E5988:
/* 800E5988  38 00 00 02 */	li r0, 2
/* 800E598C  48 00 00 20 */	b lbl_800E59AC
lbl_800E5990:
/* 800E5990  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E5994  41 82 00 0C */	beq lbl_800E59A0
/* 800E5998  38 00 00 05 */	li r0, 5
/* 800E599C  48 00 00 10 */	b lbl_800E59AC
lbl_800E59A0:
/* 800E59A0  38 00 00 03 */	li r0, 3
/* 800E59A4  48 00 00 08 */	b lbl_800E59AC
lbl_800E59A8:
/* 800E59A8  38 00 00 04 */	li r0, 4
lbl_800E59AC:
/* 800E59AC  2C 00 00 01 */	cmpwi r0, 1
/* 800E59B0  40 82 00 10 */	bne lbl_800E59C0
/* 800E59B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E59B8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 800E59BC  48 00 00 08 */	b lbl_800E59C4
lbl_800E59C0:
/* 800E59C0  FF E0 08 90 */	fmr f31, f1
lbl_800E59C4:
/* 800E59C4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E59C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E59CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E59D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E59D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E59D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E59DC  38 61 00 10 */	addi r3, r1, 0x10
/* 800E59E0  48 26 17 59 */	bl PSVECSquareMag
/* 800E59E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E59E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E59EC  40 81 00 58 */	ble lbl_800E5A44
/* 800E59F0  FC 00 08 34 */	frsqrte f0, f1
/* 800E59F4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E59F8  FC 44 00 32 */	fmul f2, f4, f0
/* 800E59FC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E5A00  FC 00 00 32 */	fmul f0, f0, f0
/* 800E5A04  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5A08  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5A10  FC 44 00 32 */	fmul f2, f4, f0
/* 800E5A14  FC 00 00 32 */	fmul f0, f0, f0
/* 800E5A18  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5A1C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5A20  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5A24  FC 44 00 32 */	fmul f2, f4, f0
/* 800E5A28  FC 00 00 32 */	fmul f0, f0, f0
/* 800E5A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5A30  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5A34  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5A38  FC 21 00 32 */	fmul f1, f1, f0
/* 800E5A3C  FC 20 08 18 */	frsp f1, f1
/* 800E5A40  48 00 00 88 */	b lbl_800E5AC8
lbl_800E5A44:
/* 800E5A44  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E5A48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5A4C  40 80 00 10 */	bge lbl_800E5A5C
/* 800E5A50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E5A54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800E5A58  48 00 00 70 */	b lbl_800E5AC8
lbl_800E5A5C:
/* 800E5A5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E5A60  80 81 00 08 */	lwz r4, 8(r1)
/* 800E5A64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E5A68  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E5A6C  7C 03 00 00 */	cmpw r3, r0
/* 800E5A70  41 82 00 14 */	beq lbl_800E5A84
/* 800E5A74  40 80 00 40 */	bge lbl_800E5AB4
/* 800E5A78  2C 03 00 00 */	cmpwi r3, 0
/* 800E5A7C  41 82 00 20 */	beq lbl_800E5A9C
/* 800E5A80  48 00 00 34 */	b lbl_800E5AB4
lbl_800E5A84:
/* 800E5A84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E5A88  41 82 00 0C */	beq lbl_800E5A94
/* 800E5A8C  38 00 00 01 */	li r0, 1
/* 800E5A90  48 00 00 28 */	b lbl_800E5AB8
lbl_800E5A94:
/* 800E5A94  38 00 00 02 */	li r0, 2
/* 800E5A98  48 00 00 20 */	b lbl_800E5AB8
lbl_800E5A9C:
/* 800E5A9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E5AA0  41 82 00 0C */	beq lbl_800E5AAC
/* 800E5AA4  38 00 00 05 */	li r0, 5
/* 800E5AA8  48 00 00 10 */	b lbl_800E5AB8
lbl_800E5AAC:
/* 800E5AAC  38 00 00 03 */	li r0, 3
/* 800E5AB0  48 00 00 08 */	b lbl_800E5AB8
lbl_800E5AB4:
/* 800E5AB4  38 00 00 04 */	li r0, 4
lbl_800E5AB8:
/* 800E5AB8  2C 00 00 01 */	cmpwi r0, 1
/* 800E5ABC  40 82 00 0C */	bne lbl_800E5AC8
/* 800E5AC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E5AC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800E5AC8:
/* 800E5AC8  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800E5ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5AD0  40 81 00 24 */	ble lbl_800E5AF4
/* 800E5AD4  EC 3F 08 24 */	fdivs f1, f31, f1
/* 800E5AD8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E5ADC  EC 00 00 72 */	fmuls f0, f0, f1
/* 800E5AE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E5AE4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E5AE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 800E5AEC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E5AF0  48 00 00 1C */	b lbl_800E5B0C
lbl_800E5AF4:
/* 800E5AF4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E5AF8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E5AFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E5B00  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E5B04  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E5B08  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_800E5B0C:
/* 800E5B0C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800E5B10  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E5B14  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5B18  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E5B1C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800E5B20  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E5B24  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5B28  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E5B2C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800E5B30  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E5B34  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5B38  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800E5B3C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800E5B40  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E5B44  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5B48  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800E5B4C:
/* 800E5B4C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800E5B50  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800E5B54  39 61 00 50 */	addi r11, r1, 0x50
/* 800E5B58  48 27 C6 CD */	bl _restgpr_28
/* 800E5B5C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E5B60  7C 08 03 A6 */	mtlr r0
/* 800E5B64  38 21 00 60 */	addi r1, r1, 0x60
/* 800E5B68  4E 80 00 20 */	blr 
