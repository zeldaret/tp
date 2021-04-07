lbl_80C4B3A0:
/* 80C4B3A0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C4B3A4  7C 08 02 A6 */	mflr r0
/* 80C4B3A8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C4B3AC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C4B3B0  4B 71 6E 29 */	bl _savegpr_28
/* 80C4B3B4  7C 7C 1B 78 */	mr r28, r3
/* 80C4B3B8  3C 60 80 C5 */	lis r3, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4B3BC  3B E3 D4 90 */	addi r31, r3, lit_3775@l /* 0x80C4D490@l */
/* 80C4B3C0  38 60 00 00 */	li r3, 0
/* 80C4B3C4  7C 64 1B 78 */	mr r4, r3
/* 80C4B3C8  38 00 00 03 */	li r0, 3
/* 80C4B3CC  7C 09 03 A6 */	mtctr r0
lbl_80C4B3D0:
/* 80C4B3D0  38 C3 09 82 */	addi r6, r3, 0x982
/* 80C4B3D4  7C BC 32 AE */	lhax r5, r28, r6
/* 80C4B3D8  38 05 FF FF */	addi r0, r5, -1
/* 80C4B3DC  7C 1C 33 2E */	sthx r0, r28, r6
/* 80C4B3E0  7C 1C 32 AE */	lhax r0, r28, r6
/* 80C4B3E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B3E8  41 81 00 08 */	bgt lbl_80C4B3F0
/* 80C4B3EC  7C 9C 33 2E */	sthx r4, r28, r6
lbl_80C4B3F0:
/* 80C4B3F0  38 63 00 02 */	addi r3, r3, 2
/* 80C4B3F4  42 00 FF DC */	bdnz lbl_80C4B3D0
/* 80C4B3F8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C4B3FC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C4B400  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4B404  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C4B408  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C4B40C  38 61 00 44 */	addi r3, r1, 0x44
/* 80C4B410  4B 42 C8 59 */	bl __ct__11dBgS_LinChkFv
/* 80C4B414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4B418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4B41C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C4B420  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C4B424  4B 42 DA 45 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4B428  88 1C 09 81 */	lbz r0, 0x981(r28)
/* 80C4B42C  2C 00 00 01 */	cmpwi r0, 1
/* 80C4B430  41 82 00 7C */	beq lbl_80C4B4AC
/* 80C4B434  40 80 00 10 */	bge lbl_80C4B444
/* 80C4B438  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B43C  40 80 00 14 */	bge lbl_80C4B450
/* 80C4B440  48 00 06 E4 */	b lbl_80C4BB24
lbl_80C4B444:
/* 80C4B444  2C 00 00 03 */	cmpwi r0, 3
/* 80C4B448  40 80 06 DC */	bge lbl_80C4BB24
/* 80C4B44C  48 00 01 4C */	b lbl_80C4B598
lbl_80C4B450:
/* 80C4B450  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4B454  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4B458  38 80 00 06 */	li r4, 6
/* 80C4B45C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4B460  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4B464  3C A5 00 02 */	addis r5, r5, 2
/* 80C4B468  38 C0 00 80 */	li r6, 0x80
/* 80C4B46C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4B470  4B 3F 0E 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4B474  7C 64 1B 78 */	mr r4, r3
/* 80C4B478  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4B47C  38 A0 00 02 */	li r5, 2
/* 80C4B480  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4B484  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C4B488  FC 60 10 90 */	fmr f3, f2
/* 80C4B48C  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C4B490  4B 3C 59 E1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4B494  88 7C 09 81 */	lbz r3, 0x981(r28)
/* 80C4B498  38 03 00 01 */	addi r0, r3, 1
/* 80C4B49C  98 1C 09 81 */	stb r0, 0x981(r28)
/* 80C4B4A0  38 00 00 14 */	li r0, 0x14
/* 80C4B4A4  B0 1C 09 82 */	sth r0, 0x982(r28)
/* 80C4B4A8  48 00 06 7C */	b lbl_80C4BB24
lbl_80C4B4AC:
/* 80C4B4AC  A8 1C 09 82 */	lha r0, 0x982(r28)
/* 80C4B4B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C4B4B4  40 82 00 10 */	bne lbl_80C4B4C4
/* 80C4B4B8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4B4BC  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4B4C0  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80C4B4C4:
/* 80C4B4C4  A8 1C 09 82 */	lha r0, 0x982(r28)
/* 80C4B4C8  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B4CC  40 82 06 58 */	bne lbl_80C4BB24
/* 80C4B4D0  88 7C 09 81 */	lbz r3, 0x981(r28)
/* 80C4B4D4  38 03 00 01 */	addi r0, r3, 1
/* 80C4B4D8  98 1C 09 81 */	stb r0, 0x981(r28)
/* 80C4B4DC  38 7C 09 9A */	addi r3, r28, 0x99a
/* 80C4B4E0  4B 3C 1A 2D */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C4B4E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4B4E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4B4EC  38 81 00 38 */	addi r4, r1, 0x38
/* 80C4B4F0  7C 85 23 78 */	mr r5, r4
/* 80C4B4F4  4B 6F B8 79 */	bl PSMTXMultVec
/* 80C4B4F8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80C4B4FC  4B 61 C4 59 */	bl cM_rndF__Ff
/* 80C4B500  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C4B504  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B508  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B50C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C4B510  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C4B514  B0 1C 09 82 */	sth r0, 0x982(r28)
/* 80C4B518  88 1C 09 C0 */	lbz r0, 0x9c0(r28)
/* 80C4B51C  28 00 00 00 */	cmplwi r0, 0
/* 80C4B520  40 82 00 28 */	bne lbl_80C4B548
/* 80C4B524  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80C4B528  4B 61 C4 2D */	bl cM_rndF__Ff
/* 80C4B52C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C4B530  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B534  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B538  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C4B53C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C4B540  B0 1C 09 84 */	sth r0, 0x984(r28)
/* 80C4B544  48 00 00 24 */	b lbl_80C4B568
lbl_80C4B548:
/* 80C4B548  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4B54C  4B 61 C4 09 */	bl cM_rndF__Ff
/* 80C4B550  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4B554  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B558  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B55C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C4B560  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C4B564  B0 1C 09 84 */	sth r0, 0x984(r28)
lbl_80C4B568:
/* 80C4B568  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4B56C  4B 61 C3 E9 */	bl cM_rndF__Ff
/* 80C4B570  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C4B574  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B578  D0 1C 09 88 */	stfs f0, 0x988(r28)
/* 80C4B57C  A8 1C 09 A2 */	lha r0, 0x9a2(r28)
/* 80C4B580  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80C4B584  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C4B588  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C4B58C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C4B590  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C4B594  48 00 05 90 */	b lbl_80C4BB24
lbl_80C4B598:
/* 80C4B598  7F C3 F3 78 */	mr r3, r30
/* 80C4B59C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C4B5A0  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80C4B5A4  7D 89 03 A6 */	mtctr r12
/* 80C4B5A8  4E 80 04 21 */	bctrl 
/* 80C4B5AC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C4B5B0  41 82 03 C0 */	beq lbl_80C4B970
/* 80C4B5B4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C4B5B8  7F A4 EB 78 */	mr r4, r29
/* 80C4B5BC  4B 62 56 49 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C4B5C0  B0 7C 09 90 */	sth r3, 0x990(r28)
/* 80C4B5C4  7F A3 EB 78 */	mr r3, r29
/* 80C4B5C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C4B5CC  4B 6F BD D1 */	bl PSVECSquareDistance
/* 80C4B5D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B5D8  40 81 00 58 */	ble lbl_80C4B630
/* 80C4B5DC  FC 00 08 34 */	frsqrte f0, f1
/* 80C4B5E0  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C4B5E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B5E8  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C4B5EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B5F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B5F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B5F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B5FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B600  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B604  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B608  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B60C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B610  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B614  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B618  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B61C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B620  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B624  FC 21 00 32 */	fmul f1, f1, f0
/* 80C4B628  FC 20 08 18 */	frsp f1, f1
/* 80C4B62C  48 00 00 88 */	b lbl_80C4B6B4
lbl_80C4B630:
/* 80C4B630  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C4B634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B638  40 80 00 10 */	bge lbl_80C4B648
/* 80C4B63C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4B640  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4B644  48 00 00 70 */	b lbl_80C4B6B4
lbl_80C4B648:
/* 80C4B648  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C4B64C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C4B650  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4B654  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4B658  7C 03 00 00 */	cmpw r3, r0
/* 80C4B65C  41 82 00 14 */	beq lbl_80C4B670
/* 80C4B660  40 80 00 40 */	bge lbl_80C4B6A0
/* 80C4B664  2C 03 00 00 */	cmpwi r3, 0
/* 80C4B668  41 82 00 20 */	beq lbl_80C4B688
/* 80C4B66C  48 00 00 34 */	b lbl_80C4B6A0
lbl_80C4B670:
/* 80C4B670  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4B674  41 82 00 0C */	beq lbl_80C4B680
/* 80C4B678  38 00 00 01 */	li r0, 1
/* 80C4B67C  48 00 00 28 */	b lbl_80C4B6A4
lbl_80C4B680:
/* 80C4B680  38 00 00 02 */	li r0, 2
/* 80C4B684  48 00 00 20 */	b lbl_80C4B6A4
lbl_80C4B688:
/* 80C4B688  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4B68C  41 82 00 0C */	beq lbl_80C4B698
/* 80C4B690  38 00 00 05 */	li r0, 5
/* 80C4B694  48 00 00 10 */	b lbl_80C4B6A4
lbl_80C4B698:
/* 80C4B698  38 00 00 03 */	li r0, 3
/* 80C4B69C  48 00 00 08 */	b lbl_80C4B6A4
lbl_80C4B6A0:
/* 80C4B6A0  38 00 00 04 */	li r0, 4
lbl_80C4B6A4:
/* 80C4B6A4  2C 00 00 01 */	cmpwi r0, 1
/* 80C4B6A8  40 82 00 0C */	bne lbl_80C4B6B4
/* 80C4B6AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4B6B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C4B6B4:
/* 80C4B6B4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80C4B6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B6BC  40 80 00 2C */	bge lbl_80C4B6E8
/* 80C4B6C0  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C4B6C4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B6C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B6CC  40 80 00 1C */	bge lbl_80C4B6E8
/* 80C4B6D0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C4B6D4  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80C4B6D8  38 A0 00 02 */	li r5, 2
/* 80C4B6DC  38 C0 05 00 */	li r6, 0x500
/* 80C4B6E0  4B 62 4F 29 */	bl cLib_addCalcAngleS2__FPssss
/* 80C4B6E4  48 00 00 18 */	b lbl_80C4B6FC
lbl_80C4B6E8:
/* 80C4B6E8  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C4B6EC  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80C4B6F0  38 A0 00 10 */	li r5, 0x10
/* 80C4B6F4  38 C0 02 00 */	li r6, 0x200
/* 80C4B6F8  4B 62 4F 11 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C4B6FC:
/* 80C4B6FC  7F A3 EB 78 */	mr r3, r29
/* 80C4B700  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C4B704  4B 6F BC 99 */	bl PSVECSquareDistance
/* 80C4B708  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B70C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B710  40 81 00 58 */	ble lbl_80C4B768
/* 80C4B714  FC 00 08 34 */	frsqrte f0, f1
/* 80C4B718  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C4B71C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B720  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C4B724  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B728  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B72C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B730  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B734  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B738  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B73C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B740  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B744  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B748  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B74C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B750  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B754  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B758  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B75C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C4B760  FC 20 08 18 */	frsp f1, f1
/* 80C4B764  48 00 00 88 */	b lbl_80C4B7EC
lbl_80C4B768:
/* 80C4B768  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C4B76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B770  40 80 00 10 */	bge lbl_80C4B780
/* 80C4B774  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4B778  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4B77C  48 00 00 70 */	b lbl_80C4B7EC
lbl_80C4B780:
/* 80C4B780  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C4B784  80 81 00 08 */	lwz r4, 8(r1)
/* 80C4B788  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4B78C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4B790  7C 03 00 00 */	cmpw r3, r0
/* 80C4B794  41 82 00 14 */	beq lbl_80C4B7A8
/* 80C4B798  40 80 00 40 */	bge lbl_80C4B7D8
/* 80C4B79C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4B7A0  41 82 00 20 */	beq lbl_80C4B7C0
/* 80C4B7A4  48 00 00 34 */	b lbl_80C4B7D8
lbl_80C4B7A8:
/* 80C4B7A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4B7AC  41 82 00 0C */	beq lbl_80C4B7B8
/* 80C4B7B0  38 00 00 01 */	li r0, 1
/* 80C4B7B4  48 00 00 28 */	b lbl_80C4B7DC
lbl_80C4B7B8:
/* 80C4B7B8  38 00 00 02 */	li r0, 2
/* 80C4B7BC  48 00 00 20 */	b lbl_80C4B7DC
lbl_80C4B7C0:
/* 80C4B7C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4B7C4  41 82 00 0C */	beq lbl_80C4B7D0
/* 80C4B7C8  38 00 00 05 */	li r0, 5
/* 80C4B7CC  48 00 00 10 */	b lbl_80C4B7DC
lbl_80C4B7D0:
/* 80C4B7D0  38 00 00 03 */	li r0, 3
/* 80C4B7D4  48 00 00 08 */	b lbl_80C4B7DC
lbl_80C4B7D8:
/* 80C4B7D8  38 00 00 04 */	li r0, 4
lbl_80C4B7DC:
/* 80C4B7DC  2C 00 00 01 */	cmpwi r0, 1
/* 80C4B7E0  40 82 00 0C */	bne lbl_80C4B7EC
/* 80C4B7E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4B7E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C4B7EC:
/* 80C4B7EC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80C4B7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B7F4  40 80 00 FC */	bge lbl_80C4B8F0
/* 80C4B7F8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C4B7FC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4B800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B804  40 80 00 EC */	bge lbl_80C4B8F0
/* 80C4B808  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B80C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4B810  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C4B814  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C4B818  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C4B81C  88 1C 09 C2 */	lbz r0, 0x9c2(r28)
/* 80C4B820  28 00 00 00 */	cmplwi r0, 0
/* 80C4B824  40 82 00 14 */	bne lbl_80C4B838
/* 80C4B828  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C4B82C  7F A4 EB 78 */	mr r4, r29
/* 80C4B830  4B 62 53 D5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C4B834  B0 7C 09 A2 */	sth r3, 0x9a2(r28)
lbl_80C4B838:
/* 80C4B838  38 61 00 20 */	addi r3, r1, 0x20
/* 80C4B83C  7F A4 EB 78 */	mr r4, r29
/* 80C4B840  A8 BC 09 A2 */	lha r5, 0x9a2(r28)
/* 80C4B844  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C4B848  4B 62 55 79 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C4B84C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C4B850  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C4B854  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C4B858  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C4B85C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C4B860  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C4B864  38 00 40 00 */	li r0, 0x4000
/* 80C4B868  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C4B86C  A8 1C 09 A2 */	lha r0, 0x9a2(r28)
/* 80C4B870  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C4B874  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B878  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C4B87C  D0 1C 09 88 */	stfs f0, 0x988(r28)
/* 80C4B880  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C4B884  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C4B888  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4B88C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C4B890  38 00 00 00 */	li r0, 0
/* 80C4B894  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80C4B898  A8 1C 09 A2 */	lha r0, 0x9a2(r28)
/* 80C4B89C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C4B8A0  38 00 00 01 */	li r0, 1
/* 80C4B8A4  98 1C 09 C2 */	stb r0, 0x9c2(r28)
/* 80C4B8A8  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4B8AC  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4B8B0  38 80 00 07 */	li r4, 7
/* 80C4B8B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4B8B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4B8BC  3C A5 00 02 */	addis r5, r5, 2
/* 80C4B8C0  38 C0 00 80 */	li r6, 0x80
/* 80C4B8C4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4B8C8  4B 3F 0A 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4B8CC  7C 64 1B 78 */	mr r4, r3
/* 80C4B8D0  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4B8D4  38 A0 00 02 */	li r5, 2
/* 80C4B8D8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4B8DC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C4B8E0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C4B8E4  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C4B8E8  4B 3C 55 89 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4B8EC  48 00 00 84 */	b lbl_80C4B970
lbl_80C4B8F0:
/* 80C4B8F0  88 1C 09 C2 */	lbz r0, 0x9c2(r28)
/* 80C4B8F4  28 00 00 00 */	cmplwi r0, 0
/* 80C4B8F8  41 82 00 78 */	beq lbl_80C4B970
/* 80C4B8FC  38 00 00 00 */	li r0, 0
/* 80C4B900  98 1C 09 C2 */	stb r0, 0x9c2(r28)
/* 80C4B904  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C4B908  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C4B90C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C4B910  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C4B914  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C4B918  D0 1C 09 88 */	stfs f0, 0x988(r28)
/* 80C4B91C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4B920  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4B924  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C4B928  B0 1C 09 A2 */	sth r0, 0x9a2(r28)
/* 80C4B92C  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4B930  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4B934  38 80 00 06 */	li r4, 6
/* 80C4B938  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4B93C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4B940  3C A5 00 02 */	addis r5, r5, 2
/* 80C4B944  38 C0 00 80 */	li r6, 0x80
/* 80C4B948  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4B94C  4B 3F 09 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4B950  7C 64 1B 78 */	mr r4, r3
/* 80C4B954  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4B958  38 A0 00 02 */	li r5, 2
/* 80C4B95C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4B960  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C4B964  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C4B968  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C4B96C  4B 3C 55 05 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80C4B970:
/* 80C4B970  A8 1C 09 82 */	lha r0, 0x982(r28)
/* 80C4B974  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B978  40 82 00 9C */	bne lbl_80C4BA14
/* 80C4B97C  28 1D 00 00 */	cmplwi r29, 0
/* 80C4B980  40 82 00 60 */	bne lbl_80C4B9E0
/* 80C4B984  38 61 00 14 */	addi r3, r1, 0x14
/* 80C4B988  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80C4B98C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C4B990  4B 61 B1 A5 */	bl __mi__4cXyzCFRC3Vec
/* 80C4B994  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C4B998  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4B99C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C4B9A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C4B9A4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C4B9A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C4B9AC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80C4B9B0  4B 61 BF DD */	bl cM_rndFX__Ff
/* 80C4B9B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C4B9B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B9BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4B9C0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80C4B9C4  4B 61 BF C9 */	bl cM_rndFX__Ff
/* 80C4B9C8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C4B9CC  EC 40 08 2A */	fadds f2, f0, f1
/* 80C4B9D0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80C4B9D4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C4B9D8  4B 61 BC 9D */	bl cM_atan2s__Fff
/* 80C4B9DC  B0 7C 09 90 */	sth r3, 0x990(r28)
lbl_80C4B9E0:
/* 80C4B9E0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C4B9E4  4B 61 BF 71 */	bl cM_rndF__Ff
/* 80C4B9E8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C4B9EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B9F0  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B9F4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C4B9F8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C4B9FC  B0 1C 09 82 */	sth r0, 0x982(r28)
/* 80C4BA00  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4BA04  4B 61 BF 51 */	bl cM_rndF__Ff
/* 80C4BA08  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C4BA0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4BA10  D0 1C 09 88 */	stfs f0, 0x988(r28)
lbl_80C4BA14:
/* 80C4BA14  A8 1C 09 84 */	lha r0, 0x984(r28)
/* 80C4BA18  2C 00 00 00 */	cmpwi r0, 0
/* 80C4BA1C  40 82 00 34 */	bne lbl_80C4BA50
/* 80C4BA20  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C4BA24  4B 61 BF 31 */	bl cM_rndF__Ff
/* 80C4BA28  FC 00 08 50 */	fneg f0, f1
/* 80C4BA2C  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C4BA30  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C4BA34  4B 61 BF 21 */	bl cM_rndF__Ff
/* 80C4BA38  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C4BA3C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4BA40  FC 00 00 1E */	fctiwz f0, f0
/* 80C4BA44  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C4BA48  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C4BA4C  B0 1C 09 84 */	sth r0, 0x984(r28)
lbl_80C4BA50:
/* 80C4BA50  7F 83 E3 78 */	mr r3, r28
/* 80C4BA54  4B FF F1 F1 */	bl SpeedSet__10daObjKUW_cFv
/* 80C4BA58  88 1C 09 C0 */	lbz r0, 0x9c0(r28)
/* 80C4BA5C  28 00 00 00 */	cmplwi r0, 0
/* 80C4BA60  40 82 00 30 */	bne lbl_80C4BA90
/* 80C4BA64  38 7C 09 9A */	addi r3, r28, 0x99a
/* 80C4BA68  38 80 00 00 */	li r4, 0
/* 80C4BA6C  38 A0 00 10 */	li r5, 0x10
/* 80C4BA70  38 C0 10 00 */	li r6, 0x1000
/* 80C4BA74  4B 62 4B 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80C4BA78  38 7C 09 9E */	addi r3, r28, 0x99e
/* 80C4BA7C  38 80 00 00 */	li r4, 0
/* 80C4BA80  38 A0 00 10 */	li r5, 0x10
/* 80C4BA84  38 C0 10 00 */	li r6, 0x1000
/* 80C4BA88  4B 62 4B 81 */	bl cLib_addCalcAngleS2__FPssss
/* 80C4BA8C  48 00 00 2C */	b lbl_80C4BAB8
lbl_80C4BA90:
/* 80C4BA90  38 7C 09 9A */	addi r3, r28, 0x99a
/* 80C4BA94  38 80 00 00 */	li r4, 0
/* 80C4BA98  38 A0 00 10 */	li r5, 0x10
/* 80C4BA9C  38 C0 01 00 */	li r6, 0x100
/* 80C4BAA0  4B 62 4B 69 */	bl cLib_addCalcAngleS2__FPssss
/* 80C4BAA4  38 7C 09 9E */	addi r3, r28, 0x99e
/* 80C4BAA8  38 80 00 00 */	li r4, 0
/* 80C4BAAC  38 A0 00 10 */	li r5, 0x10
/* 80C4BAB0  38 C0 01 00 */	li r6, 0x100
/* 80C4BAB4  4B 62 4B 55 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C4BAB8:
/* 80C4BAB8  7F 83 E3 78 */	mr r3, r28
/* 80C4BABC  4B FF EF 15 */	bl WallCheck__10daObjKUW_cFv
/* 80C4BAC0  2C 03 00 00 */	cmpwi r3, 0
/* 80C4BAC4  41 82 00 24 */	beq lbl_80C4BAE8
/* 80C4BAC8  38 00 00 00 */	li r0, 0
/* 80C4BACC  98 1C 09 80 */	stb r0, 0x980(r28)
/* 80C4BAD0  98 1C 09 81 */	stb r0, 0x981(r28)
/* 80C4BAD4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4BAD8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C4BADC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C4BAE0  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C4BAE4  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
lbl_80C4BAE8:
/* 80C4BAE8  88 1C 09 C0 */	lbz r0, 0x9c0(r28)
/* 80C4BAEC  28 00 00 01 */	cmplwi r0, 1
/* 80C4BAF0  40 82 00 18 */	bne lbl_80C4BB08
/* 80C4BAF4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C4BAF8  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80C4BAFC  38 A0 00 10 */	li r5, 0x10
/* 80C4BB00  38 C0 01 00 */	li r6, 0x100
/* 80C4BB04  4B 62 4B 05 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C4BB08:
/* 80C4BB08  88 1C 09 C2 */	lbz r0, 0x9c2(r28)
/* 80C4BB0C  28 00 00 00 */	cmplwi r0, 0
/* 80C4BB10  40 82 00 14 */	bne lbl_80C4BB24
/* 80C4BB14  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80C4BB18  38 80 00 00 */	li r4, 0
/* 80C4BB1C  38 A0 04 00 */	li r5, 0x400
/* 80C4BB20  4B 62 50 71 */	bl cLib_chaseAngleS__FPsss
lbl_80C4BB24:
/* 80C4BB24  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C4BB28  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C4BB2C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4BB30  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C4BB34  40 82 00 30 */	bne lbl_80C4BB64
/* 80C4BB38  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80C4BB3C  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80C4BB40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C4BB44  38 7C 09 C4 */	addi r3, r28, 0x9c4
/* 80C4BB48  38 81 00 10 */	addi r4, r1, 0x10
/* 80C4BB4C  38 A0 00 00 */	li r5, 0
/* 80C4BB50  38 C0 FF FF */	li r6, -1
/* 80C4BB54  81 9C 09 C4 */	lwz r12, 0x9c4(r28)
/* 80C4BB58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C4BB5C  7D 89 03 A6 */	mtctr r12
/* 80C4BB60  4E 80 04 21 */	bctrl 
lbl_80C4BB64:
/* 80C4BB64  38 61 00 44 */	addi r3, r1, 0x44
/* 80C4BB68  38 80 FF FF */	li r4, -1
/* 80C4BB6C  4B 42 C1 71 */	bl __dt__11dBgS_LinChkFv
/* 80C4BB70  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C4BB74  4B 71 66 B1 */	bl _restgpr_28
/* 80C4BB78  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C4BB7C  7C 08 03 A6 */	mtlr r0
/* 80C4BB80  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C4BB84  4E 80 00 20 */	blr 
