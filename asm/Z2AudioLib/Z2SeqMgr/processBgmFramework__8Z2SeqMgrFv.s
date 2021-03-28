lbl_802B33A8:
/* 802B33A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B33AC  7C 08 02 A6 */	mflr r0
/* 802B33B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B33B4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802B33B8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802B33BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B33C0  7C 7F 1B 78 */	mr r31, r3
/* 802B33C4  4B FF FA 79 */	bl fanfareFramework__8Z2SeqMgrFv
/* 802B33C8  7F E3 FB 78 */	mr r3, r31
/* 802B33CC  48 00 18 05 */	bl battleBgmFramework__8Z2SeqMgrFv
/* 802B33D0  7F E3 FB 78 */	mr r3, r31
/* 802B33D4  48 00 2A AD */	bl mbossBgmMuteProcess__8Z2SeqMgrFv
/* 802B33D8  7F E3 FB 78 */	mr r3, r31
/* 802B33DC  48 00 25 71 */	bl fieldBgmFramework__8Z2SeqMgrFv
/* 802B33E0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802B33E4  28 00 00 00 */	cmplwi r0, 0
/* 802B33E8  40 82 00 8C */	bne lbl_802B3474
/* 802B33EC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B33F0  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802B33F4  28 00 00 00 */	cmplwi r0, 0
/* 802B33F8  41 82 00 0C */	beq lbl_802B3404
/* 802B33FC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 802B3400  48 00 00 08 */	b lbl_802B3408
lbl_802B3404:
/* 802B3404  C0 1F 00 64 */	lfs f0, 0x64(r31)
lbl_802B3408:
/* 802B3408  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B340C  41 82 00 68 */	beq lbl_802B3474
/* 802B3410  88 0D 82 E1 */	lbz r0, struct_80450860+0x1(r13)
/* 802B3414  28 00 00 00 */	cmplwi r0, 0
/* 802B3418  41 82 00 40 */	beq lbl_802B3458
/* 802B341C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 802B3420  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802B3424  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B3428  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B342C  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802B3430  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3434  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3438  3C 00 43 30 */	lis r0, 0x4330
/* 802B343C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3440  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3444  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3448  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B344C  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802B3450  D0 7F 00 6C */	stfs f3, 0x6c(r31)
/* 802B3454  48 00 00 20 */	b lbl_802B3474
lbl_802B3458:
/* 802B3458  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B345C  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 802B3460  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B3464  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802B3468  38 00 00 00 */	li r0, 0
/* 802B346C  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802B3470  D0 1F 00 6C */	stfs f0, 0x6c(r31)
lbl_802B3474:
/* 802B3474  A8 7F 00 B8 */	lha r3, 0xb8(r31)
/* 802B3478  2C 03 FF FF */	cmpwi r3, -1
/* 802B347C  41 82 00 2C */	beq lbl_802B34A8
/* 802B3480  7C 60 07 35 */	extsh. r0, r3
/* 802B3484  40 81 00 10 */	ble lbl_802B3494
/* 802B3488  38 03 FF FF */	addi r0, r3, -1
/* 802B348C  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802B3490  48 00 00 AC */	b lbl_802B353C
lbl_802B3494:
/* 802B3494  7F E3 FB 78 */	mr r3, r31
/* 802B3498  4B FF C5 39 */	bl subBgmStopInner__8Z2SeqMgrFv
/* 802B349C  38 00 FF FF */	li r0, -1
/* 802B34A0  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802B34A4  48 00 00 98 */	b lbl_802B353C
lbl_802B34A8:
/* 802B34A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802B34AC  28 00 00 00 */	cmplwi r0, 0
/* 802B34B0  40 82 00 8C */	bne lbl_802B353C
/* 802B34B4  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B34B8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802B34BC  28 00 00 00 */	cmplwi r0, 0
/* 802B34C0  41 82 00 0C */	beq lbl_802B34CC
/* 802B34C4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 802B34C8  48 00 00 08 */	b lbl_802B34D0
lbl_802B34CC:
/* 802B34CC  C0 1F 00 14 */	lfs f0, 0x14(r31)
lbl_802B34D0:
/* 802B34D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B34D4  41 82 00 68 */	beq lbl_802B353C
/* 802B34D8  88 0D 82 E1 */	lbz r0, struct_80450860+0x1(r13)
/* 802B34DC  28 00 00 00 */	cmplwi r0, 0
/* 802B34E0  41 82 00 40 */	beq lbl_802B3520
/* 802B34E4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802B34E8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802B34EC  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B34F0  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B34F4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802B34F8  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B34FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3500  3C 00 43 30 */	lis r0, 0x4330
/* 802B3504  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3508  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B350C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3510  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3514  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 802B3518  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 802B351C  48 00 00 20 */	b lbl_802B353C
lbl_802B3520:
/* 802B3520  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B3524  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802B3528  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B352C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 802B3530  38 00 00 00 */	li r0, 0
/* 802B3534  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802B3538  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_802B353C:
/* 802B353C  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B3540  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802B3544  41 82 00 E8 */	beq lbl_802B362C
/* 802B3548  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B354C  48 00 31 E9 */	bl checkDayTime__11Z2StatusMgrFv
/* 802B3550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B3554  41 82 00 68 */	beq lbl_802B35BC
/* 802B3558  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B355C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 802B3560  28 00 00 00 */	cmplwi r0, 0
/* 802B3564  41 82 00 0C */	beq lbl_802B3570
/* 802B3568  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 802B356C  48 00 00 08 */	b lbl_802B3574
lbl_802B3570:
/* 802B3570  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
lbl_802B3574:
/* 802B3574  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B3578  41 82 00 44 */	beq lbl_802B35BC
/* 802B357C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 802B3580  38 00 02 58 */	li r0, 0x258
/* 802B3584  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 802B3588  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B358C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3590  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 802B3594  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3598  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B359C  3C 00 43 30 */	lis r0, 0x4330
/* 802B35A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B35A4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B35A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B35AC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B35B0  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 802B35B4  D0 7F 00 AC */	stfs f3, 0xac(r31)
/* 802B35B8  48 00 00 74 */	b lbl_802B362C
lbl_802B35BC:
/* 802B35BC  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B35C0  48 00 31 75 */	bl checkDayTime__11Z2StatusMgrFv
/* 802B35C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B35C8  40 82 00 64 */	bne lbl_802B362C
/* 802B35CC  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B35D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 802B35D4  28 00 00 00 */	cmplwi r0, 0
/* 802B35D8  41 82 00 0C */	beq lbl_802B35E4
/* 802B35DC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 802B35E0  48 00 00 08 */	b lbl_802B35E8
lbl_802B35E4:
/* 802B35E4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
lbl_802B35E8:
/* 802B35E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B35EC  41 82 00 40 */	beq lbl_802B362C
/* 802B35F0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 802B35F4  38 00 02 58 */	li r0, 0x258
/* 802B35F8  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 802B35FC  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B3600  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3604  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 802B3608  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B360C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3610  3C 00 43 30 */	lis r0, 0x4330
/* 802B3614  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3618  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B361C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3620  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3624  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 802B3628  D0 7F 00 AC */	stfs f3, 0xac(r31)
lbl_802B362C:
/* 802B362C  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B3630  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802B3634  41 82 04 44 */	beq lbl_802B3A78
/* 802B3638  80 CD 86 00 */	lwz r6, data_80450B80(r13)
/* 802B363C  88 06 00 1D */	lbz r0, 0x1d(r6)
/* 802B3640  28 00 00 00 */	cmplwi r0, 0
/* 802B3644  41 82 04 34 */	beq lbl_802B3A78
/* 802B3648  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B364C  28 03 00 00 */	cmplwi r3, 0
/* 802B3650  41 82 04 28 */	beq lbl_802B3A78
/* 802B3654  80 63 00 04 */	lwz r3, 4(r3)
/* 802B3658  28 03 00 00 */	cmplwi r3, 0
/* 802B365C  41 82 04 1C */	beq lbl_802B3A78
/* 802B3660  C0 23 00 04 */	lfs f1, 4(r3)
/* 802B3664  80 7F 00 00 */	lwz r3, 0(r31)
/* 802B3668  28 03 00 00 */	cmplwi r3, 0
/* 802B366C  41 82 00 10 */	beq lbl_802B367C
/* 802B3670  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 802B3674  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802B3678  48 00 00 08 */	b lbl_802B3680
lbl_802B367C:
/* 802B367C  38 A0 FF FF */	li r5, -1
lbl_802B3680:
/* 802B3680  3C 60 01 00 */	lis r3, 0x0100 /* 0x01000042@ha */
/* 802B3684  38 03 00 42 */	addi r0, r3, 0x0042 /* 0x01000042@l */
/* 802B3688  7C 05 00 00 */	cmpw r5, r0
/* 802B368C  41 82 01 30 */	beq lbl_802B37BC
/* 802B3690  40 80 00 4C */	bge lbl_802B36DC
/* 802B3694  38 03 00 35 */	addi r0, r3, 0x35
/* 802B3698  7C 05 00 00 */	cmpw r5, r0
/* 802B369C  41 82 01 20 */	beq lbl_802B37BC
/* 802B36A0  40 80 00 2C */	bge lbl_802B36CC
/* 802B36A4  38 03 00 1A */	addi r0, r3, 0x1a
/* 802B36A8  7C 05 00 00 */	cmpw r5, r0
/* 802B36AC  41 82 00 60 */	beq lbl_802B370C
/* 802B36B0  40 80 03 C8 */	bge lbl_802B3A78
/* 802B36B4  38 03 00 02 */	addi r0, r3, 2
/* 802B36B8  7C 05 00 00 */	cmpw r5, r0
/* 802B36BC  40 80 03 BC */	bge lbl_802B3A78
/* 802B36C0  7C 05 18 00 */	cmpw r5, r3
/* 802B36C4  40 80 00 F8 */	bge lbl_802B37BC
/* 802B36C8  48 00 03 B0 */	b lbl_802B3A78
lbl_802B36CC:
/* 802B36CC  38 03 00 3F */	addi r0, r3, 0x3f
/* 802B36D0  7C 05 00 00 */	cmpw r5, r0
/* 802B36D4  41 82 03 90 */	beq lbl_802B3A64
/* 802B36D8  48 00 03 A0 */	b lbl_802B3A78
lbl_802B36DC:
/* 802B36DC  38 83 00 5A */	addi r4, r3, 0x5a
/* 802B36E0  7C 05 20 00 */	cmpw r5, r4
/* 802B36E4  41 82 00 D8 */	beq lbl_802B37BC
/* 802B36E8  40 80 00 14 */	bge lbl_802B36FC
/* 802B36EC  38 03 00 4A */	addi r0, r3, 0x4a
/* 802B36F0  7C 05 00 00 */	cmpw r5, r0
/* 802B36F4  41 82 01 98 */	beq lbl_802B388C
/* 802B36F8  48 00 03 80 */	b lbl_802B3A78
lbl_802B36FC:
/* 802B36FC  38 03 00 65 */	addi r0, r3, 0x65
/* 802B3700  7C 05 00 00 */	cmpw r5, r0
/* 802B3704  41 82 00 40 */	beq lbl_802B3744
/* 802B3708  48 00 03 70 */	b lbl_802B3A78
lbl_802B370C:
/* 802B370C  C0 4D 82 F4 */	lfs f2, sDeathMtTop(r13)
/* 802B3710  C0 6D 82 F0 */	lfs f3, sDeathMtBottom(r13)
/* 802B3714  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B3718  C0 A2 BF 9C */	lfs f5, lit_3373(r2)
/* 802B371C  C0 C2 BF 98 */	lfs f6, lit_3372(r2)
/* 802B3720  38 60 00 00 */	li r3, 0
/* 802B3724  4B FF 5F D1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802B3728  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B372C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B3730  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3734  38 00 00 00 */	li r0, 0
/* 802B3738  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B373C  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B3740  48 00 03 38 */	b lbl_802B3A78
lbl_802B3744:
/* 802B3744  C0 42 BF F0 */	lfs f2, lit_5673(r2)
/* 802B3748  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802B374C  40 80 00 34 */	bge lbl_802B3780
/* 802B3750  7F E3 FB 78 */	mr r3, r31
/* 802B3754  38 A0 00 96 */	li r5, 0x96
/* 802B3758  38 C0 00 00 */	li r6, 0
/* 802B375C  4B FF B8 B5 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 802B3760  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B3764  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B3768  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B376C  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3770  38 00 00 00 */	li r0, 0
/* 802B3774  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3778  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B377C  48 00 02 FC */	b lbl_802B3A78
lbl_802B3780:
/* 802B3780  C0 62 BF F4 */	lfs f3, lit_5674(r2)
/* 802B3784  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802B3788  40 80 02 F0 */	bge lbl_802B3A78
/* 802B378C  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B3790  C0 A2 BF 9C */	lfs f5, lit_3373(r2)
/* 802B3794  C0 C2 BF 98 */	lfs f6, lit_3372(r2)
/* 802B3798  38 60 00 01 */	li r3, 1
/* 802B379C  4B FF 5F 59 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802B37A0  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B37A4  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B37A8  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B37AC  38 00 00 00 */	li r0, 0
/* 802B37B0  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B37B4  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B37B8  48 00 02 C0 */	b lbl_802B3A78
lbl_802B37BC:
/* 802B37BC  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B37C0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802B37C4  C0 4D 82 F8 */	lfs f2, sUnderWaterDepthMax(r13)
/* 802B37C8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802B37CC  40 81 00 20 */	ble lbl_802B37EC
/* 802B37D0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B37D4  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B37D8  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B37DC  38 00 00 00 */	li r0, 0
/* 802B37E0  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B37E4  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B37E8  48 00 02 90 */	b lbl_802B3A78
lbl_802B37EC:
/* 802B37EC  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B37F0  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802B37F4  40 81 00 34 */	ble lbl_802B3828
/* 802B37F8  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B37FC  C0 A2 BF F8 */	lfs f5, lit_5675(r2)
/* 802B3800  C0 C2 BF 98 */	lfs f6, lit_3372(r2)
/* 802B3804  38 60 00 01 */	li r3, 1
/* 802B3808  4B FF 5E ED */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802B380C  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B3810  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B3814  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3818  38 00 00 00 */	li r0, 0
/* 802B381C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3820  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B3824  48 00 02 54 */	b lbl_802B3A78
lbl_802B3828:
/* 802B3828  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B382C  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 802B3830  28 00 00 00 */	cmplwi r0, 0
/* 802B3834  41 82 00 0C */	beq lbl_802B3840
/* 802B3838  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 802B383C  48 00 00 08 */	b lbl_802B3844
lbl_802B3840:
/* 802B3840  C0 1F 00 84 */	lfs f0, 0x84(r31)
lbl_802B3844:
/* 802B3844  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B3848  41 82 02 30 */	beq lbl_802B3A78
/* 802B384C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 802B3850  38 00 00 1E */	li r0, 0x1e
/* 802B3854  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3858  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B385C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3860  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 802B3864  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3868  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B386C  3C 00 43 30 */	lis r0, 0x4330
/* 802B3870  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3874  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3878  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B387C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3880  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3884  D0 7F 00 8C */	stfs f3, 0x8c(r31)
/* 802B3888  48 00 01 F0 */	b lbl_802B3A78
lbl_802B388C:
/* 802B388C  88 66 00 0C */	lbz r3, 0xc(r6)
/* 802B3890  7C 60 07 75 */	extsb. r0, r3
/* 802B3894  40 82 00 8C */	bne lbl_802B3920
/* 802B3898  C0 42 BF FC */	lfs f2, lit_5676(r2)
/* 802B389C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802B38A0  40 81 00 24 */	ble lbl_802B38C4
/* 802B38A4  C0 02 BF C8 */	lfs f0, lit_4732(r2)
/* 802B38A8  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B38AC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B38B0  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B38B4  38 00 00 00 */	li r0, 0
/* 802B38B8  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B38BC  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B38C0  48 00 01 B8 */	b lbl_802B3A78
lbl_802B38C4:
/* 802B38C4  C0 62 C0 00 */	lfs f3, lit_5677(r2)
/* 802B38C8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802B38CC  40 81 00 34 */	ble lbl_802B3900
/* 802B38D0  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B38D4  FC A0 20 90 */	fmr f5, f4
/* 802B38D8  C0 C2 BF 98 */	lfs f6, lit_3372(r2)
/* 802B38DC  38 60 00 00 */	li r3, 0
/* 802B38E0  4B FF 5E 15 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802B38E4  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B38E8  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B38EC  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B38F0  38 00 00 00 */	li r0, 0
/* 802B38F4  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B38F8  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B38FC  48 00 01 7C */	b lbl_802B3A78
lbl_802B3900:
/* 802B3900  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B3904  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B3908  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B390C  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3910  38 00 00 00 */	li r0, 0
/* 802B3914  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3918  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B391C  48 00 01 5C */	b lbl_802B3A78
lbl_802B3920:
/* 802B3920  7C 60 07 74 */	extsb r0, r3
/* 802B3924  2C 00 00 01 */	cmpwi r0, 1
/* 802B3928  40 82 00 B0 */	bne lbl_802B39D8
/* 802B392C  C0 02 C0 04 */	lfs f0, lit_5678(r2)
/* 802B3930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B3934  40 81 00 44 */	ble lbl_802B3978
/* 802B3938  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 802B393C  38 00 00 1E */	li r0, 0x1e
/* 802B3940  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3944  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B3948  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B394C  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 802B3950  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3954  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3958  3C 00 43 30 */	lis r0, 0x4330
/* 802B395C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3960  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3964  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3968  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B396C  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3970  D0 7F 00 8C */	stfs f3, 0x8c(r31)
/* 802B3974  48 00 01 04 */	b lbl_802B3A78
lbl_802B3978:
/* 802B3978  C0 62 C0 08 */	lfs f3, lit_5679(r2)
/* 802B397C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802B3980  40 81 00 38 */	ble lbl_802B39B8
/* 802B3984  C0 42 C0 0C */	lfs f2, lit_5680(r2)
/* 802B3988  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B398C  C0 A2 BF 9C */	lfs f5, lit_3373(r2)
/* 802B3990  C0 C2 BF 98 */	lfs f6, lit_3372(r2)
/* 802B3994  38 60 00 00 */	li r3, 0
/* 802B3998  4B FF 5D 5D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802B399C  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B39A0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B39A4  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B39A8  38 00 00 00 */	li r0, 0
/* 802B39AC  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B39B0  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B39B4  48 00 00 C4 */	b lbl_802B3A78
lbl_802B39B8:
/* 802B39B8  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B39BC  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B39C0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B39C4  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B39C8  38 00 00 00 */	li r0, 0
/* 802B39CC  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B39D0  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B39D4  48 00 00 A4 */	b lbl_802B3A78
lbl_802B39D8:
/* 802B39D8  2C 00 00 02 */	cmpwi r0, 2
/* 802B39DC  40 82 00 9C */	bne lbl_802B3A78
/* 802B39E0  C0 42 C0 10 */	lfs f2, lit_5681(r2)
/* 802B39E4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802B39E8  40 81 00 20 */	ble lbl_802B3A08
/* 802B39EC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B39F0  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B39F4  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B39F8  38 00 00 00 */	li r0, 0
/* 802B39FC  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3A00  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B3A04  48 00 00 74 */	b lbl_802B3A78
lbl_802B3A08:
/* 802B3A08  C0 62 BF FC */	lfs f3, lit_5676(r2)
/* 802B3A0C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802B3A10  40 81 00 34 */	ble lbl_802B3A44
/* 802B3A14  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B3A18  C0 A2 BF 9C */	lfs f5, lit_3373(r2)
/* 802B3A1C  FC C0 20 90 */	fmr f6, f4
/* 802B3A20  38 60 00 00 */	li r3, 0
/* 802B3A24  4B FF 5C D1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802B3A28  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B3A2C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B3A30  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3A34  38 00 00 00 */	li r0, 0
/* 802B3A38  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3A3C  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B3A40  48 00 00 38 */	b lbl_802B3A78
lbl_802B3A44:
/* 802B3A44  C0 02 BF C8 */	lfs f0, lit_4732(r2)
/* 802B3A48  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 802B3A4C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B3A50  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 802B3A54  38 00 00 00 */	li r0, 0
/* 802B3A58  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3A5C  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 802B3A60  48 00 00 18 */	b lbl_802B3A78
lbl_802B3A64:
/* 802B3A64  7F E3 FB 78 */	mr r3, r31
/* 802B3A68  FC 00 08 1E */	fctiwz f0, f1
/* 802B3A6C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 802B3A70  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 802B3A74  4B FF C5 19 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_802B3A78:
/* 802B3A78  88 7F 00 BB */	lbz r3, 0xbb(r31)
/* 802B3A7C  28 03 00 00 */	cmplwi r3, 0
/* 802B3A80  41 82 00 CC */	beq lbl_802B3B4C
/* 802B3A84  38 03 FF FF */	addi r0, r3, -1
/* 802B3A88  98 1F 00 BB */	stb r0, 0xbb(r31)
/* 802B3A8C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B3A90  28 03 00 00 */	cmplwi r3, 0
/* 802B3A94  41 82 00 10 */	beq lbl_802B3AA4
/* 802B3A98  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B3A9C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B3AA0  48 00 00 08 */	b lbl_802B3AA8
lbl_802B3AA4:
/* 802B3AA4  38 60 FF FF */	li r3, -1
lbl_802B3AA8:
/* 802B3AA8  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B3AAC  28 00 00 27 */	cmplwi r0, 0x27
/* 802B3AB0  40 82 00 9C */	bne lbl_802B3B4C
/* 802B3AB4  88 1F 00 BB */	lbz r0, 0xbb(r31)
/* 802B3AB8  28 00 00 3C */	cmplwi r0, 0x3c
/* 802B3ABC  40 82 00 4C */	bne lbl_802B3B08
/* 802B3AC0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 802B3AC4  38 00 00 3C */	li r0, 0x3c
/* 802B3AC8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B3ACC  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B3AD0  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3AD4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802B3AD8  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3ADC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3AE0  3C 00 43 30 */	lis r0, 0x4330
/* 802B3AE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3AE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3AEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3AF0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3AF4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802B3AF8  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 802B3AFC  38 00 00 00 */	li r0, 0
/* 802B3B00  98 1F 00 BB */	stb r0, 0xbb(r31)
/* 802B3B04  48 00 00 48 */	b lbl_802B3B4C
lbl_802B3B08:
/* 802B3B08  28 00 00 00 */	cmplwi r0, 0
/* 802B3B0C  40 82 00 40 */	bne lbl_802B3B4C
/* 802B3B10  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 802B3B14  38 00 00 1E */	li r0, 0x1e
/* 802B3B18  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B3B1C  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B3B20  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3B24  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802B3B28  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3B2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3B30  3C 00 43 30 */	lis r0, 0x4330
/* 802B3B34  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3B38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3B3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3B40  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3B44  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802B3B48  D0 7F 00 2C */	stfs f3, 0x2c(r31)
lbl_802B3B4C:
/* 802B3B4C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 802B3B50  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802B3B54  28 03 00 01 */	cmplwi r3, 1
/* 802B3B58  40 81 00 18 */	ble lbl_802B3B70
/* 802B3B5C  38 03 FF FF */	addi r0, r3, -1
/* 802B3B60  90 1F 00 80 */	stw r0, 0x80(r31)
/* 802B3B64  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 802B3B68  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3B6C  48 00 00 14 */	b lbl_802B3B80
lbl_802B3B70:
/* 802B3B70  40 82 00 10 */	bne lbl_802B3B80
/* 802B3B74  38 00 00 00 */	li r0, 0
/* 802B3B78  90 1F 00 80 */	stw r0, 0x80(r31)
/* 802B3B7C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
lbl_802B3B80:
/* 802B3B80  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 802B3B84  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 802B3B88  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802B3B8C  28 03 00 01 */	cmplwi r3, 1
/* 802B3B90  40 81 00 18 */	ble lbl_802B3BA8
/* 802B3B94  38 03 FF FF */	addi r0, r3, -1
/* 802B3B98  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802B3B9C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 802B3BA0  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3BA4  48 00 00 14 */	b lbl_802B3BB8
lbl_802B3BA8:
/* 802B3BA8  40 82 00 10 */	bne lbl_802B3BB8
/* 802B3BAC  38 00 00 00 */	li r0, 0
/* 802B3BB0  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802B3BB4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
lbl_802B3BB8:
/* 802B3BB8  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802B3BBC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 802B3BC0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802B3BC4  28 03 00 01 */	cmplwi r3, 1
/* 802B3BC8  40 81 00 18 */	ble lbl_802B3BE0
/* 802B3BCC  38 03 FF FF */	addi r0, r3, -1
/* 802B3BD0  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B3BD4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 802B3BD8  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3BDC  48 00 00 14 */	b lbl_802B3BF0
lbl_802B3BE0:
/* 802B3BE0  40 82 00 10 */	bne lbl_802B3BF0
/* 802B3BE4  38 00 00 00 */	li r0, 0
/* 802B3BE8  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B3BEC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
lbl_802B3BF0:
/* 802B3BF0  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 802B3BF4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 802B3BF8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802B3BFC  28 03 00 01 */	cmplwi r3, 1
/* 802B3C00  40 81 00 18 */	ble lbl_802B3C18
/* 802B3C04  38 03 FF FF */	addi r0, r3, -1
/* 802B3C08  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802B3C0C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 802B3C10  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3C14  48 00 00 14 */	b lbl_802B3C28
lbl_802B3C18:
/* 802B3C18  40 82 00 10 */	bne lbl_802B3C28
/* 802B3C1C  38 00 00 00 */	li r0, 0
/* 802B3C20  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802B3C24  C0 3F 00 4C */	lfs f1, 0x4c(r31)
lbl_802B3C28:
/* 802B3C28  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 802B3C2C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802B3C30  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802B3C34  28 03 00 01 */	cmplwi r3, 1
/* 802B3C38  40 81 00 18 */	ble lbl_802B3C50
/* 802B3C3C  38 03 FF FF */	addi r0, r3, -1
/* 802B3C40  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802B3C44  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 802B3C48  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3C4C  48 00 00 14 */	b lbl_802B3C60
lbl_802B3C50:
/* 802B3C50  40 82 00 10 */	bne lbl_802B3C60
/* 802B3C54  38 00 00 00 */	li r0, 0
/* 802B3C58  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802B3C5C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
lbl_802B3C60:
/* 802B3C60  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 802B3C64  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 802B3C68  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802B3C6C  28 03 00 01 */	cmplwi r3, 1
/* 802B3C70  40 81 00 18 */	ble lbl_802B3C88
/* 802B3C74  38 03 FF FF */	addi r0, r3, -1
/* 802B3C78  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B3C7C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802B3C80  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3C84  48 00 00 14 */	b lbl_802B3C98
lbl_802B3C88:
/* 802B3C88  40 82 00 10 */	bne lbl_802B3C98
/* 802B3C8C  38 00 00 00 */	li r0, 0
/* 802B3C90  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B3C94  C0 3F 00 2C */	lfs f1, 0x2c(r31)
lbl_802B3C98:
/* 802B3C98  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 802B3C9C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 802B3CA0  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802B3CA4  28 03 00 01 */	cmplwi r3, 1
/* 802B3CA8  40 81 00 18 */	ble lbl_802B3CC0
/* 802B3CAC  38 03 FF FF */	addi r0, r3, -1
/* 802B3CB0  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802B3CB4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 802B3CB8  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3CBC  48 00 00 14 */	b lbl_802B3CD0
lbl_802B3CC0:
/* 802B3CC0  40 82 00 10 */	bne lbl_802B3CD0
/* 802B3CC4  38 00 00 00 */	li r0, 0
/* 802B3CC8  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802B3CCC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
lbl_802B3CD0:
/* 802B3CD0  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 802B3CD4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 802B3CD8  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 802B3CDC  28 03 00 01 */	cmplwi r3, 1
/* 802B3CE0  40 81 00 18 */	ble lbl_802B3CF8
/* 802B3CE4  38 03 FF FF */	addi r0, r3, -1
/* 802B3CE8  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3CEC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 802B3CF0  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3CF4  48 00 00 14 */	b lbl_802B3D08
lbl_802B3CF8:
/* 802B3CF8  40 82 00 10 */	bne lbl_802B3D08
/* 802B3CFC  38 00 00 00 */	li r0, 0
/* 802B3D00  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802B3D04  C0 3F 00 8C */	lfs f1, 0x8c(r31)
lbl_802B3D08:
/* 802B3D08  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 802B3D0C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 802B3D10  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 802B3D14  28 03 00 01 */	cmplwi r3, 1
/* 802B3D18  40 81 00 18 */	ble lbl_802B3D30
/* 802B3D1C  38 03 FF FF */	addi r0, r3, -1
/* 802B3D20  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 802B3D24  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 802B3D28  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3D2C  48 00 00 14 */	b lbl_802B3D40
lbl_802B3D30:
/* 802B3D30  40 82 00 10 */	bne lbl_802B3D40
/* 802B3D34  38 00 00 00 */	li r0, 0
/* 802B3D38  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 802B3D3C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
lbl_802B3D40:
/* 802B3D40  D0 3F 00 94 */	stfs f1, 0x94(r31)
/* 802B3D44  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 802B3D48  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 802B3D4C  28 03 00 01 */	cmplwi r3, 1
/* 802B3D50  40 81 00 18 */	ble lbl_802B3D68
/* 802B3D54  38 03 FF FF */	addi r0, r3, -1
/* 802B3D58  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 802B3D5C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 802B3D60  EC 21 00 2A */	fadds f1, f1, f0
/* 802B3D64  48 00 00 14 */	b lbl_802B3D78
lbl_802B3D68:
/* 802B3D68  40 82 00 10 */	bne lbl_802B3D78
/* 802B3D6C  38 00 00 00 */	li r0, 0
/* 802B3D70  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 802B3D74  C0 3F 00 AC */	lfs f1, 0xac(r31)
lbl_802B3D78:
/* 802B3D78  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 802B3D7C  C0 9F 00 B4 */	lfs f4, 0xb4(r31)
/* 802B3D80  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 802B3D84  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 802B3D88  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 802B3D8C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 802B3D90  EC 01 00 32 */	fmuls f0, f1, f0
/* 802B3D94  EC 02 00 32 */	fmuls f0, f2, f0
/* 802B3D98  EC 03 00 32 */	fmuls f0, f3, f0
/* 802B3D9C  EF E4 00 32 */	fmuls f31, f4, f0
/* 802B3DA0  80 9F 00 00 */	lwz r4, 0(r31)
/* 802B3DA4  28 04 00 00 */	cmplwi r4, 0
/* 802B3DA8  41 82 00 5C */	beq lbl_802B3E04
/* 802B3DAC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B3DB0  41 82 00 10 */	beq lbl_802B3DC0
/* 802B3DB4  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802B3DB8  90 61 00 08 */	stw r3, 8(r1)
/* 802B3DBC  48 00 00 08 */	b lbl_802B3DC4
lbl_802B3DC0:
/* 802B3DC0  38 60 FF FF */	li r3, -1
lbl_802B3DC4:
/* 802B3DC4  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B3DC8  28 00 00 13 */	cmplwi r0, 0x13
/* 802B3DCC  41 82 00 2C */	beq lbl_802B3DF8
/* 802B3DD0  C0 9F 00 A4 */	lfs f4, 0xa4(r31)
/* 802B3DD4  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 802B3DD8  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 802B3DDC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802B3DE0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802B3DE4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802B3DE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 802B3DEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 802B3DF0  EC 03 00 32 */	fmuls f0, f3, f0
/* 802B3DF4  EC 24 00 32 */	fmuls f1, f4, f0
lbl_802B3DF8:
/* 802B3DF8  38 64 00 48 */	addi r3, r4, 0x48
/* 802B3DFC  38 80 00 00 */	li r4, 0
/* 802B3E00  4B FE EF B5 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802B3E04:
/* 802B3E04  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B3E08  28 03 00 00 */	cmplwi r3, 0
/* 802B3E0C  41 82 00 20 */	beq lbl_802B3E2C
/* 802B3E10  38 63 00 48 */	addi r3, r3, 0x48
/* 802B3E14  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 802B3E18  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802B3E1C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 802B3E20  EC 21 00 32 */	fmuls f1, f1, f0
/* 802B3E24  38 80 00 00 */	li r4, 0
/* 802B3E28  4B FE EF 8D */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802B3E2C:
/* 802B3E2C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802B3E30  28 03 00 00 */	cmplwi r3, 0
/* 802B3E34  41 82 00 20 */	beq lbl_802B3E54
/* 802B3E38  38 63 00 48 */	addi r3, r3, 0x48
/* 802B3E3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802B3E40  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802B3E44  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802B3E48  EC 21 00 32 */	fmuls f1, f1, f0
/* 802B3E4C  38 80 00 00 */	li r4, 0
/* 802B3E50  4B FE EF 65 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802B3E54:
/* 802B3E54  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 802B3E58  38 00 00 1E */	li r0, 0x1e
/* 802B3E5C  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 802B3E60  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B3E64  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3E68  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 802B3E6C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3E70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3E74  3C 00 43 30 */	lis r0, 0x4330
/* 802B3E78  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3E7C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3E80  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3E84  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3E88  D0 1F 00 98 */	stfs f0, 0x98(r31)
/* 802B3E8C  D0 7F 00 9C */	stfs f3, 0x9c(r31)
/* 802B3E90  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802B3E94  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802B3E98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B3E9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B3EA0  7C 08 03 A6 */	mtlr r0
/* 802B3EA4  38 21 00 40 */	addi r1, r1, 0x40
/* 802B3EA8  4E 80 00 20 */	blr 
