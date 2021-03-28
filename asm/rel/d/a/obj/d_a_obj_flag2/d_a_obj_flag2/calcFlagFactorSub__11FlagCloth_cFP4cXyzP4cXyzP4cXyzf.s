lbl_80BEC928:
/* 80BEC928  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BEC92C  7C 08 02 A6 */	mflr r0
/* 80BEC930  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEC934  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BEC938  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BEC93C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BEC940  4B 77 58 9C */	b _savegpr_29
/* 80BEC944  7C 7D 1B 78 */	mr r29, r3
/* 80BEC948  7C 80 23 78 */	mr r0, r4
/* 80BEC94C  7C DE 33 78 */	mr r30, r6
/* 80BEC950  FF E0 08 90 */	fmr f31, f1
/* 80BEC954  3C 60 80 BF */	lis r3, M_attr__12daObjFlag2_c@ha
/* 80BEC958  3B E3 E0 DC */	addi r31, r3, M_attr__12daObjFlag2_c@l
/* 80BEC95C  38 61 00 18 */	addi r3, r1, 0x18
/* 80BEC960  7C A4 2B 78 */	mr r4, r5
/* 80BEC964  7C 05 03 78 */	mr r5, r0
/* 80BEC968  4B 67 A1 CC */	b __mi__4cXyzCFRC3Vec
/* 80BEC96C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BEC970  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BEC974  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BEC978  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BEC97C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BEC980  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BEC984  38 61 00 30 */	addi r3, r1, 0x30
/* 80BEC988  4B 75 A7 B0 */	b PSVECSquareMag
/* 80BEC98C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BEC990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BEC994  40 81 00 58 */	ble lbl_80BEC9EC
/* 80BEC998  FC 00 08 34 */	frsqrte f0, f1
/* 80BEC99C  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80BEC9A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BEC9A4  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80BEC9A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BEC9AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BEC9B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BEC9B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BEC9B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BEC9BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BEC9C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BEC9C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BEC9C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BEC9CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BEC9D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BEC9D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BEC9D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BEC9DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BEC9E0  FC 21 00 32 */	fmul f1, f1, f0
/* 80BEC9E4  FC 20 08 18 */	frsp f1, f1
/* 80BEC9E8  48 00 00 88 */	b lbl_80BECA70
lbl_80BEC9EC:
/* 80BEC9EC  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80BEC9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BEC9F4  40 80 00 10 */	bge lbl_80BECA04
/* 80BEC9F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BEC9FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BECA00  48 00 00 70 */	b lbl_80BECA70
lbl_80BECA04:
/* 80BECA04  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BECA08  80 81 00 08 */	lwz r4, 8(r1)
/* 80BECA0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BECA10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BECA14  7C 03 00 00 */	cmpw r3, r0
/* 80BECA18  41 82 00 14 */	beq lbl_80BECA2C
/* 80BECA1C  40 80 00 40 */	bge lbl_80BECA5C
/* 80BECA20  2C 03 00 00 */	cmpwi r3, 0
/* 80BECA24  41 82 00 20 */	beq lbl_80BECA44
/* 80BECA28  48 00 00 34 */	b lbl_80BECA5C
lbl_80BECA2C:
/* 80BECA2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BECA30  41 82 00 0C */	beq lbl_80BECA3C
/* 80BECA34  38 00 00 01 */	li r0, 1
/* 80BECA38  48 00 00 28 */	b lbl_80BECA60
lbl_80BECA3C:
/* 80BECA3C  38 00 00 02 */	li r0, 2
/* 80BECA40  48 00 00 20 */	b lbl_80BECA60
lbl_80BECA44:
/* 80BECA44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BECA48  41 82 00 0C */	beq lbl_80BECA54
/* 80BECA4C  38 00 00 05 */	li r0, 5
/* 80BECA50  48 00 00 10 */	b lbl_80BECA60
lbl_80BECA54:
/* 80BECA54  38 00 00 03 */	li r0, 3
/* 80BECA58  48 00 00 08 */	b lbl_80BECA60
lbl_80BECA5C:
/* 80BECA5C  38 00 00 04 */	li r0, 4
lbl_80BECA60:
/* 80BECA60  2C 00 00 01 */	cmpwi r0, 1
/* 80BECA64  40 82 00 0C */	bne lbl_80BECA70
/* 80BECA68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BECA6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BECA70:
/* 80BECA70  EF E1 F8 28 */	fsubs f31, f1, f31
/* 80BECA74  38 61 00 0C */	addi r3, r1, 0xc
/* 80BECA78  38 81 00 30 */	addi r4, r1, 0x30
/* 80BECA7C  4B 67 A3 48 */	b normZC__4cXyzCFv
/* 80BECA80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BECA84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BECA88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BECA8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BECA90  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BECA94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BECA98  C0 1D 09 70 */	lfs f0, 0x970(r29)
/* 80BECA9C  EF FF 00 32 */	fmuls f31, f31, f0
/* 80BECAA0  38 61 00 24 */	addi r3, r1, 0x24
/* 80BECAA4  7C 64 1B 78 */	mr r4, r3
/* 80BECAA8  FC 20 F8 90 */	fmr f1, f31
/* 80BECAAC  4B 75 A6 2C */	b PSVECScale
/* 80BECAB0  7F C3 F3 78 */	mr r3, r30
/* 80BECAB4  38 81 00 24 */	addi r4, r1, 0x24
/* 80BECAB8  7F C5 F3 78 */	mr r5, r30
/* 80BECABC  4B 75 A5 D4 */	b PSVECAdd
/* 80BECAC0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BECAC4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BECAC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80BECACC  4B 77 57 5C */	b _restgpr_29
/* 80BECAD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BECAD4  7C 08 03 A6 */	mtlr r0
/* 80BECAD8  38 21 00 60 */	addi r1, r1, 0x60
/* 80BECADC  4E 80 00 20 */	blr 
