lbl_80CC57E4:
/* 80CC57E4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80CC57E8  7C 08 02 A6 */	mflr r0
/* 80CC57EC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CC57F0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80CC57F4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80CC57F8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80CC57FC  4B 69 C9 D8 */	b _savegpr_27
/* 80CC5800  7C 7E 1B 78 */	mr r30, r3
/* 80CC5804  3C 60 80 CC */	lis r3, M_attr__14daObjItaRope_c@ha
/* 80CC5808  3B E3 68 F0 */	addi r31, r3, M_attr__14daObjItaRope_c@l
/* 80CC580C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CC5810  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CC5814  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CC5818  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80CC581C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC5820  7C 04 07 74 */	extsb r4, r0
/* 80CC5824  4B 38 BF C8 */	b dPath_GetRoomPath__Fii
/* 80CC5828  80 63 00 08 */	lwz r3, 8(r3)
/* 80CC582C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CC5830  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CC5834  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CC5838  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80CC583C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CC5840  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CC5844  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80CC5848  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CC584C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80CC5850  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80CC5854  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80CC5858  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80CC585C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CC5860  38 81 00 80 */	addi r4, r1, 0x80
/* 80CC5864  38 A1 00 74 */	addi r5, r1, 0x74
/* 80CC5868  4B 5A 12 7C */	b __pl__4cXyzCFRC3Vec
/* 80CC586C  38 61 00 50 */	addi r3, r1, 0x50
/* 80CC5870  38 81 00 5C */	addi r4, r1, 0x5c
/* 80CC5874  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80CC5878  4B 5A 13 0C */	b __ml__4cXyzCFf
/* 80CC587C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CC5880  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CC5884  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CC5888  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CC588C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CC5890  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80CC5894  38 61 00 44 */	addi r3, r1, 0x44
/* 80CC5898  38 81 00 74 */	addi r4, r1, 0x74
/* 80CC589C  38 A1 00 80 */	addi r5, r1, 0x80
/* 80CC58A0  4B 5A 12 94 */	b __mi__4cXyzCFRC3Vec
/* 80CC58A4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CC58A8  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 80CC58AC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CC58B0  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80CC58B4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CC58B8  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80CC58BC  C0 5E 06 28 */	lfs f2, 0x628(r30)
/* 80CC58C0  FC 00 12 10 */	fabs f0, f2
/* 80CC58C4  FC 00 00 18 */	frsp f0, f0
/* 80CC58C8  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 80CC58CC  FC 60 0A 10 */	fabs f3, f1
/* 80CC58D0  FC 60 18 18 */	frsp f3, f3
/* 80CC58D4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CC58D8  40 81 00 1C */	ble lbl_80CC58F4
/* 80CC58DC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80CC58E0  EC 00 08 24 */	fdivs f0, f0, f1
/* 80CC58E4  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80CC58E8  38 00 00 01 */	li r0, 1
/* 80CC58EC  98 1E 06 34 */	stb r0, 0x634(r30)
/* 80CC58F0  48 00 00 18 */	b lbl_80CC5908
lbl_80CC58F4:
/* 80CC58F4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80CC58F8  EC 00 10 24 */	fdivs f0, f0, f2
/* 80CC58FC  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80CC5900  38 00 00 00 */	li r0, 0
/* 80CC5904  98 1E 06 34 */	stb r0, 0x634(r30)
lbl_80CC5908:
/* 80CC5908  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 80CC590C  C0 5E 06 28 */	lfs f2, 0x628(r30)
/* 80CC5910  4B 5A 1D 64 */	b cM_atan2s__Fff
/* 80CC5914  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80CC5918  C0 3E 06 28 */	lfs f1, 0x628(r30)
/* 80CC591C  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80CC5920  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CC5924  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC5928  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CC592C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CC5930  38 61 00 20 */	addi r3, r1, 0x20
/* 80CC5934  4B 68 18 04 */	b PSVECSquareMag
/* 80CC5938  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC593C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5940  40 81 00 58 */	ble lbl_80CC5998
/* 80CC5944  FC 00 08 34 */	frsqrte f0, f1
/* 80CC5948  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80CC594C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5950  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80CC5954  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5958  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC595C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5960  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5964  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5968  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC596C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5970  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5974  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5978  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC597C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5980  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5984  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5988  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC598C  FC 41 00 32 */	fmul f2, f1, f0
/* 80CC5990  FC 40 10 18 */	frsp f2, f2
/* 80CC5994  48 00 00 90 */	b lbl_80CC5A24
lbl_80CC5998:
/* 80CC5998  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80CC599C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC59A0  40 80 00 10 */	bge lbl_80CC59B0
/* 80CC59A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC59A8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80CC59AC  48 00 00 78 */	b lbl_80CC5A24
lbl_80CC59B0:
/* 80CC59B0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC59B4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80CC59B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CC59BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CC59C0  7C 03 00 00 */	cmpw r3, r0
/* 80CC59C4  41 82 00 14 */	beq lbl_80CC59D8
/* 80CC59C8  40 80 00 40 */	bge lbl_80CC5A08
/* 80CC59CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC59D0  41 82 00 20 */	beq lbl_80CC59F0
/* 80CC59D4  48 00 00 34 */	b lbl_80CC5A08
lbl_80CC59D8:
/* 80CC59D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC59DC  41 82 00 0C */	beq lbl_80CC59E8
/* 80CC59E0  38 00 00 01 */	li r0, 1
/* 80CC59E4  48 00 00 28 */	b lbl_80CC5A0C
lbl_80CC59E8:
/* 80CC59E8  38 00 00 02 */	li r0, 2
/* 80CC59EC  48 00 00 20 */	b lbl_80CC5A0C
lbl_80CC59F0:
/* 80CC59F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC59F4  41 82 00 0C */	beq lbl_80CC5A00
/* 80CC59F8  38 00 00 05 */	li r0, 5
/* 80CC59FC  48 00 00 10 */	b lbl_80CC5A0C
lbl_80CC5A00:
/* 80CC5A00  38 00 00 03 */	li r0, 3
/* 80CC5A04  48 00 00 08 */	b lbl_80CC5A0C
lbl_80CC5A08:
/* 80CC5A08  38 00 00 04 */	li r0, 4
lbl_80CC5A0C:
/* 80CC5A0C  2C 00 00 01 */	cmpwi r0, 1
/* 80CC5A10  40 82 00 10 */	bne lbl_80CC5A20
/* 80CC5A14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC5A18  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80CC5A1C  48 00 00 08 */	b lbl_80CC5A24
lbl_80CC5A20:
/* 80CC5A20  FC 40 08 90 */	fmr f2, f1
lbl_80CC5A24:
/* 80CC5A24  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80CC5A28  FC 20 00 50 */	fneg f1, f0
/* 80CC5A2C  4B 5A 1C 48 */	b cM_atan2s__Fff
/* 80CC5A30  B0 7E 04 E4 */	sth r3, 0x4e4(r30)
/* 80CC5A34  C0 3E 06 28 */	lfs f1, 0x628(r30)
/* 80CC5A38  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80CC5A3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC5A40  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC5A44  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CC5A48  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CC5A4C  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC5A50  4B 68 16 E8 */	b PSVECSquareMag
/* 80CC5A54  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC5A58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5A5C  40 81 00 58 */	ble lbl_80CC5AB4
/* 80CC5A60  FC 00 08 34 */	frsqrte f0, f1
/* 80CC5A64  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80CC5A68  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5A6C  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80CC5A70  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5A74  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5A78  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5A7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5A80  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5A84  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5A88  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5A8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5A90  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5A94  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5A98  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5A9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5AA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5AA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5AA8  FC 21 00 32 */	fmul f1, f1, f0
/* 80CC5AAC  FC 20 08 18 */	frsp f1, f1
/* 80CC5AB0  48 00 00 88 */	b lbl_80CC5B38
lbl_80CC5AB4:
/* 80CC5AB4  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80CC5AB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5ABC  40 80 00 10 */	bge lbl_80CC5ACC
/* 80CC5AC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC5AC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CC5AC8  48 00 00 70 */	b lbl_80CC5B38
lbl_80CC5ACC:
/* 80CC5ACC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CC5AD0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CC5AD4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CC5AD8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CC5ADC  7C 03 00 00 */	cmpw r3, r0
/* 80CC5AE0  41 82 00 14 */	beq lbl_80CC5AF4
/* 80CC5AE4  40 80 00 40 */	bge lbl_80CC5B24
/* 80CC5AE8  2C 03 00 00 */	cmpwi r3, 0
/* 80CC5AEC  41 82 00 20 */	beq lbl_80CC5B0C
/* 80CC5AF0  48 00 00 34 */	b lbl_80CC5B24
lbl_80CC5AF4:
/* 80CC5AF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC5AF8  41 82 00 0C */	beq lbl_80CC5B04
/* 80CC5AFC  38 00 00 01 */	li r0, 1
/* 80CC5B00  48 00 00 28 */	b lbl_80CC5B28
lbl_80CC5B04:
/* 80CC5B04  38 00 00 02 */	li r0, 2
/* 80CC5B08  48 00 00 20 */	b lbl_80CC5B28
lbl_80CC5B0C:
/* 80CC5B0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC5B10  41 82 00 0C */	beq lbl_80CC5B1C
/* 80CC5B14  38 00 00 05 */	li r0, 5
/* 80CC5B18  48 00 00 10 */	b lbl_80CC5B28
lbl_80CC5B1C:
/* 80CC5B1C  38 00 00 03 */	li r0, 3
/* 80CC5B20  48 00 00 08 */	b lbl_80CC5B28
lbl_80CC5B24:
/* 80CC5B24  38 00 00 04 */	li r0, 4
lbl_80CC5B28:
/* 80CC5B28  2C 00 00 01 */	cmpwi r0, 1
/* 80CC5B2C  40 82 00 0C */	bne lbl_80CC5B38
/* 80CC5B30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC5B34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CC5B38:
/* 80CC5B38  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80CC5B3C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80CC5B40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CC5B44  EC C2 00 2A */	fadds f6, f2, f0
/* 80CC5B48  7F C3 F3 78 */	mr r3, r30
/* 80CC5B4C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80CC5B50  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80CC5B54  FC 60 30 50 */	fneg f3, f6
/* 80CC5B58  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80CC5B5C  C0 BF 00 74 */	lfs f5, 0x74(r31)
/* 80CC5B60  4B 35 49 E8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CC5B64  38 7E 06 20 */	addi r3, r30, 0x620
/* 80CC5B68  4B 68 15 D0 */	b PSVECSquareMag
/* 80CC5B6C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC5B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5B74  40 81 00 58 */	ble lbl_80CC5BCC
/* 80CC5B78  FC 00 08 34 */	frsqrte f0, f1
/* 80CC5B7C  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80CC5B80  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5B84  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80CC5B88  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5B90  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5B94  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5B98  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5B9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5BA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5BA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5BA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5BAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC5BB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC5BB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC5BB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC5BBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC5BC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80CC5BC4  FC 20 08 18 */	frsp f1, f1
/* 80CC5BC8  48 00 00 88 */	b lbl_80CC5C50
lbl_80CC5BCC:
/* 80CC5BCC  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80CC5BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5BD4  40 80 00 10 */	bge lbl_80CC5BE4
/* 80CC5BD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC5BDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CC5BE0  48 00 00 70 */	b lbl_80CC5C50
lbl_80CC5BE4:
/* 80CC5BE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CC5BE8  80 81 00 08 */	lwz r4, 8(r1)
/* 80CC5BEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CC5BF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CC5BF4  7C 03 00 00 */	cmpw r3, r0
/* 80CC5BF8  41 82 00 14 */	beq lbl_80CC5C0C
/* 80CC5BFC  40 80 00 40 */	bge lbl_80CC5C3C
/* 80CC5C00  2C 03 00 00 */	cmpwi r3, 0
/* 80CC5C04  41 82 00 20 */	beq lbl_80CC5C24
/* 80CC5C08  48 00 00 34 */	b lbl_80CC5C3C
lbl_80CC5C0C:
/* 80CC5C0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC5C10  41 82 00 0C */	beq lbl_80CC5C1C
/* 80CC5C14  38 00 00 01 */	li r0, 1
/* 80CC5C18  48 00 00 28 */	b lbl_80CC5C40
lbl_80CC5C1C:
/* 80CC5C1C  38 00 00 02 */	li r0, 2
/* 80CC5C20  48 00 00 20 */	b lbl_80CC5C40
lbl_80CC5C24:
/* 80CC5C24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC5C28  41 82 00 0C */	beq lbl_80CC5C34
/* 80CC5C2C  38 00 00 05 */	li r0, 5
/* 80CC5C30  48 00 00 10 */	b lbl_80CC5C40
lbl_80CC5C34:
/* 80CC5C34  38 00 00 03 */	li r0, 3
/* 80CC5C38  48 00 00 08 */	b lbl_80CC5C40
lbl_80CC5C3C:
/* 80CC5C3C  38 00 00 04 */	li r0, 4
lbl_80CC5C40:
/* 80CC5C40  2C 00 00 01 */	cmpwi r0, 1
/* 80CC5C44  40 82 00 0C */	bne lbl_80CC5C50
/* 80CC5C48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC5C4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CC5C50:
/* 80CC5C50  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80CC5C54  88 7E 06 35 */	lbz r3, 0x635(r30)
/* 80CC5C58  38 03 FF FF */	addi r0, r3, -1
/* 80CC5C5C  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 80CC5C60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CC5C64  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CC5C68  3C 00 43 30 */	lis r0, 0x4330
/* 80CC5C6C  90 01 00 90 */	stw r0, 0x90(r1)
/* 80CC5C70  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80CC5C74  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CC5C78  EC 03 00 24 */	fdivs f0, f3, f0
/* 80CC5C7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CC5C80  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 80CC5C84  38 61 00 38 */	addi r3, r1, 0x38
/* 80CC5C88  38 9E 06 20 */	addi r4, r30, 0x620
/* 80CC5C8C  C0 1E 06 30 */	lfs f0, 0x630(r30)
/* 80CC5C90  EC 20 08 24 */	fdivs f1, f0, f1
/* 80CC5C94  4B 5A 0E F0 */	b __ml__4cXyzCFf
/* 80CC5C98  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CC5C9C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CC5CA0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80CC5CA4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CC5CA8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80CC5CAC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CC5CB0  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80CC5CB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC5CB8  83 9E 06 18 */	lwz r28, 0x618(r30)
/* 80CC5CBC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80CC5CC0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CC5CC4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CC5CC8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CC5CCC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80CC5CD0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CC5CD4  3B 60 00 01 */	li r27, 1
/* 80CC5CD8  3B A3 00 0C */	addi r29, r3, 0xc
/* 80CC5CDC  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80CC5CE0  48 00 00 5C */	b lbl_80CC5D3C
lbl_80CC5CE4:
/* 80CC5CE4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CC5CE8  38 9D FF F4 */	addi r4, r29, -12
/* 80CC5CEC  38 A1 00 68 */	addi r5, r1, 0x68
/* 80CC5CF0  4B 5A 0D F4 */	b __pl__4cXyzCFRC3Vec
/* 80CC5CF4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CC5CF8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80CC5CFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CC5D00  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80CC5D04  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CC5D08  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80CC5D0C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CC5D10  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80CC5D14  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80CC5D18  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 80CC5D1C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80CC5D20  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80CC5D24  D3 FC 00 00 */	stfs f31, 0(r28)
/* 80CC5D28  D3 FC 00 04 */	stfs f31, 4(r28)
/* 80CC5D2C  D3 FC 00 08 */	stfs f31, 8(r28)
/* 80CC5D30  3B 7B 00 01 */	addi r27, r27, 1
/* 80CC5D34  3B BD 00 0C */	addi r29, r29, 0xc
/* 80CC5D38  3B 9C 00 1C */	addi r28, r28, 0x1c
lbl_80CC5D3C:
/* 80CC5D3C  88 7E 06 35 */	lbz r3, 0x635(r30)
/* 80CC5D40  38 03 FF FF */	addi r0, r3, -1
/* 80CC5D44  7C 1B 00 00 */	cmpw r27, r0
/* 80CC5D48  41 80 FF 9C */	blt lbl_80CC5CE4
/* 80CC5D4C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80CC5D50  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80CC5D54  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80CC5D58  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80CC5D5C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80CC5D60  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80CC5D64  7F C3 F3 78 */	mr r3, r30
/* 80CC5D68  48 00 01 65 */	bl setNormalRopePos__14daObjItaRope_cFv
/* 80CC5D6C  7F C3 F3 78 */	mr r3, r30
/* 80CC5D70  48 00 00 D9 */	bl initBaseMtx__14daObjItaRope_cFv
/* 80CC5D74  3C 60 80 CC */	lis r3, l_arcName@ha
/* 80CC5D78  38 63 69 98 */	addi r3, r3, l_arcName@l
/* 80CC5D7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC5D80  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CC5D84  38 84 69 70 */	addi r4, r4, stringBase0@l
/* 80CC5D88  38 84 00 0A */	addi r4, r4, 0xa
/* 80CC5D8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CC5D90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CC5D94  3C A5 00 02 */	addis r5, r5, 2
/* 80CC5D98  38 C0 00 80 */	li r6, 0x80
/* 80CC5D9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC5DA0  4B 37 65 DC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC5DA4  7C 64 1B 78 */	mr r4, r3
/* 80CC5DA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC5DAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC5DB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC5DB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC5DB8  7C 05 07 74 */	extsb r5, r0
/* 80CC5DBC  38 C0 00 00 */	li r6, 0
/* 80CC5DC0  4B 36 6D 30 */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80CC5DC4  38 00 00 01 */	li r0, 1
/* 80CC5DC8  98 1E 06 36 */	stb r0, 0x636(r30)
/* 80CC5DCC  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80CC5DD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC5DD4  3B E3 00 0C */	addi r31, r3, 0xc
/* 80CC5DD8  83 7E 06 1C */	lwz r27, 0x61c(r30)
/* 80CC5DDC  3B 80 00 00 */	li r28, 0
/* 80CC5DE0  48 00 00 38 */	b lbl_80CC5E18
lbl_80CC5DE4:
/* 80CC5DE4  7F E3 FB 78 */	mr r3, r31
/* 80CC5DE8  38 9F 00 0C */	addi r4, r31, 0xc
/* 80CC5DEC  4B 5A AE 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80CC5DF0  38 03 40 00 */	addi r0, r3, 0x4000
/* 80CC5DF4  7C 05 07 34 */	extsh r5, r0
/* 80CC5DF8  7F 63 DB 78 */	mr r3, r27
/* 80CC5DFC  7F E4 FB 78 */	mr r4, r31
/* 80CC5E00  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC5E04  7C 06 07 74 */	extsb r6, r0
/* 80CC5E08  4B FF F4 75 */	bl create__9Sakuita_cFP4cXyzsSc
/* 80CC5E0C  3B 9C 00 01 */	addi r28, r28, 1
/* 80CC5E10  3B FF 00 0C */	addi r31, r31, 0xc
/* 80CC5E14  3B 7B 00 3C */	addi r27, r27, 0x3c
lbl_80CC5E18:
/* 80CC5E18  88 7E 06 35 */	lbz r3, 0x635(r30)
/* 80CC5E1C  38 03 FF FE */	addi r0, r3, -2
/* 80CC5E20  7C 1C 00 00 */	cmpw r28, r0
/* 80CC5E24  41 80 FF C0 */	blt lbl_80CC5DE4
/* 80CC5E28  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80CC5E2C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80CC5E30  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80CC5E34  4B 69 C3 EC */	b _restgpr_27
/* 80CC5E38  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80CC5E3C  7C 08 03 A6 */	mtlr r0
/* 80CC5E40  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80CC5E44  4E 80 00 20 */	blr 
