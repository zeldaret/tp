lbl_80A633BC:
/* 80A633BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A633C0  7C 08 02 A6 */	mflr r0
/* 80A633C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A633C8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A633CC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A633D0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A633D4  4B 8F EE 08 */	b _savegpr_29
/* 80A633D8  7C 7F 1B 78 */	mr r31, r3
/* 80A633DC  7C 80 23 78 */	mr r0, r4
/* 80A633E0  FF E0 08 90 */	fmr f31, f1
/* 80A633E4  7C BD 2B 78 */	mr r29, r5
/* 80A633E8  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A633EC  3B C3 38 AC */	addi r30, r3, m__19daNpc_Kyury_Param_c@l
/* 80A633F0  38 A0 00 00 */	li r5, 0
/* 80A633F4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A633F8  28 04 00 00 */	cmplwi r4, 0
/* 80A633FC  41 82 01 40 */	beq lbl_80A6353C
/* 80A63400  38 61 00 18 */	addi r3, r1, 0x18
/* 80A63404  7C 05 03 78 */	mr r5, r0
/* 80A63408  4B 80 37 2C */	b __mi__4cXyzCFRC3Vec
/* 80A6340C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A63410  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A63414  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A63418  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A6341C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A63420  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A63424  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A63428  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A6342C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A63430  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A63434  38 61 00 0C */	addi r3, r1, 0xc
/* 80A63438  4B 8E 3D 00 */	b PSVECSquareMag
/* 80A6343C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A63440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A63444  40 81 00 58 */	ble lbl_80A6349C
/* 80A63448  FC 00 08 34 */	frsqrte f0, f1
/* 80A6344C  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 80A63450  FC 44 00 32 */	fmul f2, f4, f0
/* 80A63454  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 80A63458  FC 00 00 32 */	fmul f0, f0, f0
/* 80A6345C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A63460  FC 03 00 28 */	fsub f0, f3, f0
/* 80A63464  FC 02 00 32 */	fmul f0, f2, f0
/* 80A63468  FC 44 00 32 */	fmul f2, f4, f0
/* 80A6346C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A63470  FC 01 00 32 */	fmul f0, f1, f0
/* 80A63474  FC 03 00 28 */	fsub f0, f3, f0
/* 80A63478  FC 02 00 32 */	fmul f0, f2, f0
/* 80A6347C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A63480  FC 00 00 32 */	fmul f0, f0, f0
/* 80A63484  FC 01 00 32 */	fmul f0, f1, f0
/* 80A63488  FC 03 00 28 */	fsub f0, f3, f0
/* 80A6348C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A63490  FC 41 00 32 */	fmul f2, f1, f0
/* 80A63494  FC 40 10 18 */	frsp f2, f2
/* 80A63498  48 00 00 90 */	b lbl_80A63528
lbl_80A6349C:
/* 80A6349C  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 80A634A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A634A4  40 80 00 10 */	bge lbl_80A634B4
/* 80A634A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A634AC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A634B0  48 00 00 78 */	b lbl_80A63528
lbl_80A634B4:
/* 80A634B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A634B8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A634BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A634C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A634C4  7C 03 00 00 */	cmpw r3, r0
/* 80A634C8  41 82 00 14 */	beq lbl_80A634DC
/* 80A634CC  40 80 00 40 */	bge lbl_80A6350C
/* 80A634D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A634D4  41 82 00 20 */	beq lbl_80A634F4
/* 80A634D8  48 00 00 34 */	b lbl_80A6350C
lbl_80A634DC:
/* 80A634DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A634E0  41 82 00 0C */	beq lbl_80A634EC
/* 80A634E4  38 00 00 01 */	li r0, 1
/* 80A634E8  48 00 00 28 */	b lbl_80A63510
lbl_80A634EC:
/* 80A634EC  38 00 00 02 */	li r0, 2
/* 80A634F0  48 00 00 20 */	b lbl_80A63510
lbl_80A634F4:
/* 80A634F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A634F8  41 82 00 0C */	beq lbl_80A63504
/* 80A634FC  38 00 00 05 */	li r0, 5
/* 80A63500  48 00 00 10 */	b lbl_80A63510
lbl_80A63504:
/* 80A63504  38 00 00 03 */	li r0, 3
/* 80A63508  48 00 00 08 */	b lbl_80A63510
lbl_80A6350C:
/* 80A6350C  38 00 00 04 */	li r0, 4
lbl_80A63510:
/* 80A63510  2C 00 00 01 */	cmpwi r0, 1
/* 80A63514  40 82 00 10 */	bne lbl_80A63524
/* 80A63518  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A6351C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A63520  48 00 00 08 */	b lbl_80A63528
lbl_80A63524:
/* 80A63524  FC 40 08 90 */	fmr f2, f1
lbl_80A63528:
/* 80A63528  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A6352C  4B 80 41 48 */	b cM_atan2s__Fff
/* 80A63530  7C 03 00 D0 */	neg r0, r3
/* 80A63534  7C 05 07 34 */	extsh r5, r0
/* 80A63538  7C A5 EA 14 */	add r5, r5, r29
lbl_80A6353C:
/* 80A6353C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A63540  7C A5 02 14 */	add r5, r5, r0
/* 80A63544  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80A63548  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A6354C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A63550  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 80A63554  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A63558  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6355C  3C 60 43 30 */	lis r3, 0x4330
/* 80A63560  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A63564  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A63568  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A6356C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A63570  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A63574  7C A0 07 34 */	extsh r0, r5
/* 80A63578  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6357C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A63580  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A63584  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A63588  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A6358C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A63590  EC 01 00 2A */	fadds f0, f1, f0
/* 80A63594  FC 00 00 1E */	fctiwz f0, f0
/* 80A63598  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A6359C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A635A0  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A635A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A635A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A635AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A635B0  4B 8F EC 78 */	b _restgpr_29
/* 80A635B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A635B8  7C 08 03 A6 */	mtlr r0
/* 80A635BC  38 21 00 70 */	addi r1, r1, 0x70
/* 80A635C0  4E 80 00 20 */	blr 
