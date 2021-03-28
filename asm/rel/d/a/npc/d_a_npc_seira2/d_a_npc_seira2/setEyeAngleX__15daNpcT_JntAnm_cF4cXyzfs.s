lbl_80AD43DC:
/* 80AD43DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AD43E0  7C 08 02 A6 */	mflr r0
/* 80AD43E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AD43E8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AD43EC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AD43F0  39 61 00 60 */	addi r11, r1, 0x60
/* 80AD43F4  4B 88 DD E8 */	b _savegpr_29
/* 80AD43F8  7C 7F 1B 78 */	mr r31, r3
/* 80AD43FC  7C 80 23 78 */	mr r0, r4
/* 80AD4400  FF E0 08 90 */	fmr f31, f1
/* 80AD4404  7C BD 2B 78 */	mr r29, r5
/* 80AD4408  3C 60 80 AD */	lis r3, m__20daNpc_Seira2_Param_c@ha
/* 80AD440C  3B C3 4A 60 */	addi r30, r3, m__20daNpc_Seira2_Param_c@l
/* 80AD4410  38 A0 00 00 */	li r5, 0
/* 80AD4414  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AD4418  28 04 00 00 */	cmplwi r4, 0
/* 80AD441C  41 82 01 40 */	beq lbl_80AD455C
/* 80AD4420  38 61 00 18 */	addi r3, r1, 0x18
/* 80AD4424  7C 05 03 78 */	mr r5, r0
/* 80AD4428  4B 79 27 0C */	b __mi__4cXyzCFRC3Vec
/* 80AD442C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AD4430  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AD4434  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AD4438  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AD443C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AD4440  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AD4444  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AD4448  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AD444C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AD4450  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AD4454  38 61 00 0C */	addi r3, r1, 0xc
/* 80AD4458  4B 87 2C E0 */	b PSVECSquareMag
/* 80AD445C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AD4460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AD4464  40 81 00 58 */	ble lbl_80AD44BC
/* 80AD4468  FC 00 08 34 */	frsqrte f0, f1
/* 80AD446C  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 80AD4470  FC 44 00 32 */	fmul f2, f4, f0
/* 80AD4474  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 80AD4478  FC 00 00 32 */	fmul f0, f0, f0
/* 80AD447C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AD4480  FC 03 00 28 */	fsub f0, f3, f0
/* 80AD4484  FC 02 00 32 */	fmul f0, f2, f0
/* 80AD4488  FC 44 00 32 */	fmul f2, f4, f0
/* 80AD448C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AD4490  FC 01 00 32 */	fmul f0, f1, f0
/* 80AD4494  FC 03 00 28 */	fsub f0, f3, f0
/* 80AD4498  FC 02 00 32 */	fmul f0, f2, f0
/* 80AD449C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AD44A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80AD44A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80AD44A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80AD44AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80AD44B0  FC 41 00 32 */	fmul f2, f1, f0
/* 80AD44B4  FC 40 10 18 */	frsp f2, f2
/* 80AD44B8  48 00 00 90 */	b lbl_80AD4548
lbl_80AD44BC:
/* 80AD44BC  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 80AD44C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AD44C4  40 80 00 10 */	bge lbl_80AD44D4
/* 80AD44C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AD44CC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AD44D0  48 00 00 78 */	b lbl_80AD4548
lbl_80AD44D4:
/* 80AD44D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AD44D8  80 81 00 08 */	lwz r4, 8(r1)
/* 80AD44DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AD44E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AD44E4  7C 03 00 00 */	cmpw r3, r0
/* 80AD44E8  41 82 00 14 */	beq lbl_80AD44FC
/* 80AD44EC  40 80 00 40 */	bge lbl_80AD452C
/* 80AD44F0  2C 03 00 00 */	cmpwi r3, 0
/* 80AD44F4  41 82 00 20 */	beq lbl_80AD4514
/* 80AD44F8  48 00 00 34 */	b lbl_80AD452C
lbl_80AD44FC:
/* 80AD44FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AD4500  41 82 00 0C */	beq lbl_80AD450C
/* 80AD4504  38 00 00 01 */	li r0, 1
/* 80AD4508  48 00 00 28 */	b lbl_80AD4530
lbl_80AD450C:
/* 80AD450C  38 00 00 02 */	li r0, 2
/* 80AD4510  48 00 00 20 */	b lbl_80AD4530
lbl_80AD4514:
/* 80AD4514  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AD4518  41 82 00 0C */	beq lbl_80AD4524
/* 80AD451C  38 00 00 05 */	li r0, 5
/* 80AD4520  48 00 00 10 */	b lbl_80AD4530
lbl_80AD4524:
/* 80AD4524  38 00 00 03 */	li r0, 3
/* 80AD4528  48 00 00 08 */	b lbl_80AD4530
lbl_80AD452C:
/* 80AD452C  38 00 00 04 */	li r0, 4
lbl_80AD4530:
/* 80AD4530  2C 00 00 01 */	cmpwi r0, 1
/* 80AD4534  40 82 00 10 */	bne lbl_80AD4544
/* 80AD4538  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AD453C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AD4540  48 00 00 08 */	b lbl_80AD4548
lbl_80AD4544:
/* 80AD4544  FC 40 08 90 */	fmr f2, f1
lbl_80AD4548:
/* 80AD4548  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AD454C  4B 79 31 28 */	b cM_atan2s__Fff
/* 80AD4550  7C 03 00 D0 */	neg r0, r3
/* 80AD4554  7C 05 07 34 */	extsh r5, r0
/* 80AD4558  7C A5 EA 14 */	add r5, r5, r29
lbl_80AD455C:
/* 80AD455C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AD4560  7C A5 02 14 */	add r5, r5, r0
/* 80AD4564  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 80AD4568  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AD456C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AD4570  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 80AD4574  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AD4578  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD457C  3C 60 43 30 */	lis r3, 0x4330
/* 80AD4580  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AD4584  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AD4588  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AD458C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AD4590  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AD4594  7C A0 07 34 */	extsh r0, r5
/* 80AD4598  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AD459C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AD45A0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AD45A4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AD45A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AD45AC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AD45B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80AD45B4  FC 00 00 1E */	fctiwz f0, f0
/* 80AD45B8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AD45BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AD45C0  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AD45C4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AD45C8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AD45CC  39 61 00 60 */	addi r11, r1, 0x60
/* 80AD45D0  4B 88 DC 58 */	b _restgpr_29
/* 80AD45D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AD45D8  7C 08 03 A6 */	mtlr r0
/* 80AD45DC  38 21 00 70 */	addi r1, r1, 0x70
/* 80AD45E0  4E 80 00 20 */	blr 
