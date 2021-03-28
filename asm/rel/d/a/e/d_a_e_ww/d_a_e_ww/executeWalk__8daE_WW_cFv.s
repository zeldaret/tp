lbl_807ECE58:
/* 807ECE58  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807ECE5C  7C 08 02 A6 */	mflr r0
/* 807ECE60  90 01 00 84 */	stw r0, 0x84(r1)
/* 807ECE64  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 807ECE68  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 807ECE6C  39 61 00 70 */	addi r11, r1, 0x70
/* 807ECE70  4B B7 53 68 */	b _savegpr_28
/* 807ECE74  7C 7D 1B 78 */	mr r29, r3
/* 807ECE78  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807ECE7C  3B C3 F7 70 */	addi r30, r3, lit_3905@l
/* 807ECE80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ECE84  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807ECE88  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807ECE8C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 807ECE90  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807ECE94  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807ECE98  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807ECE9C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807ECEA0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 807ECEA4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807ECEA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807ECEAC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807ECEB0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 807ECEB4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 807ECEB8  38 61 00 3C */	addi r3, r1, 0x3c
/* 807ECEBC  38 81 00 48 */	addi r4, r1, 0x48
/* 807ECEC0  4B B5 A4 DC */	b PSVECSquareDistance
/* 807ECEC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807ECEC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECECC  40 81 00 58 */	ble lbl_807ECF24
/* 807ECED0  FC 00 08 34 */	frsqrte f0, f1
/* 807ECED4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807ECED8  FC 44 00 32 */	fmul f2, f4, f0
/* 807ECEDC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807ECEE0  FC 00 00 32 */	fmul f0, f0, f0
/* 807ECEE4  FC 01 00 32 */	fmul f0, f1, f0
/* 807ECEE8  FC 03 00 28 */	fsub f0, f3, f0
/* 807ECEEC  FC 02 00 32 */	fmul f0, f2, f0
/* 807ECEF0  FC 44 00 32 */	fmul f2, f4, f0
/* 807ECEF4  FC 00 00 32 */	fmul f0, f0, f0
/* 807ECEF8  FC 01 00 32 */	fmul f0, f1, f0
/* 807ECEFC  FC 03 00 28 */	fsub f0, f3, f0
/* 807ECF00  FC 02 00 32 */	fmul f0, f2, f0
/* 807ECF04  FC 44 00 32 */	fmul f2, f4, f0
/* 807ECF08  FC 00 00 32 */	fmul f0, f0, f0
/* 807ECF0C  FC 01 00 32 */	fmul f0, f1, f0
/* 807ECF10  FC 03 00 28 */	fsub f0, f3, f0
/* 807ECF14  FC 02 00 32 */	fmul f0, f2, f0
/* 807ECF18  FF E1 00 32 */	fmul f31, f1, f0
/* 807ECF1C  FF E0 F8 18 */	frsp f31, f31
/* 807ECF20  48 00 00 90 */	b lbl_807ECFB0
lbl_807ECF24:
/* 807ECF24  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807ECF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECF2C  40 80 00 10 */	bge lbl_807ECF3C
/* 807ECF30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ECF34  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807ECF38  48 00 00 78 */	b lbl_807ECFB0
lbl_807ECF3C:
/* 807ECF3C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807ECF40  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807ECF44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ECF48  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ECF4C  7C 03 00 00 */	cmpw r3, r0
/* 807ECF50  41 82 00 14 */	beq lbl_807ECF64
/* 807ECF54  40 80 00 40 */	bge lbl_807ECF94
/* 807ECF58  2C 03 00 00 */	cmpwi r3, 0
/* 807ECF5C  41 82 00 20 */	beq lbl_807ECF7C
/* 807ECF60  48 00 00 34 */	b lbl_807ECF94
lbl_807ECF64:
/* 807ECF64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ECF68  41 82 00 0C */	beq lbl_807ECF74
/* 807ECF6C  38 00 00 01 */	li r0, 1
/* 807ECF70  48 00 00 28 */	b lbl_807ECF98
lbl_807ECF74:
/* 807ECF74  38 00 00 02 */	li r0, 2
/* 807ECF78  48 00 00 20 */	b lbl_807ECF98
lbl_807ECF7C:
/* 807ECF7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ECF80  41 82 00 0C */	beq lbl_807ECF8C
/* 807ECF84  38 00 00 05 */	li r0, 5
/* 807ECF88  48 00 00 10 */	b lbl_807ECF98
lbl_807ECF8C:
/* 807ECF8C  38 00 00 03 */	li r0, 3
/* 807ECF90  48 00 00 08 */	b lbl_807ECF98
lbl_807ECF94:
/* 807ECF94  38 00 00 04 */	li r0, 4
lbl_807ECF98:
/* 807ECF98  2C 00 00 01 */	cmpwi r0, 1
/* 807ECF9C  40 82 00 10 */	bne lbl_807ECFAC
/* 807ECFA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ECFA4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807ECFA8  48 00 00 08 */	b lbl_807ECFB0
lbl_807ECFAC:
/* 807ECFAC  FF E0 08 90 */	fmr f31, f1
lbl_807ECFB0:
/* 807ECFB0  80 1D 06 BC */	lwz r0, 0x6bc(r29)
/* 807ECFB4  2C 00 00 0A */	cmpwi r0, 0xa
/* 807ECFB8  41 82 04 38 */	beq lbl_807ED3F0
/* 807ECFBC  40 80 00 1C */	bge lbl_807ECFD8
/* 807ECFC0  2C 00 00 01 */	cmpwi r0, 1
/* 807ECFC4  41 82 00 50 */	beq lbl_807ED014
/* 807ECFC8  40 80 06 8C */	bge lbl_807ED654
/* 807ECFCC  2C 00 00 00 */	cmpwi r0, 0
/* 807ECFD0  40 80 00 14 */	bge lbl_807ECFE4
/* 807ECFD4  48 00 06 80 */	b lbl_807ED654
lbl_807ECFD8:
/* 807ECFD8  2C 00 00 0C */	cmpwi r0, 0xc
/* 807ECFDC  40 80 06 78 */	bge lbl_807ED654
/* 807ECFE0  48 00 04 40 */	b lbl_807ED420
lbl_807ECFE4:
/* 807ECFE4  7F A3 EB 78 */	mr r3, r29
/* 807ECFE8  38 80 00 10 */	li r4, 0x10
/* 807ECFEC  38 A0 00 02 */	li r5, 2
/* 807ECFF0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ECFF4  3C C0 80 7F */	lis r6, l_HIO@ha
/* 807ECFF8  38 C6 FB CC */	addi r6, r6, l_HIO@l
/* 807ECFFC  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 807ED000  4B FF AA DD */	bl setBck__8daE_WW_cFiUcff
/* 807ED004  38 00 00 01 */	li r0, 1
/* 807ED008  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807ED00C  38 00 00 96 */	li r0, 0x96
/* 807ED010  90 1D 07 28 */	stw r0, 0x728(r29)
lbl_807ED014:
/* 807ED014  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807ED018  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED01C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807ED020  4B B3 B4 0C */	b checkPass__12J3DFrameCtrlFf
/* 807ED024  2C 03 00 00 */	cmpwi r3, 0
/* 807ED028  40 82 00 4C */	bne lbl_807ED074
/* 807ED02C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807ED030  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED034  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 807ED038  4B B3 B3 F4 */	b checkPass__12J3DFrameCtrlFf
/* 807ED03C  2C 03 00 00 */	cmpwi r3, 0
/* 807ED040  40 82 00 34 */	bne lbl_807ED074
/* 807ED044  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807ED048  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED04C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807ED050  4B B3 B3 DC */	b checkPass__12J3DFrameCtrlFf
/* 807ED054  2C 03 00 00 */	cmpwi r3, 0
/* 807ED058  40 82 00 1C */	bne lbl_807ED074
/* 807ED05C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807ED060  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED064  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 807ED068  4B B3 B3 C4 */	b checkPass__12J3DFrameCtrlFf
/* 807ED06C  2C 03 00 00 */	cmpwi r3, 0
/* 807ED070  41 82 00 30 */	beq lbl_807ED0A0
lbl_807ED074:
/* 807ED074  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038D@ha */
/* 807ED078  38 03 03 8D */	addi r0, r3, 0x038D /* 0x0007038D@l */
/* 807ED07C  90 01 00 20 */	stw r0, 0x20(r1)
/* 807ED080  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807ED084  38 81 00 20 */	addi r4, r1, 0x20
/* 807ED088  38 A0 00 00 */	li r5, 0
/* 807ED08C  38 C0 FF FF */	li r6, -1
/* 807ED090  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807ED094  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807ED098  7D 89 03 A6 */	mtctr r12
/* 807ED09C  4E 80 04 21 */	bctrl 
lbl_807ED0A0:
/* 807ED0A0  38 00 00 01 */	li r0, 1
/* 807ED0A4  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807ED0A8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807ED0AC  38 9D 06 5C */	addi r4, r29, 0x65c
/* 807ED0B0  4B A8 3B 54 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807ED0B4  7C 7C 1B 78 */	mr r28, r3
/* 807ED0B8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807ED0BC  7F 84 E3 78 */	mr r4, r28
/* 807ED0C0  38 A0 00 08 */	li r5, 8
/* 807ED0C4  38 C0 04 00 */	li r6, 0x400
/* 807ED0C8  38 E0 01 00 */	li r7, 0x100
/* 807ED0CC  4B A8 34 74 */	b cLib_addCalcAngleS__FPsssss
/* 807ED0D0  7F A3 EB 78 */	mr r3, r29
/* 807ED0D4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807ED0D8  4B 82 D6 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807ED0DC  7C 63 07 34 */	extsh r3, r3
/* 807ED0E0  7C 03 E0 50 */	subf r0, r3, r28
/* 807ED0E4  7C 00 07 34 */	extsh r0, r0
/* 807ED0E8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807ED0EC  40 81 00 0C */	ble lbl_807ED0F8
/* 807ED0F0  38 03 40 00 */	addi r0, r3, 0x4000
/* 807ED0F4  7C 1C 07 34 */	extsh r28, r0
lbl_807ED0F8:
/* 807ED0F8  7C 03 E0 50 */	subf r0, r3, r28
/* 807ED0FC  7C 00 07 34 */	extsh r0, r0
/* 807ED100  2C 00 C0 00 */	cmpwi r0, -16384
/* 807ED104  40 80 00 0C */	bge lbl_807ED110
/* 807ED108  38 03 C0 00 */	addi r0, r3, -16384
/* 807ED10C  7C 1C 07 34 */	extsh r28, r0
lbl_807ED110:
/* 807ED110  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807ED114  7F 84 E3 78 */	mr r4, r28
/* 807ED118  38 A0 00 08 */	li r5, 8
/* 807ED11C  38 C0 04 00 */	li r6, 0x400
/* 807ED120  38 E0 01 00 */	li r7, 0x100
/* 807ED124  4B A8 34 1C */	b cLib_addCalcAngleS__FPsssss
/* 807ED128  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807ED12C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807ED130  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807ED134  4B A8 36 0C */	b cLib_chaseF__FPfff
/* 807ED138  C0 5D 06 64 */	lfs f2, 0x664(r29)
/* 807ED13C  C0 1D 06 5C */	lfs f0, 0x65c(r29)
/* 807ED140  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807ED144  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807ED148  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807ED14C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807ED150  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807ED154  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807ED158  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807ED15C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807ED160  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807ED164  38 61 00 24 */	addi r3, r1, 0x24
/* 807ED168  38 81 00 30 */	addi r4, r1, 0x30
/* 807ED16C  4B B5 A2 30 */	b PSVECSquareDistance
/* 807ED170  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807ED174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED178  40 81 00 58 */	ble lbl_807ED1D0
/* 807ED17C  FC 00 08 34 */	frsqrte f0, f1
/* 807ED180  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807ED184  FC 44 00 32 */	fmul f2, f4, f0
/* 807ED188  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807ED18C  FC 00 00 32 */	fmul f0, f0, f0
/* 807ED190  FC 01 00 32 */	fmul f0, f1, f0
/* 807ED194  FC 03 00 28 */	fsub f0, f3, f0
/* 807ED198  FC 02 00 32 */	fmul f0, f2, f0
/* 807ED19C  FC 44 00 32 */	fmul f2, f4, f0
/* 807ED1A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807ED1A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807ED1A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807ED1AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807ED1B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807ED1B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807ED1B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807ED1BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807ED1C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807ED1C4  FC 21 00 32 */	fmul f1, f1, f0
/* 807ED1C8  FC 20 08 18 */	frsp f1, f1
/* 807ED1CC  48 00 00 88 */	b lbl_807ED254
lbl_807ED1D0:
/* 807ED1D0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807ED1D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED1D8  40 80 00 10 */	bge lbl_807ED1E8
/* 807ED1DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ED1E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807ED1E4  48 00 00 70 */	b lbl_807ED254
lbl_807ED1E8:
/* 807ED1E8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807ED1EC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807ED1F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ED1F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ED1F8  7C 03 00 00 */	cmpw r3, r0
/* 807ED1FC  41 82 00 14 */	beq lbl_807ED210
/* 807ED200  40 80 00 40 */	bge lbl_807ED240
/* 807ED204  2C 03 00 00 */	cmpwi r3, 0
/* 807ED208  41 82 00 20 */	beq lbl_807ED228
/* 807ED20C  48 00 00 34 */	b lbl_807ED240
lbl_807ED210:
/* 807ED210  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ED214  41 82 00 0C */	beq lbl_807ED220
/* 807ED218  38 00 00 01 */	li r0, 1
/* 807ED21C  48 00 00 28 */	b lbl_807ED244
lbl_807ED220:
/* 807ED220  38 00 00 02 */	li r0, 2
/* 807ED224  48 00 00 20 */	b lbl_807ED244
lbl_807ED228:
/* 807ED228  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ED22C  41 82 00 0C */	beq lbl_807ED238
/* 807ED230  38 00 00 05 */	li r0, 5
/* 807ED234  48 00 00 10 */	b lbl_807ED244
lbl_807ED238:
/* 807ED238  38 00 00 03 */	li r0, 3
/* 807ED23C  48 00 00 08 */	b lbl_807ED244
lbl_807ED240:
/* 807ED240  38 00 00 04 */	li r0, 4
lbl_807ED244:
/* 807ED244  2C 00 00 01 */	cmpwi r0, 1
/* 807ED248  40 82 00 0C */	bne lbl_807ED254
/* 807ED24C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ED250  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807ED254:
/* 807ED254  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807ED258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED25C  41 80 00 10 */	blt lbl_807ED26C
/* 807ED260  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807ED264  2C 00 00 00 */	cmpwi r0, 0
/* 807ED268  40 82 00 14 */	bne lbl_807ED27C
lbl_807ED26C:
/* 807ED26C  7F A3 EB 78 */	mr r3, r29
/* 807ED270  38 80 00 03 */	li r4, 3
/* 807ED274  38 A0 00 02 */	li r5, 2
/* 807ED278  4B FF A9 65 */	bl setActionMode__8daE_WW_cFii
lbl_807ED27C:
/* 807ED27C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807ED280  C0 3D 06 B0 */	lfs f1, 0x6b0(r29)
/* 807ED284  EC 00 08 2A */	fadds f0, f0, f1
/* 807ED288  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807ED28C  40 80 00 CC */	bge lbl_807ED358
/* 807ED290  80 1D 07 30 */	lwz r0, 0x730(r29)
/* 807ED294  2C 00 00 00 */	cmpwi r0, 0
/* 807ED298  40 82 00 14 */	bne lbl_807ED2AC
/* 807ED29C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 807ED2A0  EC 00 08 2A */	fadds f0, f0, f1
/* 807ED2A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807ED2A8  40 80 00 38 */	bge lbl_807ED2E0
lbl_807ED2AC:
/* 807ED2AC  7F A3 EB 78 */	mr r3, r29
/* 807ED2B0  38 80 00 03 */	li r4, 3
/* 807ED2B4  38 A0 00 0C */	li r5, 0xc
/* 807ED2B8  4B FF A9 25 */	bl setActionMode__8daE_WW_cFii
/* 807ED2BC  7F A3 EB 78 */	mr r3, r29
/* 807ED2C0  38 80 00 0B */	li r4, 0xb
/* 807ED2C4  38 A0 00 02 */	li r5, 2
/* 807ED2C8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ED2CC  3C C0 80 7F */	lis r6, l_HIO@ha
/* 807ED2D0  38 C6 FB CC */	addi r6, r6, l_HIO@l
/* 807ED2D4  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807ED2D8  4B FF A8 05 */	bl setBck__8daE_WW_cFiUcff
/* 807ED2DC  48 00 00 D4 */	b lbl_807ED3B0
lbl_807ED2E0:
/* 807ED2E0  7F A3 EB 78 */	mr r3, r29
/* 807ED2E4  38 80 00 05 */	li r4, 5
/* 807ED2E8  38 A0 00 00 */	li r5, 0
/* 807ED2EC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ED2F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807ED2F4  4B FF A7 E9 */	bl setBck__8daE_WW_cFiUcff
/* 807ED2F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807ED2FC  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807ED300  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807ED304  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807ED308  38 81 00 1C */	addi r4, r1, 0x1c
/* 807ED30C  38 A0 00 00 */	li r5, 0
/* 807ED310  38 C0 FF FF */	li r6, -1
/* 807ED314  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807ED318  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807ED31C  7D 89 03 A6 */	mtctr r12
/* 807ED320  4E 80 04 21 */	bctrl 
/* 807ED324  7F A3 EB 78 */	mr r3, r29
/* 807ED328  38 80 00 03 */	li r4, 3
/* 807ED32C  38 A0 00 0F */	li r5, 0xf
/* 807ED330  4B FF A8 AD */	bl setActionMode__8daE_WW_cFii
/* 807ED334  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 807ED338  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807ED33C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807ED340  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807ED344  38 00 00 3C */	li r0, 0x3c
/* 807ED348  90 1D 07 30 */	stw r0, 0x730(r29)
/* 807ED34C  38 00 00 01 */	li r0, 1
/* 807ED350  98 1D 07 5B */	stb r0, 0x75b(r29)
/* 807ED354  48 00 00 5C */	b lbl_807ED3B0
lbl_807ED358:
/* 807ED358  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 807ED35C  EC 00 08 2A */	fadds f0, f0, f1
/* 807ED360  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807ED364  40 81 00 4C */	ble lbl_807ED3B0
/* 807ED368  7F A3 EB 78 */	mr r3, r29
/* 807ED36C  38 80 00 0B */	li r4, 0xb
/* 807ED370  38 A0 00 02 */	li r5, 2
/* 807ED374  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ED378  3C C0 80 7F */	lis r6, l_HIO@ha
/* 807ED37C  38 C6 FB CC */	addi r6, r6, l_HIO@l
/* 807ED380  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807ED384  4B FF A7 59 */	bl setBck__8daE_WW_cFiUcff
/* 807ED388  7F A3 EB 78 */	mr r3, r29
/* 807ED38C  38 80 00 03 */	li r4, 3
/* 807ED390  38 A0 00 14 */	li r5, 0x14
/* 807ED394  4B FF A8 49 */	bl setActionMode__8daE_WW_cFii
/* 807ED398  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807ED39C  38 63 FB CC */	addi r3, r3, l_HIO@l
/* 807ED3A0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 807ED3A4  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807ED3A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807ED3AC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807ED3B0:
/* 807ED3B0  7F A3 EB 78 */	mr r3, r29
/* 807ED3B4  4B FF B8 A1 */	bl checkSideStep__8daE_WW_cFv
/* 807ED3B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ED3BC  41 82 00 20 */	beq lbl_807ED3DC
/* 807ED3C0  7F A3 EB 78 */	mr r3, r29
/* 807ED3C4  38 80 00 03 */	li r4, 3
/* 807ED3C8  38 A0 00 19 */	li r5, 0x19
/* 807ED3CC  4B FF A8 11 */	bl setActionMode__8daE_WW_cFii
/* 807ED3D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807ED3D4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807ED3D8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807ED3DC:
/* 807ED3DC  7F A3 EB 78 */	mr r3, r29
/* 807ED3E0  4B FF E5 85 */	bl checkMoveOut__8daE_WW_cFv
/* 807ED3E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ED3E8  41 82 02 6C */	beq lbl_807ED654
/* 807ED3EC  48 00 02 68 */	b lbl_807ED654
lbl_807ED3F0:
/* 807ED3F0  7F A3 EB 78 */	mr r3, r29
/* 807ED3F4  38 80 00 0B */	li r4, 0xb
/* 807ED3F8  38 A0 00 02 */	li r5, 2
/* 807ED3FC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ED400  3C C0 80 7F */	lis r6, l_HIO@ha
/* 807ED404  38 C6 FB CC */	addi r6, r6, l_HIO@l
/* 807ED408  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807ED40C  4B FF A6 D1 */	bl setBck__8daE_WW_cFiUcff
/* 807ED410  38 00 00 0B */	li r0, 0xb
/* 807ED414  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807ED418  38 00 00 96 */	li r0, 0x96
/* 807ED41C  90 1D 07 28 */	stw r0, 0x728(r29)
lbl_807ED420:
/* 807ED420  48 00 23 25 */	bl checkNowWolf__9daPy_py_cFv
/* 807ED424  28 03 00 00 */	cmplwi r3, 0
/* 807ED428  41 82 00 18 */	beq lbl_807ED440
/* 807ED42C  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807ED430  38 63 FB CC */	addi r3, r3, l_HIO@l
/* 807ED434  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807ED438  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807ED43C  48 00 00 14 */	b lbl_807ED450
lbl_807ED440:
/* 807ED440  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807ED444  38 63 FB CC */	addi r3, r3, l_HIO@l
/* 807ED448  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 807ED44C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807ED450:
/* 807ED450  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807ED454  38 9D 06 5C */	addi r4, r29, 0x65c
/* 807ED458  4B A8 37 AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807ED45C  7C 65 1B 78 */	mr r5, r3
/* 807ED460  7F A3 EB 78 */	mr r3, r29
/* 807ED464  38 81 00 08 */	addi r4, r1, 8
/* 807ED468  48 00 0A 25 */	bl calcMoveDir__8daE_WW_cFPss
/* 807ED46C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ED470  41 82 00 20 */	beq lbl_807ED490
/* 807ED474  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807ED478  A8 81 00 08 */	lha r4, 8(r1)
/* 807ED47C  38 A0 00 04 */	li r5, 4
/* 807ED480  38 C0 08 00 */	li r6, 0x800
/* 807ED484  38 E0 02 00 */	li r7, 0x200
/* 807ED488  4B A8 30 B8 */	b cLib_addCalcAngleS__FPsssss
/* 807ED48C  48 00 00 1C */	b lbl_807ED4A8
lbl_807ED490:
/* 807ED490  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807ED494  A8 81 00 08 */	lha r4, 8(r1)
/* 807ED498  38 A0 00 08 */	li r5, 8
/* 807ED49C  38 C0 02 00 */	li r6, 0x200
/* 807ED4A0  38 E0 00 80 */	li r7, 0x80
/* 807ED4A4  4B A8 30 9C */	b cLib_addCalcAngleS__FPsssss
lbl_807ED4A8:
/* 807ED4A8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807ED4AC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807ED4B0  38 7D 06 5C */	addi r3, r29, 0x65c
/* 807ED4B4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807ED4B8  4B B5 9E E4 */	b PSVECSquareDistance
/* 807ED4BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807ED4C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED4C4  40 81 00 58 */	ble lbl_807ED51C
/* 807ED4C8  FC 00 08 34 */	frsqrte f0, f1
/* 807ED4CC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807ED4D0  FC 44 00 32 */	fmul f2, f4, f0
/* 807ED4D4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807ED4D8  FC 00 00 32 */	fmul f0, f0, f0
/* 807ED4DC  FC 01 00 32 */	fmul f0, f1, f0
/* 807ED4E0  FC 03 00 28 */	fsub f0, f3, f0
/* 807ED4E4  FC 02 00 32 */	fmul f0, f2, f0
/* 807ED4E8  FC 44 00 32 */	fmul f2, f4, f0
/* 807ED4EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807ED4F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807ED4F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807ED4F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807ED4FC  FC 44 00 32 */	fmul f2, f4, f0
/* 807ED500  FC 00 00 32 */	fmul f0, f0, f0
/* 807ED504  FC 01 00 32 */	fmul f0, f1, f0
/* 807ED508  FC 03 00 28 */	fsub f0, f3, f0
/* 807ED50C  FC 02 00 32 */	fmul f0, f2, f0
/* 807ED510  FC 21 00 32 */	fmul f1, f1, f0
/* 807ED514  FC 20 08 18 */	frsp f1, f1
/* 807ED518  48 00 00 88 */	b lbl_807ED5A0
lbl_807ED51C:
/* 807ED51C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807ED520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED524  40 80 00 10 */	bge lbl_807ED534
/* 807ED528  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ED52C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807ED530  48 00 00 70 */	b lbl_807ED5A0
lbl_807ED534:
/* 807ED534  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807ED538  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807ED53C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ED540  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ED544  7C 03 00 00 */	cmpw r3, r0
/* 807ED548  41 82 00 14 */	beq lbl_807ED55C
/* 807ED54C  40 80 00 40 */	bge lbl_807ED58C
/* 807ED550  2C 03 00 00 */	cmpwi r3, 0
/* 807ED554  41 82 00 20 */	beq lbl_807ED574
/* 807ED558  48 00 00 34 */	b lbl_807ED58C
lbl_807ED55C:
/* 807ED55C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ED560  41 82 00 0C */	beq lbl_807ED56C
/* 807ED564  38 00 00 01 */	li r0, 1
/* 807ED568  48 00 00 28 */	b lbl_807ED590
lbl_807ED56C:
/* 807ED56C  38 00 00 02 */	li r0, 2
/* 807ED570  48 00 00 20 */	b lbl_807ED590
lbl_807ED574:
/* 807ED574  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ED578  41 82 00 0C */	beq lbl_807ED584
/* 807ED57C  38 00 00 05 */	li r0, 5
/* 807ED580  48 00 00 10 */	b lbl_807ED590
lbl_807ED584:
/* 807ED584  38 00 00 03 */	li r0, 3
/* 807ED588  48 00 00 08 */	b lbl_807ED590
lbl_807ED58C:
/* 807ED58C  38 00 00 04 */	li r0, 4
lbl_807ED590:
/* 807ED590  2C 00 00 01 */	cmpwi r0, 1
/* 807ED594  40 82 00 0C */	bne lbl_807ED5A0
/* 807ED598  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ED59C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807ED5A0:
/* 807ED5A0  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807ED5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED5A8  41 80 00 10 */	blt lbl_807ED5B8
/* 807ED5AC  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807ED5B0  2C 00 00 00 */	cmpwi r0, 0
/* 807ED5B4  40 82 00 A0 */	bne lbl_807ED654
lbl_807ED5B8:
/* 807ED5B8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 807ED5BC  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807ED5C0  EC 01 00 2A */	fadds f0, f1, f0
/* 807ED5C4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807ED5C8  40 81 00 5C */	ble lbl_807ED624
/* 807ED5CC  7F A3 EB 78 */	mr r3, r29
/* 807ED5D0  38 80 00 03 */	li r4, 3
/* 807ED5D4  38 A0 00 02 */	li r5, 2
/* 807ED5D8  4B FF A6 05 */	bl setActionMode__8daE_WW_cFii
/* 807ED5DC  7F A3 EB 78 */	mr r3, r29
/* 807ED5E0  38 80 00 0E */	li r4, 0xe
/* 807ED5E4  38 A0 00 00 */	li r5, 0
/* 807ED5E8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ED5EC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807ED5F0  4B FF A4 ED */	bl setBck__8daE_WW_cFiUcff
/* 807ED5F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807ED5F8  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807ED5FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 807ED600  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807ED604  38 81 00 18 */	addi r4, r1, 0x18
/* 807ED608  38 A0 00 00 */	li r5, 0
/* 807ED60C  38 C0 FF FF */	li r6, -1
/* 807ED610  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807ED614  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807ED618  7D 89 03 A6 */	mtctr r12
/* 807ED61C  4E 80 04 21 */	bctrl 
/* 807ED620  48 00 00 34 */	b lbl_807ED654
lbl_807ED624:
/* 807ED624  7F A3 EB 78 */	mr r3, r29
/* 807ED628  38 80 00 03 */	li r4, 3
/* 807ED62C  38 A0 00 0C */	li r5, 0xc
/* 807ED630  4B FF A5 AD */	bl setActionMode__8daE_WW_cFii
/* 807ED634  7F A3 EB 78 */	mr r3, r29
/* 807ED638  38 80 00 0B */	li r4, 0xb
/* 807ED63C  38 A0 00 02 */	li r5, 2
/* 807ED640  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807ED644  3C C0 80 7F */	lis r6, l_HIO@ha
/* 807ED648  38 C6 FB CC */	addi r6, r6, l_HIO@l
/* 807ED64C  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807ED650  4B FF A4 8D */	bl setBck__8daE_WW_cFiUcff
lbl_807ED654:
/* 807ED654  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 807ED658  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 807ED65C  39 61 00 70 */	addi r11, r1, 0x70
/* 807ED660  4B B7 4B C4 */	b _restgpr_28
/* 807ED664  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807ED668  7C 08 03 A6 */	mtlr r0
/* 807ED66C  38 21 00 80 */	addi r1, r1, 0x80
/* 807ED670  4E 80 00 20 */	blr 
