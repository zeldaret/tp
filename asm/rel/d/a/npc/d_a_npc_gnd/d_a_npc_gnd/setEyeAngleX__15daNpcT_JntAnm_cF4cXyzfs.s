lbl_809BDF80:
/* 809BDF80  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809BDF84  7C 08 02 A6 */	mflr r0
/* 809BDF88  90 01 00 74 */	stw r0, 0x74(r1)
/* 809BDF8C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809BDF90  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809BDF94  39 61 00 60 */	addi r11, r1, 0x60
/* 809BDF98  4B 9A 42 44 */	b _savegpr_29
/* 809BDF9C  7C 7F 1B 78 */	mr r31, r3
/* 809BDFA0  7C 80 23 78 */	mr r0, r4
/* 809BDFA4  FF E0 08 90 */	fmr f31, f1
/* 809BDFA8  7C BD 2B 78 */	mr r29, r5
/* 809BDFAC  3C 60 80 9C */	lis r3, m__17daNpc_Gnd_Param_c@ha
/* 809BDFB0  3B C3 E4 A0 */	addi r30, r3, m__17daNpc_Gnd_Param_c@l
/* 809BDFB4  38 A0 00 00 */	li r5, 0
/* 809BDFB8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809BDFBC  28 04 00 00 */	cmplwi r4, 0
/* 809BDFC0  41 82 01 40 */	beq lbl_809BE100
/* 809BDFC4  38 61 00 18 */	addi r3, r1, 0x18
/* 809BDFC8  7C 05 03 78 */	mr r5, r0
/* 809BDFCC  4B 8A 8B 68 */	b __mi__4cXyzCFRC3Vec
/* 809BDFD0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 809BDFD4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809BDFD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809BDFDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809BDFE0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809BDFE4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809BDFE8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 809BDFEC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809BDFF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809BDFF4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809BDFF8  38 61 00 0C */	addi r3, r1, 0xc
/* 809BDFFC  4B 98 91 3C */	b PSVECSquareMag
/* 809BE000  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809BE004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809BE008  40 81 00 58 */	ble lbl_809BE060
/* 809BE00C  FC 00 08 34 */	frsqrte f0, f1
/* 809BE010  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809BE014  FC 44 00 32 */	fmul f2, f4, f0
/* 809BE018  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809BE01C  FC 00 00 32 */	fmul f0, f0, f0
/* 809BE020  FC 01 00 32 */	fmul f0, f1, f0
/* 809BE024  FC 03 00 28 */	fsub f0, f3, f0
/* 809BE028  FC 02 00 32 */	fmul f0, f2, f0
/* 809BE02C  FC 44 00 32 */	fmul f2, f4, f0
/* 809BE030  FC 00 00 32 */	fmul f0, f0, f0
/* 809BE034  FC 01 00 32 */	fmul f0, f1, f0
/* 809BE038  FC 03 00 28 */	fsub f0, f3, f0
/* 809BE03C  FC 02 00 32 */	fmul f0, f2, f0
/* 809BE040  FC 44 00 32 */	fmul f2, f4, f0
/* 809BE044  FC 00 00 32 */	fmul f0, f0, f0
/* 809BE048  FC 01 00 32 */	fmul f0, f1, f0
/* 809BE04C  FC 03 00 28 */	fsub f0, f3, f0
/* 809BE050  FC 02 00 32 */	fmul f0, f2, f0
/* 809BE054  FC 41 00 32 */	fmul f2, f1, f0
/* 809BE058  FC 40 10 18 */	frsp f2, f2
/* 809BE05C  48 00 00 90 */	b lbl_809BE0EC
lbl_809BE060:
/* 809BE060  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809BE064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809BE068  40 80 00 10 */	bge lbl_809BE078
/* 809BE06C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809BE070  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809BE074  48 00 00 78 */	b lbl_809BE0EC
lbl_809BE078:
/* 809BE078  D0 21 00 08 */	stfs f1, 8(r1)
/* 809BE07C  80 81 00 08 */	lwz r4, 8(r1)
/* 809BE080  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809BE084  3C 00 7F 80 */	lis r0, 0x7f80
/* 809BE088  7C 03 00 00 */	cmpw r3, r0
/* 809BE08C  41 82 00 14 */	beq lbl_809BE0A0
/* 809BE090  40 80 00 40 */	bge lbl_809BE0D0
/* 809BE094  2C 03 00 00 */	cmpwi r3, 0
/* 809BE098  41 82 00 20 */	beq lbl_809BE0B8
/* 809BE09C  48 00 00 34 */	b lbl_809BE0D0
lbl_809BE0A0:
/* 809BE0A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809BE0A4  41 82 00 0C */	beq lbl_809BE0B0
/* 809BE0A8  38 00 00 01 */	li r0, 1
/* 809BE0AC  48 00 00 28 */	b lbl_809BE0D4
lbl_809BE0B0:
/* 809BE0B0  38 00 00 02 */	li r0, 2
/* 809BE0B4  48 00 00 20 */	b lbl_809BE0D4
lbl_809BE0B8:
/* 809BE0B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809BE0BC  41 82 00 0C */	beq lbl_809BE0C8
/* 809BE0C0  38 00 00 05 */	li r0, 5
/* 809BE0C4  48 00 00 10 */	b lbl_809BE0D4
lbl_809BE0C8:
/* 809BE0C8  38 00 00 03 */	li r0, 3
/* 809BE0CC  48 00 00 08 */	b lbl_809BE0D4
lbl_809BE0D0:
/* 809BE0D0  38 00 00 04 */	li r0, 4
lbl_809BE0D4:
/* 809BE0D4  2C 00 00 01 */	cmpwi r0, 1
/* 809BE0D8  40 82 00 10 */	bne lbl_809BE0E8
/* 809BE0DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809BE0E0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809BE0E4  48 00 00 08 */	b lbl_809BE0EC
lbl_809BE0E8:
/* 809BE0E8  FC 40 08 90 */	fmr f2, f1
lbl_809BE0EC:
/* 809BE0EC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809BE0F0  4B 8A 95 84 */	b cM_atan2s__Fff
/* 809BE0F4  7C 03 00 D0 */	neg r0, r3
/* 809BE0F8  7C 05 07 34 */	extsh r5, r0
/* 809BE0FC  7C A5 EA 14 */	add r5, r5, r29
lbl_809BE100:
/* 809BE100  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 809BE104  7C A5 02 14 */	add r5, r5, r0
/* 809BE108  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 809BE10C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809BE110  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 809BE114  C8 5E 00 C8 */	lfd f2, 0xc8(r30)
/* 809BE118  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809BE11C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BE120  3C 60 43 30 */	lis r3, 0x4330
/* 809BE124  90 61 00 30 */	stw r3, 0x30(r1)
/* 809BE128  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809BE12C  EC 20 10 28 */	fsubs f1, f0, f2
/* 809BE130  EC 03 20 28 */	fsubs f0, f3, f4
/* 809BE134  EC 21 00 32 */	fmuls f1, f1, f0
/* 809BE138  7C A0 07 34 */	extsh r0, r5
/* 809BE13C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809BE140  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809BE144  90 61 00 38 */	stw r3, 0x38(r1)
/* 809BE148  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809BE14C  EC 00 10 28 */	fsubs f0, f0, f2
/* 809BE150  EC 00 01 32 */	fmuls f0, f0, f4
/* 809BE154  EC 01 00 2A */	fadds f0, f1, f0
/* 809BE158  FC 00 00 1E */	fctiwz f0, f0
/* 809BE15C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809BE160  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809BE164  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 809BE168  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809BE16C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809BE170  39 61 00 60 */	addi r11, r1, 0x60
/* 809BE174  4B 9A 40 B4 */	b _restgpr_29
/* 809BE178  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809BE17C  7C 08 03 A6 */	mtlr r0
/* 809BE180  38 21 00 70 */	addi r1, r1, 0x70
/* 809BE184  4E 80 00 20 */	blr 
