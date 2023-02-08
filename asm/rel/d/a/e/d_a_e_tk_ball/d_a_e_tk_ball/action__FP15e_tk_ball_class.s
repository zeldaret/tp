lbl_807BCB94:
/* 807BCB94  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807BCB98  7C 08 02 A6 */	mflr r0
/* 807BCB9C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807BCBA0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807BCBA4  4B BA 56 29 */	bl _savegpr_25
/* 807BCBA8  7C 7D 1B 78 */	mr r29, r3
/* 807BCBAC  3C 80 80 7C */	lis r4, lit_3710@ha /* 0x807BD56C@ha */
/* 807BCBB0  3B E4 D5 6C */	addi r31, r4, lit_3710@l /* 0x807BD56C@l */
/* 807BCBB4  7F BE EB 78 */	mr r30, r29
/* 807BCBB8  3B 20 00 01 */	li r25, 1
/* 807BCBBC  A8 03 05 DE */	lha r0, 0x5de(r3)
/* 807BCBC0  2C 00 00 01 */	cmpwi r0, 1
/* 807BCBC4  41 82 00 28 */	beq lbl_807BCBEC
/* 807BCBC8  40 80 00 10 */	bge lbl_807BCBD8
/* 807BCBCC  2C 00 00 00 */	cmpwi r0, 0
/* 807BCBD0  40 80 00 14 */	bge lbl_807BCBE4
/* 807BCBD4  48 00 00 28 */	b lbl_807BCBFC
lbl_807BCBD8:
/* 807BCBD8  2C 00 00 03 */	cmpwi r0, 3
/* 807BCBDC  40 80 00 20 */	bge lbl_807BCBFC
/* 807BCBE0  48 00 00 14 */	b lbl_807BCBF4
lbl_807BCBE4:
/* 807BCBE4  4B FF F8 15 */	bl e_tk_ball_move__FP15e_tk_ball_class
/* 807BCBE8  48 00 00 14 */	b lbl_807BCBFC
lbl_807BCBEC:
/* 807BCBEC  4B FF FE 2D */	bl e_tk_ball_return__FP15e_tk_ball_class
/* 807BCBF0  48 00 00 0C */	b lbl_807BCBFC
lbl_807BCBF4:
/* 807BCBF4  4B FF FF 01 */	bl e_tk_ball_drop__FP15e_tk_ball_class
/* 807BCBF8  3B 20 00 00 */	li r25, 0
lbl_807BCBFC:
/* 807BCBFC  7F 20 07 75 */	extsb. r0, r25
/* 807BCC00  41 82 01 84 */	beq lbl_807BCD84
/* 807BCC04  38 61 00 44 */	addi r3, r1, 0x44
/* 807BCC08  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807BCC0C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807BCC10  4B AA 9F 25 */	bl __mi__4cXyzCFRC3Vec
/* 807BCC14  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807BCC18  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807BCC1C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807BCC20  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807BCC24  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807BCC28  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807BCC2C  38 61 00 68 */	addi r3, r1, 0x68
/* 807BCC30  4B B8 A5 09 */	bl PSVECSquareMag
/* 807BCC34  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807BCC38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BCC3C  40 81 00 58 */	ble lbl_807BCC94
/* 807BCC40  FC 00 08 34 */	frsqrte f0, f1
/* 807BCC44  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 807BCC48  FC 44 00 32 */	fmul f2, f4, f0
/* 807BCC4C  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 807BCC50  FC 00 00 32 */	fmul f0, f0, f0
/* 807BCC54  FC 01 00 32 */	fmul f0, f1, f0
/* 807BCC58  FC 03 00 28 */	fsub f0, f3, f0
/* 807BCC5C  FC 02 00 32 */	fmul f0, f2, f0
/* 807BCC60  FC 44 00 32 */	fmul f2, f4, f0
/* 807BCC64  FC 00 00 32 */	fmul f0, f0, f0
/* 807BCC68  FC 01 00 32 */	fmul f0, f1, f0
/* 807BCC6C  FC 03 00 28 */	fsub f0, f3, f0
/* 807BCC70  FC 02 00 32 */	fmul f0, f2, f0
/* 807BCC74  FC 44 00 32 */	fmul f2, f4, f0
/* 807BCC78  FC 00 00 32 */	fmul f0, f0, f0
/* 807BCC7C  FC 01 00 32 */	fmul f0, f1, f0
/* 807BCC80  FC 03 00 28 */	fsub f0, f3, f0
/* 807BCC84  FC 02 00 32 */	fmul f0, f2, f0
/* 807BCC88  FC 21 00 32 */	fmul f1, f1, f0
/* 807BCC8C  FC 20 08 18 */	frsp f1, f1
/* 807BCC90  48 00 00 88 */	b lbl_807BCD18
lbl_807BCC94:
/* 807BCC94  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 807BCC98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BCC9C  40 80 00 10 */	bge lbl_807BCCAC
/* 807BCCA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BCCA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BCCA8  48 00 00 70 */	b lbl_807BCD18
lbl_807BCCAC:
/* 807BCCAC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807BCCB0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807BCCB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BCCB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BCCBC  7C 03 00 00 */	cmpw r3, r0
/* 807BCCC0  41 82 00 14 */	beq lbl_807BCCD4
/* 807BCCC4  40 80 00 40 */	bge lbl_807BCD04
/* 807BCCC8  2C 03 00 00 */	cmpwi r3, 0
/* 807BCCCC  41 82 00 20 */	beq lbl_807BCCEC
/* 807BCCD0  48 00 00 34 */	b lbl_807BCD04
lbl_807BCCD4:
/* 807BCCD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BCCD8  41 82 00 0C */	beq lbl_807BCCE4
/* 807BCCDC  38 00 00 01 */	li r0, 1
/* 807BCCE0  48 00 00 28 */	b lbl_807BCD08
lbl_807BCCE4:
/* 807BCCE4  38 00 00 02 */	li r0, 2
/* 807BCCE8  48 00 00 20 */	b lbl_807BCD08
lbl_807BCCEC:
/* 807BCCEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BCCF0  41 82 00 0C */	beq lbl_807BCCFC
/* 807BCCF4  38 00 00 05 */	li r0, 5
/* 807BCCF8  48 00 00 10 */	b lbl_807BCD08
lbl_807BCCFC:
/* 807BCCFC  38 00 00 03 */	li r0, 3
/* 807BCD00  48 00 00 08 */	b lbl_807BCD08
lbl_807BCD04:
/* 807BCD04  38 00 00 04 */	li r0, 4
lbl_807BCD08:
/* 807BCD08  2C 00 00 01 */	cmpwi r0, 1
/* 807BCD0C  40 82 00 0C */	bne lbl_807BCD18
/* 807BCD10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BCD14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BCD18:
/* 807BCD18  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807BCD1C  C0 7D 05 F4 */	lfs f3, 0x5f4(r29)
/* 807BCD20  EC 80 00 F2 */	fmuls f4, f0, f3
/* 807BCD24  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807BCD28  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 807BCD2C  40 81 00 08 */	ble lbl_807BCD34
/* 807BCD30  FC 80 00 90 */	fmr f4, f0
lbl_807BCD34:
/* 807BCD34  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 807BCD38  EC 01 18 24 */	fdivs f0, f1, f3
/* 807BCD3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807BCD40  FC 00 00 1E */	fctiwz f0, f0
/* 807BCD44  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 807BCD48  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 807BCD4C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807BCD50  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807BCD54  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807BCD58  7C 03 04 2E */	lfsx f0, r3, r0
/* 807BCD5C  EC 04 00 32 */	fmuls f0, f4, f0
/* 807BCD60  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 807BCD64  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807BCD68  C0 1D 05 F4 */	lfs f0, 0x5f4(r29)
/* 807BCD6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807BCD70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BCD74  40 81 00 18 */	ble lbl_807BCD8C
/* 807BCD78  7F C3 F3 78 */	mr r3, r30
/* 807BCD7C  4B 85 CF 01 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807BCD80  48 00 00 0C */	b lbl_807BCD8C
lbl_807BCD84:
/* 807BCD84  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807BCD88  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
lbl_807BCD8C:
/* 807BCD8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807BCD90  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807BCD94  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807BCD98  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 807BCD9C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807BCDA0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807BCDA4  C0 1D 05 F8 */	lfs f0, 0x5f8(r29)
/* 807BCDA8  EC 01 00 2A */	fadds f0, f1, f0
/* 807BCDAC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807BCDB0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807BCDB4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807BCDB8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807BCDBC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807BCDC0  3B C0 00 00 */	li r30, 0
/* 807BCDC4  3B 80 00 00 */	li r28, 0
/* 807BCDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BCDCC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BCDD0  3C 60 80 7C */	lis r3, e_id@ha /* 0x807BD5D0@ha */
/* 807BCDD4  3B 43 D5 D0 */	addi r26, r3, e_id@l /* 0x807BD5D0@l */
lbl_807BCDD8:
/* 807BCDD8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807BCDDC  38 00 00 FF */	li r0, 0xff
/* 807BCDE0  90 01 00 08 */	stw r0, 8(r1)
/* 807BCDE4  38 80 00 00 */	li r4, 0
/* 807BCDE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BCDEC  38 00 FF FF */	li r0, -1
/* 807BCDF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BCDF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BCDF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BCDFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BCE00  3B 7C 08 A8 */	addi r27, r28, 0x8a8
/* 807BCE04  7C 9D D8 2E */	lwzx r4, r29, r27
/* 807BCE08  38 A0 00 00 */	li r5, 0
/* 807BCE0C  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 807BCE10  54 00 08 3C */	slwi r0, r0, 1
/* 807BCE14  7C 1E 02 14 */	add r0, r30, r0
/* 807BCE18  54 00 08 3C */	slwi r0, r0, 1
/* 807BCE1C  7C DA 02 2E */	lhzx r6, r26, r0
/* 807BCE20  38 E1 00 5C */	addi r7, r1, 0x5c
/* 807BCE24  39 00 00 00 */	li r8, 0
/* 807BCE28  39 20 00 00 */	li r9, 0
/* 807BCE2C  39 40 00 00 */	li r10, 0
/* 807BCE30  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 807BCE34  4B 89 06 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BCE38  7C 7D D9 2E */	stwx r3, r29, r27
/* 807BCE3C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807BCE40  38 63 02 10 */	addi r3, r3, 0x210
/* 807BCE44  7C 9D D8 2E */	lwzx r4, r29, r27
/* 807BCE48  4B 88 EA D1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807BCE4C  7C 7B 1B 79 */	or. r27, r3, r3
/* 807BCE50  41 82 00 A4 */	beq lbl_807BCEF4
/* 807BCE54  E0 01 00 50 */	psq_l f0, 80(r1), 0, 0 /* qr0 */
/* 807BCE58  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 807BCE5C  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 807BCE60  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 807BCE64  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 807BCE68  D0 3B 00 98 */	stfs f1, 0x98(r27)
/* 807BCE6C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807BCE70  D0 1B 00 9C */	stfs f0, 0x9c(r27)
/* 807BCE74  D0 5B 00 A0 */	stfs f2, 0xa0(r27)
/* 807BCE78  D0 3B 00 B0 */	stfs f1, 0xb0(r27)
/* 807BCE7C  D0 1B 00 B4 */	stfs f0, 0xb4(r27)
/* 807BCE80  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 807BCE84  28 00 00 01 */	cmplwi r0, 1
/* 807BCE88  40 82 00 6C */	bne lbl_807BCEF4
/* 807BCE8C  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 807BCE90  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 807BCE94  90 1B 00 F0 */	stw r0, 0xf0(r27)
/* 807BCE98  38 61 00 2C */	addi r3, r1, 0x2c
/* 807BCE9C  38 81 00 5C */	addi r4, r1, 0x5c
/* 807BCEA0  38 BD 08 BC */	addi r5, r29, 0x8bc
/* 807BCEA4  4B AA 9C 91 */	bl __mi__4cXyzCFRC3Vec
/* 807BCEA8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807BCEAC  D0 1D 08 B0 */	stfs f0, 0x8b0(r29)
/* 807BCEB0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807BCEB4  D0 1D 08 B4 */	stfs f0, 0x8b4(r29)
/* 807BCEB8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807BCEBC  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 807BCEC0  38 7D 08 B0 */	addi r3, r29, 0x8b0
/* 807BCEC4  7C 64 1B 78 */	mr r4, r3
/* 807BCEC8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807BCECC  4B B8 A2 0D */	bl PSVECScale
/* 807BCED0  38 1D 08 B0 */	addi r0, r29, 0x8b0
/* 807BCED4  90 1B 00 C0 */	stw r0, 0xc0(r27)
/* 807BCED8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807BCEDC  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 807BCEE0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807BCEE4  D0 1D 08 C0 */	stfs f0, 0x8c0(r29)
/* 807BCEE8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807BCEEC  D0 1D 08 C4 */	stfs f0, 0x8c4(r29)
/* 807BCEF0  48 00 00 14 */	b lbl_807BCF04
lbl_807BCEF4:
/* 807BCEF4  3B DE 00 01 */	addi r30, r30, 1
/* 807BCEF8  2C 1E 00 02 */	cmpwi r30, 2
/* 807BCEFC  3B 9C 00 04 */	addi r28, r28, 4
/* 807BCF00  41 80 FE D8 */	blt lbl_807BCDD8
lbl_807BCF04:
/* 807BCF04  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 807BCF08  28 00 00 01 */	cmplwi r0, 1
/* 807BCF0C  40 82 00 34 */	bne lbl_807BCF40
/* 807BCF10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070268@ha */
/* 807BCF14  38 03 02 68 */	addi r0, r3, 0x0268 /* 0x00070268@l */
/* 807BCF18  90 01 00 28 */	stw r0, 0x28(r1)
/* 807BCF1C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807BCF20  38 81 00 28 */	addi r4, r1, 0x28
/* 807BCF24  38 A0 00 00 */	li r5, 0
/* 807BCF28  38 C0 FF FF */	li r6, -1
/* 807BCF2C  81 9D 05 CC */	lwz r12, 0x5cc(r29)
/* 807BCF30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BCF34  7D 89 03 A6 */	mtctr r12
/* 807BCF38  4E 80 04 21 */	bctrl 
/* 807BCF3C  48 00 00 30 */	b lbl_807BCF6C
lbl_807BCF40:
/* 807BCF40  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007025D@ha */
/* 807BCF44  38 03 02 5D */	addi r0, r3, 0x025D /* 0x0007025D@l */
/* 807BCF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BCF4C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807BCF50  38 81 00 24 */	addi r4, r1, 0x24
/* 807BCF54  38 A0 00 00 */	li r5, 0
/* 807BCF58  38 C0 FF FF */	li r6, -1
/* 807BCF5C  81 9D 05 CC */	lwz r12, 0x5cc(r29)
/* 807BCF60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BCF64  7D 89 03 A6 */	mtctr r12
/* 807BCF68  4E 80 04 21 */	bctrl 
lbl_807BCF6C:
/* 807BCF6C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807BCF70  4B BA 52 A9 */	bl _restgpr_25
/* 807BCF74  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807BCF78  7C 08 03 A6 */	mtlr r0
/* 807BCF7C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807BCF80  4E 80 00 20 */	blr 
