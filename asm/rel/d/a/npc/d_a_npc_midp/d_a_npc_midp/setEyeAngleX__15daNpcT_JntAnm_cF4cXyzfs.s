lbl_80A7348C:
/* 80A7348C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A73490  7C 08 02 A6 */	mflr r0
/* 80A73494  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A73498  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A7349C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A734A0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A734A4  4B 8E ED 38 */	b _savegpr_29
/* 80A734A8  7C 7F 1B 78 */	mr r31, r3
/* 80A734AC  7C 80 23 78 */	mr r0, r4
/* 80A734B0  FF E0 08 90 */	fmr f31, f1
/* 80A734B4  7C BD 2B 78 */	mr r29, r5
/* 80A734B8  3C 60 80 A7 */	lis r3, m__18daNpc_midP_Param_c@ha
/* 80A734BC  3B C3 39 C0 */	addi r30, r3, m__18daNpc_midP_Param_c@l
/* 80A734C0  38 A0 00 00 */	li r5, 0
/* 80A734C4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A734C8  28 04 00 00 */	cmplwi r4, 0
/* 80A734CC  41 82 01 40 */	beq lbl_80A7360C
/* 80A734D0  38 61 00 18 */	addi r3, r1, 0x18
/* 80A734D4  7C 05 03 78 */	mr r5, r0
/* 80A734D8  4B 7F 36 5C */	b __mi__4cXyzCFRC3Vec
/* 80A734DC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A734E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A734E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A734E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A734EC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A734F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A734F4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A734F8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A734FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A73500  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A73504  38 61 00 0C */	addi r3, r1, 0xc
/* 80A73508  4B 8D 3C 30 */	b PSVECSquareMag
/* 80A7350C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A73510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A73514  40 81 00 58 */	ble lbl_80A7356C
/* 80A73518  FC 00 08 34 */	frsqrte f0, f1
/* 80A7351C  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80A73520  FC 44 00 32 */	fmul f2, f4, f0
/* 80A73524  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80A73528  FC 00 00 32 */	fmul f0, f0, f0
/* 80A7352C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A73530  FC 03 00 28 */	fsub f0, f3, f0
/* 80A73534  FC 02 00 32 */	fmul f0, f2, f0
/* 80A73538  FC 44 00 32 */	fmul f2, f4, f0
/* 80A7353C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A73540  FC 01 00 32 */	fmul f0, f1, f0
/* 80A73544  FC 03 00 28 */	fsub f0, f3, f0
/* 80A73548  FC 02 00 32 */	fmul f0, f2, f0
/* 80A7354C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A73550  FC 00 00 32 */	fmul f0, f0, f0
/* 80A73554  FC 01 00 32 */	fmul f0, f1, f0
/* 80A73558  FC 03 00 28 */	fsub f0, f3, f0
/* 80A7355C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A73560  FC 41 00 32 */	fmul f2, f1, f0
/* 80A73564  FC 40 10 18 */	frsp f2, f2
/* 80A73568  48 00 00 90 */	b lbl_80A735F8
lbl_80A7356C:
/* 80A7356C  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80A73570  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A73574  40 80 00 10 */	bge lbl_80A73584
/* 80A73578  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A7357C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A73580  48 00 00 78 */	b lbl_80A735F8
lbl_80A73584:
/* 80A73584  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A73588  80 81 00 08 */	lwz r4, 8(r1)
/* 80A7358C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A73590  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A73594  7C 03 00 00 */	cmpw r3, r0
/* 80A73598  41 82 00 14 */	beq lbl_80A735AC
/* 80A7359C  40 80 00 40 */	bge lbl_80A735DC
/* 80A735A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A735A4  41 82 00 20 */	beq lbl_80A735C4
/* 80A735A8  48 00 00 34 */	b lbl_80A735DC
lbl_80A735AC:
/* 80A735AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A735B0  41 82 00 0C */	beq lbl_80A735BC
/* 80A735B4  38 00 00 01 */	li r0, 1
/* 80A735B8  48 00 00 28 */	b lbl_80A735E0
lbl_80A735BC:
/* 80A735BC  38 00 00 02 */	li r0, 2
/* 80A735C0  48 00 00 20 */	b lbl_80A735E0
lbl_80A735C4:
/* 80A735C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A735C8  41 82 00 0C */	beq lbl_80A735D4
/* 80A735CC  38 00 00 05 */	li r0, 5
/* 80A735D0  48 00 00 10 */	b lbl_80A735E0
lbl_80A735D4:
/* 80A735D4  38 00 00 03 */	li r0, 3
/* 80A735D8  48 00 00 08 */	b lbl_80A735E0
lbl_80A735DC:
/* 80A735DC  38 00 00 04 */	li r0, 4
lbl_80A735E0:
/* 80A735E0  2C 00 00 01 */	cmpwi r0, 1
/* 80A735E4  40 82 00 10 */	bne lbl_80A735F4
/* 80A735E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A735EC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A735F0  48 00 00 08 */	b lbl_80A735F8
lbl_80A735F4:
/* 80A735F4  FC 40 08 90 */	fmr f2, f1
lbl_80A735F8:
/* 80A735F8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A735FC  4B 7F 40 78 */	b cM_atan2s__Fff
/* 80A73600  7C 03 00 D0 */	neg r0, r3
/* 80A73604  7C 05 07 34 */	extsh r5, r0
/* 80A73608  7C A5 EA 14 */	add r5, r5, r29
lbl_80A7360C:
/* 80A7360C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A73610  7C A5 02 14 */	add r5, r5, r0
/* 80A73614  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 80A73618  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A7361C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A73620  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80A73624  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A73628  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7362C  3C 60 43 30 */	lis r3, 0x4330
/* 80A73630  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A73634  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A73638  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A7363C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A73640  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A73644  7C A0 07 34 */	extsh r0, r5
/* 80A73648  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7364C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A73650  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A73654  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A73658  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A7365C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A73660  EC 01 00 2A */	fadds f0, f1, f0
/* 80A73664  FC 00 00 1E */	fctiwz f0, f0
/* 80A73668  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A7366C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A73670  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A73674  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A73678  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A7367C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A73680  4B 8E EB A8 */	b _restgpr_29
/* 80A73684  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A73688  7C 08 03 A6 */	mtlr r0
/* 80A7368C  38 21 00 70 */	addi r1, r1, 0x70
/* 80A73690  4E 80 00 20 */	blr 
