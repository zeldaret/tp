lbl_80C36338:
/* 80C36338  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C3633C  7C 08 02 A6 */	mflr r0
/* 80C36340  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C36344  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C36348  4B 72 BE 90 */	b _savegpr_28
/* 80C3634C  7C 7C 1B 78 */	mr r28, r3
/* 80C36350  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C36354  3B E3 84 08 */	addi r31, r3, lit_3775@l
/* 80C36358  38 60 00 00 */	li r3, 0
/* 80C3635C  7C 64 1B 78 */	mr r4, r3
/* 80C36360  38 00 00 03 */	li r0, 3
/* 80C36364  7C 09 03 A6 */	mtctr r0
lbl_80C36368:
/* 80C36368  38 C3 09 82 */	addi r6, r3, 0x982
/* 80C3636C  7C BC 32 AE */	lhax r5, r28, r6
/* 80C36370  38 05 FF FF */	addi r0, r5, -1
/* 80C36374  7C 1C 33 2E */	sthx r0, r28, r6
/* 80C36378  7C 1C 32 AE */	lhax r0, r28, r6
/* 80C3637C  2C 00 00 00 */	cmpwi r0, 0
/* 80C36380  41 81 00 08 */	bgt lbl_80C36388
/* 80C36384  7C 9C 33 2E */	sthx r4, r28, r6
lbl_80C36388:
/* 80C36388  38 63 00 02 */	addi r3, r3, 2
/* 80C3638C  42 00 FF DC */	bdnz lbl_80C36368
/* 80C36390  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C36394  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C36398  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C3639C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C363A0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C363A4  38 61 00 44 */	addi r3, r1, 0x44
/* 80C363A8  4B 44 18 C0 */	b __ct__11dBgS_LinChkFv
/* 80C363AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C363B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C363B4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C363B8  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C363BC  4B 44 2A AC */	b SetObj__16dBgS_PolyPassChkFv
/* 80C363C0  88 1C 09 81 */	lbz r0, 0x981(r28)
/* 80C363C4  2C 00 00 01 */	cmpwi r0, 1
/* 80C363C8  41 82 00 7C */	beq lbl_80C36444
/* 80C363CC  40 80 00 10 */	bge lbl_80C363DC
/* 80C363D0  2C 00 00 00 */	cmpwi r0, 0
/* 80C363D4  40 80 00 14 */	bge lbl_80C363E8
/* 80C363D8  48 00 06 E4 */	b lbl_80C36ABC
lbl_80C363DC:
/* 80C363DC  2C 00 00 03 */	cmpwi r0, 3
/* 80C363E0  40 80 06 DC */	bge lbl_80C36ABC
/* 80C363E4  48 00 01 4C */	b lbl_80C36530
lbl_80C363E8:
/* 80C363E8  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C363EC  38 63 84 FC */	addi r3, r3, stringBase0@l
/* 80C363F0  38 80 00 06 */	li r4, 6
/* 80C363F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C363F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C363FC  3C A5 00 02 */	addis r5, r5, 2
/* 80C36400  38 C0 00 80 */	li r6, 0x80
/* 80C36404  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C36408  4B 40 5E E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C3640C  7C 64 1B 78 */	mr r4, r3
/* 80C36410  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C36414  38 A0 00 02 */	li r5, 2
/* 80C36418  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C3641C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C36420  FC 60 10 90 */	fmr f3, f2
/* 80C36424  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C36428  4B 3D AA 48 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C3642C  88 7C 09 81 */	lbz r3, 0x981(r28)
/* 80C36430  38 03 00 01 */	addi r0, r3, 1
/* 80C36434  98 1C 09 81 */	stb r0, 0x981(r28)
/* 80C36438  38 00 00 14 */	li r0, 0x14
/* 80C3643C  B0 1C 09 82 */	sth r0, 0x982(r28)
/* 80C36440  48 00 06 7C */	b lbl_80C36ABC
lbl_80C36444:
/* 80C36444  A8 1C 09 82 */	lha r0, 0x982(r28)
/* 80C36448  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C3644C  40 82 00 10 */	bne lbl_80C3645C
/* 80C36450  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C36454  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C36458  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80C3645C:
/* 80C3645C  A8 1C 09 82 */	lha r0, 0x982(r28)
/* 80C36460  2C 00 00 00 */	cmpwi r0, 0
/* 80C36464  40 82 06 58 */	bne lbl_80C36ABC
/* 80C36468  88 7C 09 81 */	lbz r3, 0x981(r28)
/* 80C3646C  38 03 00 01 */	addi r0, r3, 1
/* 80C36470  98 1C 09 81 */	stb r0, 0x981(r28)
/* 80C36474  38 7C 09 9A */	addi r3, r28, 0x99a
/* 80C36478  4B 3D 6A 94 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C3647C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C36480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C36484  38 81 00 38 */	addi r4, r1, 0x38
/* 80C36488  7C 85 23 78 */	mr r5, r4
/* 80C3648C  4B 71 08 E0 */	b PSMTXMultVec
/* 80C36490  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C36494  4B 63 14 C0 */	b cM_rndF__Ff
/* 80C36498  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80C3649C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C364A0  FC 00 00 1E */	fctiwz f0, f0
/* 80C364A4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C364A8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C364AC  B0 1C 09 82 */	sth r0, 0x982(r28)
/* 80C364B0  88 1C 09 C0 */	lbz r0, 0x9c0(r28)
/* 80C364B4  28 00 00 00 */	cmplwi r0, 0
/* 80C364B8  40 82 00 28 */	bne lbl_80C364E0
/* 80C364BC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80C364C0  4B 63 14 94 */	b cM_rndF__Ff
/* 80C364C4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C364C8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C364CC  FC 00 00 1E */	fctiwz f0, f0
/* 80C364D0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C364D4  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C364D8  B0 1C 09 84 */	sth r0, 0x984(r28)
/* 80C364DC  48 00 00 24 */	b lbl_80C36500
lbl_80C364E0:
/* 80C364E0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80C364E4  4B 63 14 70 */	b cM_rndF__Ff
/* 80C364E8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C364EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C364F0  FC 00 00 1E */	fctiwz f0, f0
/* 80C364F4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C364F8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C364FC  B0 1C 09 84 */	sth r0, 0x984(r28)
lbl_80C36500:
/* 80C36500  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C36504  4B 63 14 50 */	b cM_rndF__Ff
/* 80C36508  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C3650C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C36510  D0 1C 09 88 */	stfs f0, 0x988(r28)
/* 80C36514  A8 1C 09 A2 */	lha r0, 0x9a2(r28)
/* 80C36518  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80C3651C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C36520  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C36524  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C36528  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C3652C  48 00 05 90 */	b lbl_80C36ABC
lbl_80C36530:
/* 80C36530  7F C3 F3 78 */	mr r3, r30
/* 80C36534  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C36538  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80C3653C  7D 89 03 A6 */	mtctr r12
/* 80C36540  4E 80 04 21 */	bctrl 
/* 80C36544  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C36548  41 82 03 C0 */	beq lbl_80C36908
/* 80C3654C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C36550  7F A4 EB 78 */	mr r4, r29
/* 80C36554  4B 63 A6 B0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C36558  B0 7C 09 90 */	sth r3, 0x990(r28)
/* 80C3655C  7F A3 EB 78 */	mr r3, r29
/* 80C36560  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C36564  4B 71 0E 38 */	b PSVECSquareDistance
/* 80C36568  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C3656C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36570  40 81 00 58 */	ble lbl_80C365C8
/* 80C36574  FC 00 08 34 */	frsqrte f0, f1
/* 80C36578  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C3657C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C36580  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C36584  FC 00 00 32 */	fmul f0, f0, f0
/* 80C36588  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3658C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C36590  FC 02 00 32 */	fmul f0, f2, f0
/* 80C36594  FC 44 00 32 */	fmul f2, f4, f0
/* 80C36598  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3659C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C365A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C365A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C365A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C365AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C365B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C365B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C365B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C365BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C365C0  FC 20 08 18 */	frsp f1, f1
/* 80C365C4  48 00 00 88 */	b lbl_80C3664C
lbl_80C365C8:
/* 80C365C8  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C365CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C365D0  40 80 00 10 */	bge lbl_80C365E0
/* 80C365D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C365D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C365DC  48 00 00 70 */	b lbl_80C3664C
lbl_80C365E0:
/* 80C365E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C365E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C365E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C365EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C365F0  7C 03 00 00 */	cmpw r3, r0
/* 80C365F4  41 82 00 14 */	beq lbl_80C36608
/* 80C365F8  40 80 00 40 */	bge lbl_80C36638
/* 80C365FC  2C 03 00 00 */	cmpwi r3, 0
/* 80C36600  41 82 00 20 */	beq lbl_80C36620
/* 80C36604  48 00 00 34 */	b lbl_80C36638
lbl_80C36608:
/* 80C36608  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3660C  41 82 00 0C */	beq lbl_80C36618
/* 80C36610  38 00 00 01 */	li r0, 1
/* 80C36614  48 00 00 28 */	b lbl_80C3663C
lbl_80C36618:
/* 80C36618  38 00 00 02 */	li r0, 2
/* 80C3661C  48 00 00 20 */	b lbl_80C3663C
lbl_80C36620:
/* 80C36620  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C36624  41 82 00 0C */	beq lbl_80C36630
/* 80C36628  38 00 00 05 */	li r0, 5
/* 80C3662C  48 00 00 10 */	b lbl_80C3663C
lbl_80C36630:
/* 80C36630  38 00 00 03 */	li r0, 3
/* 80C36634  48 00 00 08 */	b lbl_80C3663C
lbl_80C36638:
/* 80C36638  38 00 00 04 */	li r0, 4
lbl_80C3663C:
/* 80C3663C  2C 00 00 01 */	cmpwi r0, 1
/* 80C36640  40 82 00 0C */	bne lbl_80C3664C
/* 80C36644  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C36648  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C3664C:
/* 80C3664C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C36650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36654  40 80 00 2C */	bge lbl_80C36680
/* 80C36658  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C3665C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36664  40 80 00 1C */	bge lbl_80C36680
/* 80C36668  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C3666C  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80C36670  38 A0 00 02 */	li r5, 2
/* 80C36674  38 C0 05 00 */	li r6, 0x500
/* 80C36678  4B 63 9F 90 */	b cLib_addCalcAngleS2__FPssss
/* 80C3667C  48 00 00 18 */	b lbl_80C36694
lbl_80C36680:
/* 80C36680  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C36684  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80C36688  38 A0 00 10 */	li r5, 0x10
/* 80C3668C  38 C0 02 00 */	li r6, 0x200
/* 80C36690  4B 63 9F 78 */	b cLib_addCalcAngleS2__FPssss
lbl_80C36694:
/* 80C36694  7F A3 EB 78 */	mr r3, r29
/* 80C36698  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C3669C  4B 71 0D 00 */	b PSVECSquareDistance
/* 80C366A0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C366A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C366A8  40 81 00 58 */	ble lbl_80C36700
/* 80C366AC  FC 00 08 34 */	frsqrte f0, f1
/* 80C366B0  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C366B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C366B8  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C366BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C366C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C366C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C366C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C366CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C366D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C366D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C366D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C366DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C366E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C366E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C366E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C366EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C366F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C366F4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C366F8  FC 20 08 18 */	frsp f1, f1
/* 80C366FC  48 00 00 88 */	b lbl_80C36784
lbl_80C36700:
/* 80C36700  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C36704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36708  40 80 00 10 */	bge lbl_80C36718
/* 80C3670C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C36710  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C36714  48 00 00 70 */	b lbl_80C36784
lbl_80C36718:
/* 80C36718  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C3671C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C36720  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C36724  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C36728  7C 03 00 00 */	cmpw r3, r0
/* 80C3672C  41 82 00 14 */	beq lbl_80C36740
/* 80C36730  40 80 00 40 */	bge lbl_80C36770
/* 80C36734  2C 03 00 00 */	cmpwi r3, 0
/* 80C36738  41 82 00 20 */	beq lbl_80C36758
/* 80C3673C  48 00 00 34 */	b lbl_80C36770
lbl_80C36740:
/* 80C36740  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C36744  41 82 00 0C */	beq lbl_80C36750
/* 80C36748  38 00 00 01 */	li r0, 1
/* 80C3674C  48 00 00 28 */	b lbl_80C36774
lbl_80C36750:
/* 80C36750  38 00 00 02 */	li r0, 2
/* 80C36754  48 00 00 20 */	b lbl_80C36774
lbl_80C36758:
/* 80C36758  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3675C  41 82 00 0C */	beq lbl_80C36768
/* 80C36760  38 00 00 05 */	li r0, 5
/* 80C36764  48 00 00 10 */	b lbl_80C36774
lbl_80C36768:
/* 80C36768  38 00 00 03 */	li r0, 3
/* 80C3676C  48 00 00 08 */	b lbl_80C36774
lbl_80C36770:
/* 80C36770  38 00 00 04 */	li r0, 4
lbl_80C36774:
/* 80C36774  2C 00 00 01 */	cmpwi r0, 1
/* 80C36778  40 82 00 0C */	bne lbl_80C36784
/* 80C3677C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C36780  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C36784:
/* 80C36784  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80C36788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3678C  40 80 00 FC */	bge lbl_80C36888
/* 80C36790  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C36794  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C36798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3679C  40 80 00 EC */	bge lbl_80C36888
/* 80C367A0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C367A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C367A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C367AC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C367B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C367B4  88 1C 09 C2 */	lbz r0, 0x9c2(r28)
/* 80C367B8  28 00 00 00 */	cmplwi r0, 0
/* 80C367BC  40 82 00 14 */	bne lbl_80C367D0
/* 80C367C0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C367C4  7F A4 EB 78 */	mr r4, r29
/* 80C367C8  4B 63 A4 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C367CC  B0 7C 09 A2 */	sth r3, 0x9a2(r28)
lbl_80C367D0:
/* 80C367D0  38 61 00 20 */	addi r3, r1, 0x20
/* 80C367D4  7F A4 EB 78 */	mr r4, r29
/* 80C367D8  A8 BC 09 A2 */	lha r5, 0x9a2(r28)
/* 80C367DC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C367E0  4B 63 A5 E0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C367E4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C367E8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C367EC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C367F0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C367F4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C367F8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C367FC  38 00 40 00 */	li r0, 0x4000
/* 80C36800  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C36804  A8 1C 09 A2 */	lha r0, 0x9a2(r28)
/* 80C36808  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C3680C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36810  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C36814  D0 1C 09 88 */	stfs f0, 0x988(r28)
/* 80C36818  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C3681C  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C36820  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C36824  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C36828  38 00 00 00 */	li r0, 0
/* 80C3682C  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80C36830  A8 1C 09 A2 */	lha r0, 0x9a2(r28)
/* 80C36834  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C36838  38 00 00 01 */	li r0, 1
/* 80C3683C  98 1C 09 C2 */	stb r0, 0x9c2(r28)
/* 80C36840  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C36844  38 63 84 FC */	addi r3, r3, stringBase0@l
/* 80C36848  38 80 00 07 */	li r4, 7
/* 80C3684C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C36850  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C36854  3C A5 00 02 */	addis r5, r5, 2
/* 80C36858  38 C0 00 80 */	li r6, 0x80
/* 80C3685C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C36860  4B 40 5A 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C36864  7C 64 1B 78 */	mr r4, r3
/* 80C36868  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C3686C  38 A0 00 02 */	li r5, 2
/* 80C36870  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C36874  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C36878  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C3687C  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C36880  4B 3D A5 F0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C36884  48 00 00 84 */	b lbl_80C36908
lbl_80C36888:
/* 80C36888  88 1C 09 C2 */	lbz r0, 0x9c2(r28)
/* 80C3688C  28 00 00 00 */	cmplwi r0, 0
/* 80C36890  41 82 00 78 */	beq lbl_80C36908
/* 80C36894  38 00 00 00 */	li r0, 0
/* 80C36898  98 1C 09 C2 */	stb r0, 0x9c2(r28)
/* 80C3689C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C368A0  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C368A4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C368A8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C368AC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C368B0  D0 1C 09 88 */	stfs f0, 0x988(r28)
/* 80C368B4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C368B8  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C368BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C368C0  B0 1C 09 A2 */	sth r0, 0x9a2(r28)
/* 80C368C4  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C368C8  38 63 84 FC */	addi r3, r3, stringBase0@l
/* 80C368CC  38 80 00 06 */	li r4, 6
/* 80C368D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C368D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C368D8  3C A5 00 02 */	addis r5, r5, 2
/* 80C368DC  38 C0 00 80 */	li r6, 0x80
/* 80C368E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C368E4  4B 40 5A 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C368E8  7C 64 1B 78 */	mr r4, r3
/* 80C368EC  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C368F0  38 A0 00 02 */	li r5, 2
/* 80C368F4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C368F8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C368FC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C36900  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C36904  4B 3D A5 6C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80C36908:
/* 80C36908  A8 1C 09 82 */	lha r0, 0x982(r28)
/* 80C3690C  2C 00 00 00 */	cmpwi r0, 0
/* 80C36910  40 82 00 9C */	bne lbl_80C369AC
/* 80C36914  28 1D 00 00 */	cmplwi r29, 0
/* 80C36918  40 82 00 60 */	bne lbl_80C36978
/* 80C3691C  38 61 00 14 */	addi r3, r1, 0x14
/* 80C36920  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80C36924  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C36928  4B 63 02 0C */	b __mi__4cXyzCFRC3Vec
/* 80C3692C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C36930  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C36934  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C36938  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3693C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C36940  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C36944  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80C36948  4B 63 10 44 */	b cM_rndFX__Ff
/* 80C3694C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C36950  EC 00 08 2A */	fadds f0, f0, f1
/* 80C36954  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C36958  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80C3695C  4B 63 10 30 */	b cM_rndFX__Ff
/* 80C36960  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C36964  EC 40 08 2A */	fadds f2, f0, f1
/* 80C36968  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80C3696C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C36970  4B 63 0D 04 */	b cM_atan2s__Fff
/* 80C36974  B0 7C 09 90 */	sth r3, 0x990(r28)
lbl_80C36978:
/* 80C36978  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C3697C  4B 63 0F D8 */	b cM_rndF__Ff
/* 80C36980  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C36984  EC 00 08 2A */	fadds f0, f0, f1
/* 80C36988  FC 00 00 1E */	fctiwz f0, f0
/* 80C3698C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C36990  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C36994  B0 1C 09 82 */	sth r0, 0x982(r28)
/* 80C36998  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C3699C  4B 63 0F B8 */	b cM_rndF__Ff
/* 80C369A0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C369A4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C369A8  D0 1C 09 88 */	stfs f0, 0x988(r28)
lbl_80C369AC:
/* 80C369AC  A8 1C 09 84 */	lha r0, 0x984(r28)
/* 80C369B0  2C 00 00 00 */	cmpwi r0, 0
/* 80C369B4  40 82 00 34 */	bne lbl_80C369E8
/* 80C369B8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C369BC  4B 63 0F 98 */	b cM_rndF__Ff
/* 80C369C0  FC 00 08 50 */	fneg f0, f1
/* 80C369C4  D0 1C 09 8C */	stfs f0, 0x98c(r28)
/* 80C369C8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C369CC  4B 63 0F 88 */	b cM_rndF__Ff
/* 80C369D0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C369D4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C369D8  FC 00 00 1E */	fctiwz f0, f0
/* 80C369DC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C369E0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C369E4  B0 1C 09 84 */	sth r0, 0x984(r28)
lbl_80C369E8:
/* 80C369E8  7F 83 E3 78 */	mr r3, r28
/* 80C369EC  4B FF F1 F9 */	bl SpeedSet__10daObjKAM_cFv
/* 80C369F0  7F 83 E3 78 */	mr r3, r28
/* 80C369F4  4B FF EF 7D */	bl WallCheck__10daObjKAM_cFv
/* 80C369F8  2C 03 00 00 */	cmpwi r3, 0
/* 80C369FC  41 82 00 24 */	beq lbl_80C36A20
/* 80C36A00  38 00 00 00 */	li r0, 0
/* 80C36A04  98 1C 09 80 */	stb r0, 0x980(r28)
/* 80C36A08  98 1C 09 81 */	stb r0, 0x981(r28)
/* 80C36A0C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36A10  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C36A14  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C36A18  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C36A1C  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
lbl_80C36A20:
/* 80C36A20  88 1C 09 C0 */	lbz r0, 0x9c0(r28)
/* 80C36A24  28 00 00 00 */	cmplwi r0, 0
/* 80C36A28  40 82 00 30 */	bne lbl_80C36A58
/* 80C36A2C  38 7C 09 9A */	addi r3, r28, 0x99a
/* 80C36A30  38 80 00 00 */	li r4, 0
/* 80C36A34  38 A0 00 10 */	li r5, 0x10
/* 80C36A38  38 C0 10 00 */	li r6, 0x1000
/* 80C36A3C  4B 63 9B CC */	b cLib_addCalcAngleS2__FPssss
/* 80C36A40  38 7C 09 9E */	addi r3, r28, 0x99e
/* 80C36A44  38 80 00 00 */	li r4, 0
/* 80C36A48  38 A0 00 10 */	li r5, 0x10
/* 80C36A4C  38 C0 10 00 */	li r6, 0x1000
/* 80C36A50  4B 63 9B B8 */	b cLib_addCalcAngleS2__FPssss
/* 80C36A54  48 00 00 2C */	b lbl_80C36A80
lbl_80C36A58:
/* 80C36A58  38 7C 09 9A */	addi r3, r28, 0x99a
/* 80C36A5C  38 80 00 00 */	li r4, 0
/* 80C36A60  38 A0 00 10 */	li r5, 0x10
/* 80C36A64  38 C0 01 00 */	li r6, 0x100
/* 80C36A68  4B 63 9B A0 */	b cLib_addCalcAngleS2__FPssss
/* 80C36A6C  38 7C 09 9E */	addi r3, r28, 0x99e
/* 80C36A70  38 80 00 00 */	li r4, 0
/* 80C36A74  38 A0 00 10 */	li r5, 0x10
/* 80C36A78  38 C0 01 00 */	li r6, 0x100
/* 80C36A7C  4B 63 9B 8C */	b cLib_addCalcAngleS2__FPssss
lbl_80C36A80:
/* 80C36A80  88 1C 09 C0 */	lbz r0, 0x9c0(r28)
/* 80C36A84  28 00 00 01 */	cmplwi r0, 1
/* 80C36A88  40 82 00 18 */	bne lbl_80C36AA0
/* 80C36A8C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C36A90  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80C36A94  38 A0 00 10 */	li r5, 0x10
/* 80C36A98  38 C0 01 00 */	li r6, 0x100
/* 80C36A9C  4B 63 9B 6C */	b cLib_addCalcAngleS2__FPssss
lbl_80C36AA0:
/* 80C36AA0  88 1C 09 C2 */	lbz r0, 0x9c2(r28)
/* 80C36AA4  28 00 00 00 */	cmplwi r0, 0
/* 80C36AA8  40 82 00 14 */	bne lbl_80C36ABC
/* 80C36AAC  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80C36AB0  38 80 00 00 */	li r4, 0
/* 80C36AB4  38 A0 04 00 */	li r5, 0x400
/* 80C36AB8  4B 63 A0 D8 */	b cLib_chaseAngleS__FPsss
lbl_80C36ABC:
/* 80C36ABC  80 7C 0A 58 */	lwz r3, 0xa58(r28)
/* 80C36AC0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C36AC4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C36AC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C36ACC  40 82 00 30 */	bne lbl_80C36AFC
/* 80C36AD0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80C36AD4  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80C36AD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C36ADC  38 7C 09 C4 */	addi r3, r28, 0x9c4
/* 80C36AE0  38 81 00 10 */	addi r4, r1, 0x10
/* 80C36AE4  38 A0 00 00 */	li r5, 0
/* 80C36AE8  38 C0 FF FF */	li r6, -1
/* 80C36AEC  81 9C 09 C4 */	lwz r12, 0x9c4(r28)
/* 80C36AF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C36AF4  7D 89 03 A6 */	mtctr r12
/* 80C36AF8  4E 80 04 21 */	bctrl 
lbl_80C36AFC:
/* 80C36AFC  38 61 00 44 */	addi r3, r1, 0x44
/* 80C36B00  38 80 FF FF */	li r4, -1
/* 80C36B04  4B 44 11 D8 */	b __dt__11dBgS_LinChkFv
/* 80C36B08  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C36B0C  4B 72 B7 18 */	b _restgpr_28
/* 80C36B10  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C36B14  7C 08 03 A6 */	mtlr r0
/* 80C36B18  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C36B1C  4E 80 00 20 */	blr 
