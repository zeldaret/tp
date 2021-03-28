lbl_80A964BC:
/* 80A964BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A964C0  7C 08 02 A6 */	mflr r0
/* 80A964C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A964C8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A964CC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A964D0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A964D4  4B 8C BD 08 */	b _savegpr_29
/* 80A964D8  7C 7F 1B 78 */	mr r31, r3
/* 80A964DC  7C 80 23 78 */	mr r0, r4
/* 80A964E0  FF E0 08 90 */	fmr f31, f1
/* 80A964E4  7C BD 2B 78 */	mr r29, r5
/* 80A964E8  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha
/* 80A964EC  3B C3 6A 6C */	addi r30, r3, m__24daNpc_Pachi_Besu_Param_c@l
/* 80A964F0  38 A0 00 00 */	li r5, 0
/* 80A964F4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A964F8  28 04 00 00 */	cmplwi r4, 0
/* 80A964FC  41 82 01 40 */	beq lbl_80A9663C
/* 80A96500  38 61 00 18 */	addi r3, r1, 0x18
/* 80A96504  7C 05 03 78 */	mr r5, r0
/* 80A96508  4B 7D 06 2C */	b __mi__4cXyzCFRC3Vec
/* 80A9650C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A96510  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A96514  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A96518  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A9651C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A96520  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A96524  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A96528  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A9652C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A96530  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A96534  38 61 00 0C */	addi r3, r1, 0xc
/* 80A96538  4B 8B 0C 00 */	b PSVECSquareMag
/* 80A9653C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A96540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A96544  40 81 00 58 */	ble lbl_80A9659C
/* 80A96548  FC 00 08 34 */	frsqrte f0, f1
/* 80A9654C  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 80A96550  FC 44 00 32 */	fmul f2, f4, f0
/* 80A96554  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80A96558  FC 00 00 32 */	fmul f0, f0, f0
/* 80A9655C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A96560  FC 03 00 28 */	fsub f0, f3, f0
/* 80A96564  FC 02 00 32 */	fmul f0, f2, f0
/* 80A96568  FC 44 00 32 */	fmul f2, f4, f0
/* 80A9656C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A96570  FC 01 00 32 */	fmul f0, f1, f0
/* 80A96574  FC 03 00 28 */	fsub f0, f3, f0
/* 80A96578  FC 02 00 32 */	fmul f0, f2, f0
/* 80A9657C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A96580  FC 00 00 32 */	fmul f0, f0, f0
/* 80A96584  FC 01 00 32 */	fmul f0, f1, f0
/* 80A96588  FC 03 00 28 */	fsub f0, f3, f0
/* 80A9658C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A96590  FC 41 00 32 */	fmul f2, f1, f0
/* 80A96594  FC 40 10 18 */	frsp f2, f2
/* 80A96598  48 00 00 90 */	b lbl_80A96628
lbl_80A9659C:
/* 80A9659C  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 80A965A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A965A4  40 80 00 10 */	bge lbl_80A965B4
/* 80A965A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A965AC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A965B0  48 00 00 78 */	b lbl_80A96628
lbl_80A965B4:
/* 80A965B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A965B8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A965BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A965C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A965C4  7C 03 00 00 */	cmpw r3, r0
/* 80A965C8  41 82 00 14 */	beq lbl_80A965DC
/* 80A965CC  40 80 00 40 */	bge lbl_80A9660C
/* 80A965D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A965D4  41 82 00 20 */	beq lbl_80A965F4
/* 80A965D8  48 00 00 34 */	b lbl_80A9660C
lbl_80A965DC:
/* 80A965DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A965E0  41 82 00 0C */	beq lbl_80A965EC
/* 80A965E4  38 00 00 01 */	li r0, 1
/* 80A965E8  48 00 00 28 */	b lbl_80A96610
lbl_80A965EC:
/* 80A965EC  38 00 00 02 */	li r0, 2
/* 80A965F0  48 00 00 20 */	b lbl_80A96610
lbl_80A965F4:
/* 80A965F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A965F8  41 82 00 0C */	beq lbl_80A96604
/* 80A965FC  38 00 00 05 */	li r0, 5
/* 80A96600  48 00 00 10 */	b lbl_80A96610
lbl_80A96604:
/* 80A96604  38 00 00 03 */	li r0, 3
/* 80A96608  48 00 00 08 */	b lbl_80A96610
lbl_80A9660C:
/* 80A9660C  38 00 00 04 */	li r0, 4
lbl_80A96610:
/* 80A96610  2C 00 00 01 */	cmpwi r0, 1
/* 80A96614  40 82 00 10 */	bne lbl_80A96624
/* 80A96618  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A9661C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A96620  48 00 00 08 */	b lbl_80A96628
lbl_80A96624:
/* 80A96624  FC 40 08 90 */	fmr f2, f1
lbl_80A96628:
/* 80A96628  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A9662C  4B 7D 10 48 */	b cM_atan2s__Fff
/* 80A96630  7C 03 00 D0 */	neg r0, r3
/* 80A96634  7C 05 07 34 */	extsh r5, r0
/* 80A96638  7C A5 EA 14 */	add r5, r5, r29
lbl_80A9663C:
/* 80A9663C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A96640  7C A5 02 14 */	add r5, r5, r0
/* 80A96644  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 80A96648  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A9664C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A96650  C8 5E 00 C8 */	lfd f2, 0xc8(r30)
/* 80A96654  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A96658  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9665C  3C 60 43 30 */	lis r3, 0x4330
/* 80A96660  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A96664  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A96668  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A9666C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A96670  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A96674  7C A0 07 34 */	extsh r0, r5
/* 80A96678  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A9667C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A96680  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A96684  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A96688  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A9668C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A96690  EC 01 00 2A */	fadds f0, f1, f0
/* 80A96694  FC 00 00 1E */	fctiwz f0, f0
/* 80A96698  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A9669C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A966A0  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A966A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A966A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A966AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A966B0  4B 8C BB 78 */	b _restgpr_29
/* 80A966B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A966B8  7C 08 03 A6 */	mtlr r0
/* 80A966BC  38 21 00 70 */	addi r1, r1, 0x70
/* 80A966C0  4E 80 00 20 */	blr 
