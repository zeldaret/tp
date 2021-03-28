lbl_8053E0A0:
/* 8053E0A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8053E0A4  7C 08 02 A6 */	mflr r0
/* 8053E0A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8053E0AC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8053E0B0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8053E0B4  39 61 00 60 */	addi r11, r1, 0x60
/* 8053E0B8  4B E2 41 24 */	b _savegpr_29
/* 8053E0BC  7C 7F 1B 78 */	mr r31, r3
/* 8053E0C0  7C 80 23 78 */	mr r0, r4
/* 8053E0C4  FF E0 08 90 */	fmr f31, f1
/* 8053E0C8  7C BD 2B 78 */	mr r29, r5
/* 8053E0CC  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha
/* 8053E0D0  3B C3 E7 54 */	addi r30, r3, m__18daNpc_Besu_Param_c@l
/* 8053E0D4  38 A0 00 00 */	li r5, 0
/* 8053E0D8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8053E0DC  28 04 00 00 */	cmplwi r4, 0
/* 8053E0E0  41 82 01 40 */	beq lbl_8053E220
/* 8053E0E4  38 61 00 18 */	addi r3, r1, 0x18
/* 8053E0E8  7C 05 03 78 */	mr r5, r0
/* 8053E0EC  4B D2 8A 48 */	b __mi__4cXyzCFRC3Vec
/* 8053E0F0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8053E0F4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8053E0F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8053E0FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8053E100  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8053E104  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8053E108  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8053E10C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8053E110  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8053E114  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8053E118  38 61 00 0C */	addi r3, r1, 0xc
/* 8053E11C  4B E0 90 1C */	b PSVECSquareMag
/* 8053E120  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8053E124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053E128  40 81 00 58 */	ble lbl_8053E180
/* 8053E12C  FC 00 08 34 */	frsqrte f0, f1
/* 8053E130  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 8053E134  FC 44 00 32 */	fmul f2, f4, f0
/* 8053E138  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 8053E13C  FC 00 00 32 */	fmul f0, f0, f0
/* 8053E140  FC 01 00 32 */	fmul f0, f1, f0
/* 8053E144  FC 03 00 28 */	fsub f0, f3, f0
/* 8053E148  FC 02 00 32 */	fmul f0, f2, f0
/* 8053E14C  FC 44 00 32 */	fmul f2, f4, f0
/* 8053E150  FC 00 00 32 */	fmul f0, f0, f0
/* 8053E154  FC 01 00 32 */	fmul f0, f1, f0
/* 8053E158  FC 03 00 28 */	fsub f0, f3, f0
/* 8053E15C  FC 02 00 32 */	fmul f0, f2, f0
/* 8053E160  FC 44 00 32 */	fmul f2, f4, f0
/* 8053E164  FC 00 00 32 */	fmul f0, f0, f0
/* 8053E168  FC 01 00 32 */	fmul f0, f1, f0
/* 8053E16C  FC 03 00 28 */	fsub f0, f3, f0
/* 8053E170  FC 02 00 32 */	fmul f0, f2, f0
/* 8053E174  FC 41 00 32 */	fmul f2, f1, f0
/* 8053E178  FC 40 10 18 */	frsp f2, f2
/* 8053E17C  48 00 00 90 */	b lbl_8053E20C
lbl_8053E180:
/* 8053E180  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 8053E184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053E188  40 80 00 10 */	bge lbl_8053E198
/* 8053E18C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8053E190  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8053E194  48 00 00 78 */	b lbl_8053E20C
lbl_8053E198:
/* 8053E198  D0 21 00 08 */	stfs f1, 8(r1)
/* 8053E19C  80 81 00 08 */	lwz r4, 8(r1)
/* 8053E1A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8053E1A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8053E1A8  7C 03 00 00 */	cmpw r3, r0
/* 8053E1AC  41 82 00 14 */	beq lbl_8053E1C0
/* 8053E1B0  40 80 00 40 */	bge lbl_8053E1F0
/* 8053E1B4  2C 03 00 00 */	cmpwi r3, 0
/* 8053E1B8  41 82 00 20 */	beq lbl_8053E1D8
/* 8053E1BC  48 00 00 34 */	b lbl_8053E1F0
lbl_8053E1C0:
/* 8053E1C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8053E1C4  41 82 00 0C */	beq lbl_8053E1D0
/* 8053E1C8  38 00 00 01 */	li r0, 1
/* 8053E1CC  48 00 00 28 */	b lbl_8053E1F4
lbl_8053E1D0:
/* 8053E1D0  38 00 00 02 */	li r0, 2
/* 8053E1D4  48 00 00 20 */	b lbl_8053E1F4
lbl_8053E1D8:
/* 8053E1D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8053E1DC  41 82 00 0C */	beq lbl_8053E1E8
/* 8053E1E0  38 00 00 05 */	li r0, 5
/* 8053E1E4  48 00 00 10 */	b lbl_8053E1F4
lbl_8053E1E8:
/* 8053E1E8  38 00 00 03 */	li r0, 3
/* 8053E1EC  48 00 00 08 */	b lbl_8053E1F4
lbl_8053E1F0:
/* 8053E1F0  38 00 00 04 */	li r0, 4
lbl_8053E1F4:
/* 8053E1F4  2C 00 00 01 */	cmpwi r0, 1
/* 8053E1F8  40 82 00 10 */	bne lbl_8053E208
/* 8053E1FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8053E200  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8053E204  48 00 00 08 */	b lbl_8053E20C
lbl_8053E208:
/* 8053E208  FC 40 08 90 */	fmr f2, f1
lbl_8053E20C:
/* 8053E20C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8053E210  4B D2 94 64 */	b cM_atan2s__Fff
/* 8053E214  7C 03 00 D0 */	neg r0, r3
/* 8053E218  7C 05 07 34 */	extsh r5, r0
/* 8053E21C  7C A5 EA 14 */	add r5, r5, r29
lbl_8053E220:
/* 8053E220  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 8053E224  7C A5 02 14 */	add r5, r5, r0
/* 8053E228  C0 7E 00 FC */	lfs f3, 0xfc(r30)
/* 8053E22C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 8053E230  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 8053E234  C8 5E 01 48 */	lfd f2, 0x148(r30)
/* 8053E238  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053E23C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053E240  3C 60 43 30 */	lis r3, 0x4330
/* 8053E244  90 61 00 30 */	stw r3, 0x30(r1)
/* 8053E248  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8053E24C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8053E250  EC 03 20 28 */	fsubs f0, f3, f4
/* 8053E254  EC 21 00 32 */	fmuls f1, f1, f0
/* 8053E258  7C A0 07 34 */	extsh r0, r5
/* 8053E25C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053E260  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8053E264  90 61 00 38 */	stw r3, 0x38(r1)
/* 8053E268  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8053E26C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8053E270  EC 00 01 32 */	fmuls f0, f0, f4
/* 8053E274  EC 01 00 2A */	fadds f0, f1, f0
/* 8053E278  FC 00 00 1E */	fctiwz f0, f0
/* 8053E27C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8053E280  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053E284  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 8053E288  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8053E28C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8053E290  39 61 00 60 */	addi r11, r1, 0x60
/* 8053E294  4B E2 3F 94 */	b _restgpr_29
/* 8053E298  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8053E29C  7C 08 03 A6 */	mtlr r0
/* 8053E2A0  38 21 00 70 */	addi r1, r1, 0x70
/* 8053E2A4  4E 80 00 20 */	blr 
