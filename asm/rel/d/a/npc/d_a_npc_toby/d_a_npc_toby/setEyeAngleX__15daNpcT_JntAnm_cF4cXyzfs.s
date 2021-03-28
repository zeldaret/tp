lbl_80B24474:
/* 80B24474  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B24478  7C 08 02 A6 */	mflr r0
/* 80B2447C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B24480  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B24484  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B24488  39 61 00 60 */	addi r11, r1, 0x60
/* 80B2448C  4B 83 DD 50 */	b _savegpr_29
/* 80B24490  7C 7F 1B 78 */	mr r31, r3
/* 80B24494  7C 80 23 78 */	mr r0, r4
/* 80B24498  FF E0 08 90 */	fmr f31, f1
/* 80B2449C  7C BD 2B 78 */	mr r29, r5
/* 80B244A0  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha
/* 80B244A4  3B C3 49 E4 */	addi r30, r3, m__18daNpc_Toby_Param_c@l
/* 80B244A8  38 A0 00 00 */	li r5, 0
/* 80B244AC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B244B0  28 04 00 00 */	cmplwi r4, 0
/* 80B244B4  41 82 01 40 */	beq lbl_80B245F4
/* 80B244B8  38 61 00 18 */	addi r3, r1, 0x18
/* 80B244BC  7C 05 03 78 */	mr r5, r0
/* 80B244C0  4B 74 26 74 */	b __mi__4cXyzCFRC3Vec
/* 80B244C4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B244C8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B244CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B244D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B244D4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B244D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B244DC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B244E0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B244E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B244E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B244EC  38 61 00 0C */	addi r3, r1, 0xc
/* 80B244F0  4B 82 2C 48 */	b PSVECSquareMag
/* 80B244F4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B244F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B244FC  40 81 00 58 */	ble lbl_80B24554
/* 80B24500  FC 00 08 34 */	frsqrte f0, f1
/* 80B24504  C8 9E 01 18 */	lfd f4, 0x118(r30)
/* 80B24508  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2450C  C8 7E 01 20 */	lfd f3, 0x120(r30)
/* 80B24510  FC 00 00 32 */	fmul f0, f0, f0
/* 80B24514  FC 01 00 32 */	fmul f0, f1, f0
/* 80B24518  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2451C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B24520  FC 44 00 32 */	fmul f2, f4, f0
/* 80B24524  FC 00 00 32 */	fmul f0, f0, f0
/* 80B24528  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2452C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B24530  FC 02 00 32 */	fmul f0, f2, f0
/* 80B24534  FC 44 00 32 */	fmul f2, f4, f0
/* 80B24538  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2453C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B24540  FC 03 00 28 */	fsub f0, f3, f0
/* 80B24544  FC 02 00 32 */	fmul f0, f2, f0
/* 80B24548  FC 41 00 32 */	fmul f2, f1, f0
/* 80B2454C  FC 40 10 18 */	frsp f2, f2
/* 80B24550  48 00 00 90 */	b lbl_80B245E0
lbl_80B24554:
/* 80B24554  C8 1E 01 28 */	lfd f0, 0x128(r30)
/* 80B24558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2455C  40 80 00 10 */	bge lbl_80B2456C
/* 80B24560  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B24564  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B24568  48 00 00 78 */	b lbl_80B245E0
lbl_80B2456C:
/* 80B2456C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B24570  80 81 00 08 */	lwz r4, 8(r1)
/* 80B24574  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B24578  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B2457C  7C 03 00 00 */	cmpw r3, r0
/* 80B24580  41 82 00 14 */	beq lbl_80B24594
/* 80B24584  40 80 00 40 */	bge lbl_80B245C4
/* 80B24588  2C 03 00 00 */	cmpwi r3, 0
/* 80B2458C  41 82 00 20 */	beq lbl_80B245AC
/* 80B24590  48 00 00 34 */	b lbl_80B245C4
lbl_80B24594:
/* 80B24594  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B24598  41 82 00 0C */	beq lbl_80B245A4
/* 80B2459C  38 00 00 01 */	li r0, 1
/* 80B245A0  48 00 00 28 */	b lbl_80B245C8
lbl_80B245A4:
/* 80B245A4  38 00 00 02 */	li r0, 2
/* 80B245A8  48 00 00 20 */	b lbl_80B245C8
lbl_80B245AC:
/* 80B245AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B245B0  41 82 00 0C */	beq lbl_80B245BC
/* 80B245B4  38 00 00 05 */	li r0, 5
/* 80B245B8  48 00 00 10 */	b lbl_80B245C8
lbl_80B245BC:
/* 80B245BC  38 00 00 03 */	li r0, 3
/* 80B245C0  48 00 00 08 */	b lbl_80B245C8
lbl_80B245C4:
/* 80B245C4  38 00 00 04 */	li r0, 4
lbl_80B245C8:
/* 80B245C8  2C 00 00 01 */	cmpwi r0, 1
/* 80B245CC  40 82 00 10 */	bne lbl_80B245DC
/* 80B245D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B245D4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B245D8  48 00 00 08 */	b lbl_80B245E0
lbl_80B245DC:
/* 80B245DC  FC 40 08 90 */	fmr f2, f1
lbl_80B245E0:
/* 80B245E0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B245E4  4B 74 30 90 */	b cM_atan2s__Fff
/* 80B245E8  7C 03 00 D0 */	neg r0, r3
/* 80B245EC  7C 05 07 34 */	extsh r5, r0
/* 80B245F0  7C A5 EA 14 */	add r5, r5, r29
lbl_80B245F4:
/* 80B245F4  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B245F8  7C A5 02 14 */	add r5, r5, r0
/* 80B245FC  C0 7E 00 DC */	lfs f3, 0xdc(r30)
/* 80B24600  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B24604  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B24608  C8 5E 01 10 */	lfd f2, 0x110(r30)
/* 80B2460C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B24610  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B24614  3C 60 43 30 */	lis r3, 0x4330
/* 80B24618  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B2461C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B24620  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B24624  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B24628  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2462C  7C A0 07 34 */	extsh r0, r5
/* 80B24630  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B24634  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B24638  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B2463C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B24640  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B24644  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B24648  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2464C  FC 00 00 1E */	fctiwz f0, f0
/* 80B24650  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B24654  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B24658  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B2465C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B24660  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B24664  39 61 00 60 */	addi r11, r1, 0x60
/* 80B24668  4B 83 DB C0 */	b _restgpr_29
/* 80B2466C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B24670  7C 08 03 A6 */	mtlr r0
/* 80B24674  38 21 00 70 */	addi r1, r1, 0x70
/* 80B24678  4E 80 00 20 */	blr 
