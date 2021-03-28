lbl_804E357C:
/* 804E357C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E3580  7C 08 02 A6 */	mflr r0
/* 804E3584  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E3588  39 61 00 40 */	addi r11, r1, 0x40
/* 804E358C  4B E7 EC 50 */	b _savegpr_29
/* 804E3590  7C 7D 1B 78 */	mr r29, r3
/* 804E3594  3C 60 80 4E */	lis r3, l_staff_name@ha
/* 804E3598  3B E3 4A 14 */	addi r31, r3, l_staff_name@l
/* 804E359C  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 804E35A0  4B B2 9E 88 */	b play__14mDoExt_baseAnmFv
/* 804E35A4  7C 7E 1B 78 */	mr r30, r3
/* 804E35A8  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 804E35AC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804E35B0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804E35B4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E35B8  40 82 00 38 */	bne lbl_804E35F0
/* 804E35BC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804E35C0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804E35C4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804E35C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E35CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804E35D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E35D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E35D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804E35DC  38 80 00 04 */	li r4, 4
/* 804E35E0  38 A0 00 0F */	li r5, 0xf
/* 804E35E4  38 C1 00 18 */	addi r6, r1, 0x18
/* 804E35E8  4B B8 C5 28 */	b StartQuake__12dVibration_cFii4cXyz
/* 804E35EC  48 00 01 8C */	b lbl_804E3778
lbl_804E35F0:
/* 804E35F0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804E35F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E35F8  40 82 01 80 */	bne lbl_804E3778
/* 804E35FC  4B FF E7 9D */	bl getNowLevel__Fv
/* 804E3600  2C 03 00 08 */	cmpwi r3, 8
/* 804E3604  41 82 00 2C */	beq lbl_804E3630
/* 804E3608  40 80 00 1C */	bge lbl_804E3624
/* 804E360C  2C 03 00 05 */	cmpwi r3, 5
/* 804E3610  41 82 01 1C */	beq lbl_804E372C
/* 804E3614  40 80 00 6C */	bge lbl_804E3680
/* 804E3618  2C 03 00 04 */	cmpwi r3, 4
/* 804E361C  40 80 00 64 */	bge lbl_804E3680
/* 804E3620  48 00 01 0C */	b lbl_804E372C
lbl_804E3624:
/* 804E3624  2C 03 00 0A */	cmpwi r3, 0xa
/* 804E3628  40 80 01 04 */	bge lbl_804E372C
/* 804E362C  48 00 00 54 */	b lbl_804E3680
lbl_804E3630:
/* 804E3630  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804E3634  7C 03 07 74 */	extsb r3, r0
/* 804E3638  4B B4 9A 34 */	b dComIfGp_getReverb__Fi
/* 804E363C  7C 67 1B 78 */	mr r7, r3
/* 804E3640  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080219@ha */
/* 804E3644  38 03 02 19 */	addi r0, r3, 0x0219 /* 0x00080219@l */
/* 804E3648  90 01 00 08 */	stw r0, 8(r1)
/* 804E364C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E3650  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E3654  80 63 00 00 */	lwz r3, 0(r3)
/* 804E3658  38 81 00 08 */	addi r4, r1, 8
/* 804E365C  38 BD 05 38 */	addi r5, r29, 0x538
/* 804E3660  38 C0 00 00 */	li r6, 0
/* 804E3664  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3668  FC 40 08 90 */	fmr f2, f1
/* 804E366C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E3670  FC 80 18 90 */	fmr f4, f3
/* 804E3674  39 00 00 00 */	li r8, 0
/* 804E3678  4B DC 83 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E367C  48 00 00 FC */	b lbl_804E3778
lbl_804E3680:
/* 804E3680  88 1D 05 9B */	lbz r0, 0x59b(r29)
/* 804E3684  28 00 00 00 */	cmplwi r0, 0
/* 804E3688  41 82 00 54 */	beq lbl_804E36DC
/* 804E368C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804E3690  7C 03 07 74 */	extsb r3, r0
/* 804E3694  4B B4 99 D8 */	b dComIfGp_getReverb__Fi
/* 804E3698  7C 67 1B 78 */	mr r7, r3
/* 804E369C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008019A@ha */
/* 804E36A0  38 03 01 9A */	addi r0, r3, 0x019A /* 0x0008019A@l */
/* 804E36A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E36A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E36AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E36B0  80 63 00 00 */	lwz r3, 0(r3)
/* 804E36B4  38 81 00 14 */	addi r4, r1, 0x14
/* 804E36B8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E36BC  38 C0 00 00 */	li r6, 0
/* 804E36C0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E36C4  FC 40 08 90 */	fmr f2, f1
/* 804E36C8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E36CC  FC 80 18 90 */	fmr f4, f3
/* 804E36D0  39 00 00 00 */	li r8, 0
/* 804E36D4  4B DC 82 B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E36D8  48 00 00 A0 */	b lbl_804E3778
lbl_804E36DC:
/* 804E36DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804E36E0  7C 03 07 74 */	extsb r3, r0
/* 804E36E4  4B B4 99 88 */	b dComIfGp_getReverb__Fi
/* 804E36E8  7C 67 1B 78 */	mr r7, r3
/* 804E36EC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080191@ha */
/* 804E36F0  38 03 01 91 */	addi r0, r3, 0x0191 /* 0x00080191@l */
/* 804E36F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E36F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E36FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E3700  80 63 00 00 */	lwz r3, 0(r3)
/* 804E3704  38 81 00 10 */	addi r4, r1, 0x10
/* 804E3708  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E370C  38 C0 00 00 */	li r6, 0
/* 804E3710  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3714  FC 40 08 90 */	fmr f2, f1
/* 804E3718  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E371C  FC 80 18 90 */	fmr f4, f3
/* 804E3720  39 00 00 00 */	li r8, 0
/* 804E3724  4B DC 82 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E3728  48 00 00 50 */	b lbl_804E3778
lbl_804E372C:
/* 804E372C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804E3730  7C 03 07 74 */	extsb r3, r0
/* 804E3734  4B B4 99 38 */	b dComIfGp_getReverb__Fi
/* 804E3738  7C 67 1B 78 */	mr r7, r3
/* 804E373C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B2@ha */
/* 804E3740  38 03 00 B2 */	addi r0, r3, 0x00B2 /* 0x000800B2@l */
/* 804E3744  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E3748  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E374C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E3750  80 63 00 00 */	lwz r3, 0(r3)
/* 804E3754  38 81 00 0C */	addi r4, r1, 0xc
/* 804E3758  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E375C  38 C0 00 00 */	li r6, 0
/* 804E3760  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3764  FC 40 08 90 */	fmr f2, f1
/* 804E3768  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E376C  FC 80 18 90 */	fmr f4, f3
/* 804E3770  39 00 00 00 */	li r8, 0
/* 804E3774  4B DC 82 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804E3778:
/* 804E3778  7F C3 F3 78 */	mr r3, r30
/* 804E377C  39 61 00 40 */	addi r11, r1, 0x40
/* 804E3780  4B E7 EA A8 */	b _restgpr_29
/* 804E3784  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E3788  7C 08 03 A6 */	mtlr r0
/* 804E378C  38 21 00 40 */	addi r1, r1, 0x40
/* 804E3790  4E 80 00 20 */	blr 
