lbl_80D09114:
/* 80D09114  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80D09118  7C 08 02 A6 */	mflr r0
/* 80D0911C  90 01 01 64 */	stw r0, 0x164(r1)
/* 80D09120  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80D09124  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80D09128  39 61 01 50 */	addi r11, r1, 0x150
/* 80D0912C  4B 65 90 B0 */	b _savegpr_29
/* 80D09130  7C 7D 1B 78 */	mr r29, r3
/* 80D09134  3C 60 80 D1 */	lis r3, lit_3775@ha
/* 80D09138  3B C3 B8 F0 */	addi r30, r3, lit_3775@l
/* 80D0913C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80D09140  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80D09144  EC 41 00 32 */	fmuls f2, f1, f0
/* 80D09148  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D0914C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D09150  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80D09154  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D09158  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80D0915C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D09160  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80D09164  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D09168  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80D0916C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80D09170  4B 36 EA F8 */	b __ct__11dBgS_LinChkFv
/* 80D09174  38 61 00 60 */	addi r3, r1, 0x60
/* 80D09178  4B 36 EA F0 */	b __ct__11dBgS_LinChkFv
/* 80D0917C  38 61 01 28 */	addi r3, r1, 0x128
/* 80D09180  4B 36 FC E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D09184  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D09188  4B 30 3B DC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0918C  38 7D 06 02 */	addi r3, r29, 0x602
/* 80D09190  4B 30 3D B4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D09194  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D09198  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0919C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80D091A0  4B 30 32 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80D091A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D091A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D091AC  38 81 00 40 */	addi r4, r1, 0x40
/* 80D091B0  7C 85 23 78 */	mr r5, r4
/* 80D091B4  4B 63 DB B8 */	b PSMTXMultVec
/* 80D091B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D091BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D091C0  38 81 00 34 */	addi r4, r1, 0x34
/* 80D091C4  7C 85 23 78 */	mr r5, r4
/* 80D091C8  4B 63 DB A4 */	b PSMTXMultVec
/* 80D091CC  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80D091D0  38 81 00 34 */	addi r4, r1, 0x34
/* 80D091D4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80D091D8  38 C0 00 00 */	li r6, 0
/* 80D091DC  4B 36 EB 88 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D091E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D091E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D091E8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D091EC  7F E3 FB 78 */	mr r3, r31
/* 80D091F0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80D091F4  4B 36 B1 C0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80D091F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D091FC  41 82 02 EC */	beq lbl_80D094E8
/* 80D09200  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80D09204  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80D09208  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha
/* 80D0920C  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D09210  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D09214  7F E3 FB 78 */	mr r3, r31
/* 80D09218  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80D0921C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80D09220  4B 36 B5 24 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D09224  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80D09228  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80D0922C  4B 55 E4 48 */	b cM_atan2s__Fff
/* 80D09230  7C 7F 1B 78 */	mr r31, r3
/* 80D09234  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D09238  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D0923C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D09240  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D09244  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D09248  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80D0924C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D09250  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80D09254  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D09258  38 61 00 1C */	addi r3, r1, 0x1c
/* 80D0925C  38 81 00 10 */	addi r4, r1, 0x10
/* 80D09260  4B 63 E1 3C */	b PSVECSquareDistance
/* 80D09264  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D09268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0926C  40 81 00 58 */	ble lbl_80D092C4
/* 80D09270  FC 00 08 34 */	frsqrte f0, f1
/* 80D09274  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80D09278  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0927C  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80D09280  FC 00 00 32 */	fmul f0, f0, f0
/* 80D09284  FC 01 00 32 */	fmul f0, f1, f0
/* 80D09288  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0928C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D09290  FC 44 00 32 */	fmul f2, f4, f0
/* 80D09294  FC 00 00 32 */	fmul f0, f0, f0
/* 80D09298  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0929C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D092A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D092A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D092A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D092AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D092B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D092B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D092B8  FF E1 00 32 */	fmul f31, f1, f0
/* 80D092BC  FF E0 F8 18 */	frsp f31, f31
/* 80D092C0  48 00 00 90 */	b lbl_80D09350
lbl_80D092C4:
/* 80D092C4  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80D092C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D092CC  40 80 00 10 */	bge lbl_80D092DC
/* 80D092D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D092D4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80D092D8  48 00 00 78 */	b lbl_80D09350
lbl_80D092DC:
/* 80D092DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D092E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D092E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D092E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D092EC  7C 03 00 00 */	cmpw r3, r0
/* 80D092F0  41 82 00 14 */	beq lbl_80D09304
/* 80D092F4  40 80 00 40 */	bge lbl_80D09334
/* 80D092F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D092FC  41 82 00 20 */	beq lbl_80D0931C
/* 80D09300  48 00 00 34 */	b lbl_80D09334
lbl_80D09304:
/* 80D09304  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09308  41 82 00 0C */	beq lbl_80D09314
/* 80D0930C  38 00 00 01 */	li r0, 1
/* 80D09310  48 00 00 28 */	b lbl_80D09338
lbl_80D09314:
/* 80D09314  38 00 00 02 */	li r0, 2
/* 80D09318  48 00 00 20 */	b lbl_80D09338
lbl_80D0931C:
/* 80D0931C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09320  41 82 00 0C */	beq lbl_80D0932C
/* 80D09324  38 00 00 05 */	li r0, 5
/* 80D09328  48 00 00 10 */	b lbl_80D09338
lbl_80D0932C:
/* 80D0932C  38 00 00 03 */	li r0, 3
/* 80D09330  48 00 00 08 */	b lbl_80D09338
lbl_80D09334:
/* 80D09334  38 00 00 04 */	li r0, 4
lbl_80D09338:
/* 80D09338  2C 00 00 01 */	cmpwi r0, 1
/* 80D0933C  40 82 00 10 */	bne lbl_80D0934C
/* 80D09340  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D09344  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80D09348  48 00 00 08 */	b lbl_80D09350
lbl_80D0934C:
/* 80D0934C  FF E0 08 90 */	fmr f31, f1
lbl_80D09350:
/* 80D09350  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80D09354  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D09358  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80D0935C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D09360  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 80D09364  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D09368  A8 7D 06 0A */	lha r3, 0x60a(r29)
/* 80D0936C  7F E0 07 34 */	extsh r0, r31
/* 80D09370  7C 03 00 50 */	subf r0, r3, r0
/* 80D09374  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80D09378  40 80 01 54 */	bge lbl_80D094CC
/* 80D0937C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80D09380  40 81 01 4C */	ble lbl_80D094CC
/* 80D09384  38 61 00 28 */	addi r3, r1, 0x28
/* 80D09388  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D0938C  4B 63 E0 10 */	b PSVECSquareDistance
/* 80D09390  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D09394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09398  40 81 00 58 */	ble lbl_80D093F0
/* 80D0939C  FC 00 08 34 */	frsqrte f0, f1
/* 80D093A0  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80D093A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D093A8  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80D093AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D093B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D093B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D093B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D093BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D093C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D093C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D093C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D093CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D093D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D093D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D093D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D093DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D093E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D093E4  FC 21 00 32 */	fmul f1, f1, f0
/* 80D093E8  FC 20 08 18 */	frsp f1, f1
/* 80D093EC  48 00 00 88 */	b lbl_80D09474
lbl_80D093F0:
/* 80D093F0  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80D093F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D093F8  40 80 00 10 */	bge lbl_80D09408
/* 80D093FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D09400  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D09404  48 00 00 70 */	b lbl_80D09474
lbl_80D09408:
/* 80D09408  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D0940C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D09410  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D09414  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D09418  7C 03 00 00 */	cmpw r3, r0
/* 80D0941C  41 82 00 14 */	beq lbl_80D09430
/* 80D09420  40 80 00 40 */	bge lbl_80D09460
/* 80D09424  2C 03 00 00 */	cmpwi r3, 0
/* 80D09428  41 82 00 20 */	beq lbl_80D09448
/* 80D0942C  48 00 00 34 */	b lbl_80D09460
lbl_80D09430:
/* 80D09430  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D09434  41 82 00 0C */	beq lbl_80D09440
/* 80D09438  38 00 00 01 */	li r0, 1
/* 80D0943C  48 00 00 28 */	b lbl_80D09464
lbl_80D09440:
/* 80D09440  38 00 00 02 */	li r0, 2
/* 80D09444  48 00 00 20 */	b lbl_80D09464
lbl_80D09448:
/* 80D09448  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0944C  41 82 00 0C */	beq lbl_80D09458
/* 80D09450  38 00 00 05 */	li r0, 5
/* 80D09454  48 00 00 10 */	b lbl_80D09464
lbl_80D09458:
/* 80D09458  38 00 00 03 */	li r0, 3
/* 80D0945C  48 00 00 08 */	b lbl_80D09464
lbl_80D09460:
/* 80D09460  38 00 00 04 */	li r0, 4
lbl_80D09464:
/* 80D09464  2C 00 00 01 */	cmpwi r0, 1
/* 80D09468  40 82 00 0C */	bne lbl_80D09474
/* 80D0946C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D09470  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D09474:
/* 80D09474  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80D09478  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80D0947C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D09480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D09484  40 80 00 48 */	bge lbl_80D094CC
/* 80D09488  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D0948C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80D09490  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D09494  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80D09498  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D0949C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80D094A0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80D094A4  FC 40 F8 90 */	fmr f2, f31
/* 80D094A8  4B 55 E1 CC */	b cM_atan2s__Fff
/* 80D094AC  7C 03 00 D0 */	neg r0, r3
/* 80D094B0  B0 1D 06 06 */	sth r0, 0x606(r29)
/* 80D094B4  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80D094B8  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80D094BC  4B 55 E1 B8 */	b cM_atan2s__Fff
/* 80D094C0  B0 7D 06 02 */	sth r3, 0x602(r29)
/* 80D094C4  B3 FD 06 0A */	sth r31, 0x60a(r29)
/* 80D094C8  48 00 00 10 */	b lbl_80D094D8
lbl_80D094CC:
/* 80D094CC  A8 7D 05 F8 */	lha r3, 0x5f8(r29)
/* 80D094D0  38 03 01 00 */	addi r0, r3, 0x100
/* 80D094D4  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
lbl_80D094D8:
/* 80D094D8  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha
/* 80D094DC  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D094E0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D094E4  48 00 00 10 */	b lbl_80D094F4
lbl_80D094E8:
/* 80D094E8  A8 7D 05 F8 */	lha r3, 0x5f8(r29)
/* 80D094EC  38 03 01 00 */	addi r0, r3, 0x100
/* 80D094F0  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
lbl_80D094F4:
/* 80D094F4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80D094F8  A8 9D 05 F8 */	lha r4, 0x5f8(r29)
/* 80D094FC  38 A0 00 10 */	li r5, 0x10
/* 80D09500  38 C0 00 50 */	li r6, 0x50
/* 80D09504  4B 56 71 04 */	b cLib_addCalcAngleS2__FPssss
/* 80D09508  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80D0950C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80D09510  38 61 00 60 */	addi r3, r1, 0x60
/* 80D09514  38 80 FF FF */	li r4, -1
/* 80D09518  4B 36 E7 C4 */	b __dt__11dBgS_LinChkFv
/* 80D0951C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80D09520  38 80 FF FF */	li r4, -1
/* 80D09524  4B 36 E7 B8 */	b __dt__11dBgS_LinChkFv
/* 80D09528  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80D0952C  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80D09530  39 61 01 50 */	addi r11, r1, 0x150
/* 80D09534  4B 65 8C F4 */	b _restgpr_29
/* 80D09538  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80D0953C  7C 08 03 A6 */	mtlr r0
/* 80D09540  38 21 01 60 */	addi r1, r1, 0x160
/* 80D09544  4E 80 00 20 */	blr 
