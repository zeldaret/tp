lbl_805E3448:
/* 805E3448  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805E344C  7C 08 02 A6 */	mflr r0
/* 805E3450  90 01 00 94 */	stw r0, 0x94(r1)
/* 805E3454  39 61 00 90 */	addi r11, r1, 0x90
/* 805E3458  4B D7 ED 7D */	bl _savegpr_27
/* 805E345C  7C 7C 1B 78 */	mr r28, r3
/* 805E3460  3C 60 80 5F */	lis r3, lit_1109@ha /* 0x805ED6C0@ha */
/* 805E3464  3B C3 D6 C0 */	addi r30, r3, lit_1109@l /* 0x805ED6C0@l */
/* 805E3468  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805E346C  3B E3 D0 60 */	addi r31, r3, lit_3911@l /* 0x805ED060@l */
/* 805E3470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E3474  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E3478  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 805E347C  88 1C 05 C7 */	lbz r0, 0x5c7(r28)
/* 805E3480  2C 00 00 01 */	cmpwi r0, 1
/* 805E3484  41 82 00 B8 */	beq lbl_805E353C
/* 805E3488  40 80 00 10 */	bge lbl_805E3498
/* 805E348C  2C 00 00 00 */	cmpwi r0, 0
/* 805E3490  40 80 00 14 */	bge lbl_805E34A4
/* 805E3494  48 00 06 F0 */	b lbl_805E3B84
lbl_805E3498:
/* 805E3498  2C 00 00 03 */	cmpwi r0, 3
/* 805E349C  40 80 06 E8 */	bge lbl_805E3B84
/* 805E34A0  48 00 06 80 */	b lbl_805E3B20
lbl_805E34A4:
/* 805E34A4  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805E34A8  28 00 00 00 */	cmplwi r0, 0
/* 805E34AC  40 82 00 28 */	bne lbl_805E34D4
/* 805E34B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E34B4  4B C8 44 A1 */	bl cM_rndF__Ff
/* 805E34B8  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 805E34BC  EC 00 08 2A */	fadds f0, f0, f1
/* 805E34C0  FC 00 00 1E */	fctiwz f0, f0
/* 805E34C4  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 805E34C8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 805E34CC  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E34D0  48 00 00 50 */	b lbl_805E3520
lbl_805E34D4:
/* 805E34D4  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 805E34D8  4B C8 44 7D */	bl cM_rndF__Ff
/* 805E34DC  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 805E34E0  EC 00 08 2A */	fadds f0, f0, f1
/* 805E34E4  FC 00 00 1E */	fctiwz f0, f0
/* 805E34E8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 805E34EC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 805E34F0  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E34F4  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 805E34F8  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 805E34FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3500  40 81 00 14 */	ble lbl_805E3514
/* 805E3504  38 7C 0E 4C */	addi r3, r28, 0xe4c
/* 805E3508  38 80 00 00 */	li r4, 0
/* 805E350C  4B CD E6 71 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 805E3510  48 00 00 10 */	b lbl_805E3520
lbl_805E3514:
/* 805E3514  38 7C 0E 4C */	addi r3, r28, 0xe4c
/* 805E3518  38 80 00 01 */	li r4, 1
/* 805E351C  4B CD E6 61 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_805E3520:
/* 805E3520  88 7C 05 C7 */	lbz r3, 0x5c7(r28)
/* 805E3524  38 03 00 01 */	addi r0, r3, 1
/* 805E3528  98 1C 05 C7 */	stb r0, 0x5c7(r28)
/* 805E352C  80 1C 0B D4 */	lwz r0, 0xbd4(r28)
/* 805E3530  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E3534  90 1C 0B D4 */	stw r0, 0xbd4(r28)
/* 805E3538  48 00 06 4C */	b lbl_805E3B84
lbl_805E353C:
/* 805E353C  A8 1C 05 DA */	lha r0, 0x5da(r28)
/* 805E3540  2C 00 00 00 */	cmpwi r0, 0
/* 805E3544  40 82 00 E8 */	bne lbl_805E362C
/* 805E3548  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E354C  4B C8 44 09 */	bl cM_rndF__Ff
/* 805E3550  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 805E3554  EC 00 08 2A */	fadds f0, f0, f1
/* 805E3558  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 805E355C  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 805E3560  4B C8 43 F5 */	bl cM_rndF__Ff
/* 805E3564  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 805E3568  EC 00 08 2A */	fadds f0, f0, f1
/* 805E356C  FC 00 00 1E */	fctiwz f0, f0
/* 805E3570  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 805E3574  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 805E3578  B0 1C 05 DA */	sth r0, 0x5da(r28)
/* 805E357C  38 61 00 4C */	addi r3, r1, 0x4c
/* 805E3580  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E3584  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805E3588  4B C8 35 AD */	bl __mi__4cXyzCFRC3Vec
/* 805E358C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E3590  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E3594  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805E3598  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E359C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805E35A0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805E35A4  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805E35A8  28 00 00 03 */	cmplwi r0, 3
/* 805E35AC  40 82 00 30 */	bne lbl_805E35DC
/* 805E35B0  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 805E35B4  4B C8 43 D9 */	bl cM_rndFX__Ff
/* 805E35B8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E35BC  EC 00 08 2A */	fadds f0, f0, f1
/* 805E35C0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E35C4  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 805E35C8  4B C8 43 C5 */	bl cM_rndFX__Ff
/* 805E35CC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805E35D0  EC 00 08 2A */	fadds f0, f0, f1
/* 805E35D4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805E35D8  48 00 00 3C */	b lbl_805E3614
lbl_805E35DC:
/* 805E35DC  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 805E35E0  4B C8 43 AD */	bl cM_rndFX__Ff
/* 805E35E4  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 805E35E8  EC 20 08 2A */	fadds f1, f0, f1
/* 805E35EC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E35F0  EC 00 08 2A */	fadds f0, f0, f1
/* 805E35F4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E35F8  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 805E35FC  4B C8 43 91 */	bl cM_rndFX__Ff
/* 805E3600  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 805E3604  EC 20 08 2A */	fadds f1, f0, f1
/* 805E3608  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805E360C  EC 00 08 2A */	fadds f0, f0, f1
/* 805E3610  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_805E3614:
/* 805E3614  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805E3618  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 805E361C  4B C8 40 59 */	bl cM_atan2s__Fff
/* 805E3620  B0 7C 05 BA */	sth r3, 0x5ba(r28)
/* 805E3624  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E3628  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_805E362C:
/* 805E362C  A8 1C 05 DC */	lha r0, 0x5dc(r28)
/* 805E3630  2C 00 00 00 */	cmpwi r0, 0
/* 805E3634  40 82 01 18 */	bne lbl_805E374C
/* 805E3638  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 805E363C  4B C8 43 19 */	bl cM_rndF__Ff
/* 805E3640  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 805E3644  EC 00 08 2A */	fadds f0, f0, f1
/* 805E3648  FC 00 00 1E */	fctiwz f0, f0
/* 805E364C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 805E3650  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 805E3654  B0 1C 05 DC */	sth r0, 0x5dc(r28)
/* 805E3658  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E365C  4B C8 43 31 */	bl cM_rndFX__Ff
/* 805E3660  D0 3C 05 C0 */	stfs f1, 0x5c0(r28)
/* 805E3664  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805E3668  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 805E366C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3670  40 80 00 0C */	bge lbl_805E367C
/* 805E3674  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 805E3678  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
lbl_805E367C:
/* 805E367C  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805E3680  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805E3684  38 63 00 05 */	addi r3, r3, 5
/* 805E3688  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E368C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E3690  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 805E3694  4B D8 53 01 */	bl strcmp
/* 805E3698  2C 03 00 00 */	cmpwi r3, 0
/* 805E369C  40 82 00 5C */	bne lbl_805E36F8
/* 805E36A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E36A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E36A8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 805E36AC  2C 00 00 0F */	cmpwi r0, 0xf
/* 805E36B0  40 82 00 48 */	bne lbl_805E36F8
/* 805E36B4  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E36B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E36BC  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 805E36C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E36C4  40 81 00 34 */	ble lbl_805E36F8
/* 805E36C8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805E36CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E36D0  40 81 00 10 */	ble lbl_805E36E0
/* 805E36D4  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 805E36D8  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 805E36DC  48 00 00 58 */	b lbl_805E3734
lbl_805E36E0:
/* 805E36E0  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 805E36E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E36E8  40 80 00 4C */	bge lbl_805E3734
/* 805E36EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805E36F0  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 805E36F4  48 00 00 40 */	b lbl_805E3734
lbl_805E36F8:
/* 805E36F8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805E36FC  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E3700  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E3704  EC 21 00 28 */	fsubs f1, f1, f0
/* 805E3708  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 805E370C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3710  40 80 00 10 */	bge lbl_805E3720
/* 805E3714  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805E3718  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 805E371C  48 00 00 18 */	b lbl_805E3734
lbl_805E3720:
/* 805E3720  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 805E3724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3728  40 81 00 0C */	ble lbl_805E3734
/* 805E372C  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 805E3730  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
lbl_805E3734:
/* 805E3734  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E3738  C0 3C 05 C0 */	lfs f1, 0x5c0(r28)
/* 805E373C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 805E3740  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E3744  EC 02 00 2A */	fadds f0, f2, f0
/* 805E3748  D0 1C 06 44 */	stfs f0, 0x644(r28)
lbl_805E374C:
/* 805E374C  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E3750  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E3754  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E3758  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E375C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E3760  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805E3764  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805E3768  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 805E376C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E3770  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E3774  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805E3778  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 805E377C  38 61 00 28 */	addi r3, r1, 0x28
/* 805E3780  38 81 00 34 */	addi r4, r1, 0x34
/* 805E3784  4B D6 3C 19 */	bl PSVECSquareDistance
/* 805E3788  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E378C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3790  40 81 00 58 */	ble lbl_805E37E8
/* 805E3794  FC 00 08 34 */	frsqrte f0, f1
/* 805E3798  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E379C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E37A0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E37A4  FC 00 00 32 */	fmul f0, f0, f0
/* 805E37A8  FC 01 00 32 */	fmul f0, f1, f0
/* 805E37AC  FC 03 00 28 */	fsub f0, f3, f0
/* 805E37B0  FC 02 00 32 */	fmul f0, f2, f0
/* 805E37B4  FC 44 00 32 */	fmul f2, f4, f0
/* 805E37B8  FC 00 00 32 */	fmul f0, f0, f0
/* 805E37BC  FC 01 00 32 */	fmul f0, f1, f0
/* 805E37C0  FC 03 00 28 */	fsub f0, f3, f0
/* 805E37C4  FC 02 00 32 */	fmul f0, f2, f0
/* 805E37C8  FC 44 00 32 */	fmul f2, f4, f0
/* 805E37CC  FC 00 00 32 */	fmul f0, f0, f0
/* 805E37D0  FC 01 00 32 */	fmul f0, f1, f0
/* 805E37D4  FC 03 00 28 */	fsub f0, f3, f0
/* 805E37D8  FC 02 00 32 */	fmul f0, f2, f0
/* 805E37DC  FC 21 00 32 */	fmul f1, f1, f0
/* 805E37E0  FC 20 08 18 */	frsp f1, f1
/* 805E37E4  48 00 00 88 */	b lbl_805E386C
lbl_805E37E8:
/* 805E37E8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E37EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E37F0  40 80 00 10 */	bge lbl_805E3800
/* 805E37F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E37F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805E37FC  48 00 00 70 */	b lbl_805E386C
lbl_805E3800:
/* 805E3800  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805E3804  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805E3808  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E380C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E3810  7C 03 00 00 */	cmpw r3, r0
/* 805E3814  41 82 00 14 */	beq lbl_805E3828
/* 805E3818  40 80 00 40 */	bge lbl_805E3858
/* 805E381C  2C 03 00 00 */	cmpwi r3, 0
/* 805E3820  41 82 00 20 */	beq lbl_805E3840
/* 805E3824  48 00 00 34 */	b lbl_805E3858
lbl_805E3828:
/* 805E3828  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E382C  41 82 00 0C */	beq lbl_805E3838
/* 805E3830  38 00 00 01 */	li r0, 1
/* 805E3834  48 00 00 28 */	b lbl_805E385C
lbl_805E3838:
/* 805E3838  38 00 00 02 */	li r0, 2
/* 805E383C  48 00 00 20 */	b lbl_805E385C
lbl_805E3840:
/* 805E3840  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E3844  41 82 00 0C */	beq lbl_805E3850
/* 805E3848  38 00 00 05 */	li r0, 5
/* 805E384C  48 00 00 10 */	b lbl_805E385C
lbl_805E3850:
/* 805E3850  38 00 00 03 */	li r0, 3
/* 805E3854  48 00 00 08 */	b lbl_805E385C
lbl_805E3858:
/* 805E3858  38 00 00 04 */	li r0, 4
lbl_805E385C:
/* 805E385C  2C 00 00 01 */	cmpwi r0, 1
/* 805E3860  40 82 00 0C */	bne lbl_805E386C
/* 805E3864  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E3868  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805E386C:
/* 805E386C  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 805E3870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3874  40 80 00 40 */	bge lbl_805E38B4
/* 805E3878  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E387C  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 805E3880  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 805E3884  28 00 00 00 */	cmplwi r0, 0
/* 805E3888  41 82 00 14 */	beq lbl_805E389C
/* 805E388C  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3890  38 03 B0 00 */	addi r0, r3, -20480
/* 805E3894  B0 1C 05 BA */	sth r0, 0x5ba(r28)
/* 805E3898  48 00 00 10 */	b lbl_805E38A8
lbl_805E389C:
/* 805E389C  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E38A0  38 03 50 00 */	addi r0, r3, 0x5000
/* 805E38A4  B0 1C 05 BA */	sth r0, 0x5ba(r28)
lbl_805E38A8:
/* 805E38A8  38 00 00 14 */	li r0, 0x14
/* 805E38AC  B0 1C 05 DA */	sth r0, 0x5da(r28)
/* 805E38B0  48 00 01 9C */	b lbl_805E3A4C
lbl_805E38B4:
/* 805E38B4  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E38B8  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E38BC  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E38C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E38C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E38C8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E38CC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805E38D0  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 805E38D4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E38D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E38DC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E38E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805E38E4  38 61 00 10 */	addi r3, r1, 0x10
/* 805E38E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 805E38EC  4B D6 3A B1 */	bl PSVECSquareDistance
/* 805E38F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E38F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E38F8  40 81 00 58 */	ble lbl_805E3950
/* 805E38FC  FC 00 08 34 */	frsqrte f0, f1
/* 805E3900  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E3904  FC 44 00 32 */	fmul f2, f4, f0
/* 805E3908  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E390C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E3910  FC 01 00 32 */	fmul f0, f1, f0
/* 805E3914  FC 03 00 28 */	fsub f0, f3, f0
/* 805E3918  FC 02 00 32 */	fmul f0, f2, f0
/* 805E391C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E3920  FC 00 00 32 */	fmul f0, f0, f0
/* 805E3924  FC 01 00 32 */	fmul f0, f1, f0
/* 805E3928  FC 03 00 28 */	fsub f0, f3, f0
/* 805E392C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E3930  FC 44 00 32 */	fmul f2, f4, f0
/* 805E3934  FC 00 00 32 */	fmul f0, f0, f0
/* 805E3938  FC 01 00 32 */	fmul f0, f1, f0
/* 805E393C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E3940  FC 02 00 32 */	fmul f0, f2, f0
/* 805E3944  FC 21 00 32 */	fmul f1, f1, f0
/* 805E3948  FC 20 08 18 */	frsp f1, f1
/* 805E394C  48 00 00 88 */	b lbl_805E39D4
lbl_805E3950:
/* 805E3950  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E3954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3958  40 80 00 10 */	bge lbl_805E3968
/* 805E395C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E3960  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805E3964  48 00 00 70 */	b lbl_805E39D4
lbl_805E3968:
/* 805E3968  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E396C  80 81 00 08 */	lwz r4, 8(r1)
/* 805E3970  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E3974  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E3978  7C 03 00 00 */	cmpw r3, r0
/* 805E397C  41 82 00 14 */	beq lbl_805E3990
/* 805E3980  40 80 00 40 */	bge lbl_805E39C0
/* 805E3984  2C 03 00 00 */	cmpwi r3, 0
/* 805E3988  41 82 00 20 */	beq lbl_805E39A8
/* 805E398C  48 00 00 34 */	b lbl_805E39C0
lbl_805E3990:
/* 805E3990  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E3994  41 82 00 0C */	beq lbl_805E39A0
/* 805E3998  38 00 00 01 */	li r0, 1
/* 805E399C  48 00 00 28 */	b lbl_805E39C4
lbl_805E39A0:
/* 805E39A0  38 00 00 02 */	li r0, 2
/* 805E39A4  48 00 00 20 */	b lbl_805E39C4
lbl_805E39A8:
/* 805E39A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E39AC  41 82 00 0C */	beq lbl_805E39B8
/* 805E39B0  38 00 00 05 */	li r0, 5
/* 805E39B4  48 00 00 10 */	b lbl_805E39C4
lbl_805E39B8:
/* 805E39B8  38 00 00 03 */	li r0, 3
/* 805E39BC  48 00 00 08 */	b lbl_805E39C4
lbl_805E39C0:
/* 805E39C0  38 00 00 04 */	li r0, 4
lbl_805E39C4:
/* 805E39C4  2C 00 00 01 */	cmpwi r0, 1
/* 805E39C8  40 82 00 0C */	bne lbl_805E39D4
/* 805E39CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E39D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805E39D4:
/* 805E39D4  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 805E39D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E39DC  40 80 00 70 */	bge lbl_805E3A4C
/* 805E39E0  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E39E4  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 805E39E8  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 805E39EC  28 00 00 00 */	cmplwi r0, 0
/* 805E39F0  41 82 00 14 */	beq lbl_805E3A04
/* 805E39F4  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E39F8  38 03 90 00 */	addi r0, r3, -28672
/* 805E39FC  B0 1C 05 BA */	sth r0, 0x5ba(r28)
/* 805E3A00  48 00 00 10 */	b lbl_805E3A10
lbl_805E3A04:
/* 805E3A04  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3A08  38 03 70 00 */	addi r0, r3, 0x7000
/* 805E3A0C  B0 1C 05 BA */	sth r0, 0x5ba(r28)
lbl_805E3A10:
/* 805E3A10  38 00 00 14 */	li r0, 0x14
/* 805E3A14  B0 1C 05 DA */	sth r0, 0x5da(r28)
/* 805E3A18  80 1C 0F 5C */	lwz r0, 0xf5c(r28)
/* 805E3A1C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805E3A20  41 82 00 2C */	beq lbl_805E3A4C
/* 805E3A24  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 805E3A28  28 00 00 00 */	cmplwi r0, 0
/* 805E3A2C  41 82 00 14 */	beq lbl_805E3A40
/* 805E3A30  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3A34  38 03 D0 00 */	addi r0, r3, -12288
/* 805E3A38  B0 1C 05 BA */	sth r0, 0x5ba(r28)
/* 805E3A3C  48 00 00 10 */	b lbl_805E3A4C
lbl_805E3A40:
/* 805E3A40  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3A44  38 03 30 00 */	addi r0, r3, 0x3000
/* 805E3A48  B0 1C 05 BA */	sth r0, 0x5ba(r28)
lbl_805E3A4C:
/* 805E3A4C  7F 83 E3 78 */	mr r3, r28
/* 805E3A50  4B FF F7 95 */	bl F_FookChk__8daB_GG_cFv
/* 805E3A54  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805E3A58  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805E3A5C  38 63 00 05 */	addi r3, r3, 5
/* 805E3A60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E3A64  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E3A68  38 9B 4E 00 */	addi r4, r27, 0x4e00
/* 805E3A6C  4B D8 4F 29 */	bl strcmp
/* 805E3A70  2C 03 00 00 */	cmpwi r3, 0
/* 805E3A74  40 82 00 2C */	bne lbl_805E3AA0
/* 805E3A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E3A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E3A80  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 805E3A84  2C 00 00 0F */	cmpwi r0, 0xf
/* 805E3A88  40 82 00 18 */	bne lbl_805E3AA0
/* 805E3A8C  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E3A90  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E3A94  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 805E3A98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3A9C  41 81 00 E8 */	bgt lbl_805E3B84
lbl_805E3AA0:
/* 805E3AA0  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 805E3AA4  2C 00 00 00 */	cmpwi r0, 0
/* 805E3AA8  40 82 00 DC */	bne lbl_805E3B84
/* 805E3AAC  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805E3AB0  28 00 00 03 */	cmplwi r0, 3
/* 805E3AB4  40 82 00 18 */	bne lbl_805E3ACC
/* 805E3AB8  7F 83 E3 78 */	mr r3, r28
/* 805E3ABC  7F A4 EB 78 */	mr r4, r29
/* 805E3AC0  4B FF B6 B9 */	bl other_bg_check__FP8daB_GG_cP10fopAc_ac_c
/* 805E3AC4  2C 03 00 00 */	cmpwi r3, 0
/* 805E3AC8  40 82 00 BC */	bne lbl_805E3B84
lbl_805E3ACC:
/* 805E3ACC  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805E3AD0  28 00 00 02 */	cmplwi r0, 2
/* 805E3AD4  40 82 00 1C */	bne lbl_805E3AF0
/* 805E3AD8  A8 1E 00 8E */	lha r0, 0x8e(r30)
/* 805E3ADC  2C 00 00 02 */	cmpwi r0, 2
/* 805E3AE0  40 82 00 10 */	bne lbl_805E3AF0
/* 805E3AE4  38 00 00 64 */	li r0, 0x64
/* 805E3AE8  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E3AEC  48 00 00 98 */	b lbl_805E3B84
lbl_805E3AF0:
/* 805E3AF0  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 805E3AF4  28 00 00 00 */	cmplwi r0, 0
/* 805E3AF8  40 82 00 1C */	bne lbl_805E3B14
/* 805E3AFC  7F 83 E3 78 */	mr r3, r28
/* 805E3B00  38 80 00 00 */	li r4, 0
/* 805E3B04  38 A0 00 02 */	li r5, 2
/* 805E3B08  38 C0 00 0A */	li r6, 0xa
/* 805E3B0C  4B FF BF 59 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E3B10  48 00 00 74 */	b lbl_805E3B84
lbl_805E3B14:
/* 805E3B14  38 00 00 C8 */	li r0, 0xc8
/* 805E3B18  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E3B1C  48 00 00 68 */	b lbl_805E3B84
lbl_805E3B20:
/* 805E3B20  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 805E3B24  28 00 00 00 */	cmplwi r0, 0
/* 805E3B28  41 82 00 14 */	beq lbl_805E3B3C
/* 805E3B2C  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3B30  38 03 EB 00 */	addi r0, r3, -5376
/* 805E3B34  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 805E3B38  48 00 00 10 */	b lbl_805E3B48
lbl_805E3B3C:
/* 805E3B3C  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3B40  38 03 15 00 */	addi r0, r3, 0x1500
/* 805E3B44  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_805E3B48:
/* 805E3B48  A8 1C 05 DA */	lha r0, 0x5da(r28)
/* 805E3B4C  2C 00 00 00 */	cmpwi r0, 0
/* 805E3B50  40 82 00 0C */	bne lbl_805E3B5C
/* 805E3B54  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805E3B58  D0 1C 06 44 */	stfs f0, 0x644(r28)
lbl_805E3B5C:
/* 805E3B5C  A8 1C 05 DC */	lha r0, 0x5dc(r28)
/* 805E3B60  2C 00 00 00 */	cmpwi r0, 0
/* 805E3B64  40 82 00 0C */	bne lbl_805E3B70
/* 805E3B68  38 00 00 01 */	li r0, 1
/* 805E3B6C  98 1C 05 C7 */	stb r0, 0x5c7(r28)
lbl_805E3B70:
/* 805E3B70  38 7C 06 BE */	addi r3, r28, 0x6be
/* 805E3B74  38 80 00 00 */	li r4, 0
/* 805E3B78  38 A0 00 01 */	li r5, 1
/* 805E3B7C  38 C0 01 00 */	li r6, 0x100
/* 805E3B80  4B C8 CA 89 */	bl cLib_addCalcAngleS2__FPssss
lbl_805E3B84:
/* 805E3B84  38 61 00 40 */	addi r3, r1, 0x40
/* 805E3B88  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E3B8C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805E3B90  4B C8 2F A5 */	bl __mi__4cXyzCFRC3Vec
/* 805E3B94  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 805E3B98  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 805E3B9C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805E3BA0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E3BA4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E3BA8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805E3BAC  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E3BB0  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E3BB4  EC 41 00 2A */	fadds f2, f1, f0
/* 805E3BB8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E3BBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E3BC0  40 81 00 0C */	ble lbl_805E3BCC
/* 805E3BC4  FC 00 10 34 */	frsqrte f0, f2
/* 805E3BC8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E3BCC:
/* 805E3BCC  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 805E3BD0  4B C8 3A A5 */	bl cM_atan2s__Fff
/* 805E3BD4  7C 03 00 D0 */	neg r0, r3
/* 805E3BD8  7C 04 07 34 */	extsh r4, r0
/* 805E3BDC  38 7C 06 C4 */	addi r3, r28, 0x6c4
/* 805E3BE0  38 A0 00 10 */	li r5, 0x10
/* 805E3BE4  38 C0 06 00 */	li r6, 0x600
/* 805E3BE8  4B C8 CA 21 */	bl cLib_addCalcAngleS2__FPssss
/* 805E3BEC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805E3BF0  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E3BF4  4B C8 D0 11 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E3BF8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805E3BFC  7C 00 18 50 */	subf r0, r0, r3
/* 805E3C00  7C 04 07 34 */	extsh r4, r0
/* 805E3C04  38 7C 06 BE */	addi r3, r28, 0x6be
/* 805E3C08  38 A0 00 10 */	li r5, 0x10
/* 805E3C0C  38 C0 01 00 */	li r6, 0x100
/* 805E3C10  4B C8 C9 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 805E3C14  A8 1C 06 BE */	lha r0, 0x6be(r28)
/* 805E3C18  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805E3C1C  40 81 00 10 */	ble lbl_805E3C2C
/* 805E3C20  38 00 20 00 */	li r0, 0x2000
/* 805E3C24  B0 1C 06 BE */	sth r0, 0x6be(r28)
/* 805E3C28  48 00 00 14 */	b lbl_805E3C3C
lbl_805E3C2C:
/* 805E3C2C  2C 00 E0 00 */	cmpwi r0, -8192
/* 805E3C30  40 80 00 0C */	bge lbl_805E3C3C
/* 805E3C34  38 00 E0 00 */	li r0, -8192
/* 805E3C38  B0 1C 06 BE */	sth r0, 0x6be(r28)
lbl_805E3C3C:
/* 805E3C3C  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805E3C40  28 00 00 00 */	cmplwi r0, 0
/* 805E3C44  40 82 00 50 */	bne lbl_805E3C94
/* 805E3C48  C0 5C 04 D0 */	lfs f2, 0x4d0(r28)
/* 805E3C4C  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805E3C50  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805E3C54  40 81 00 0C */	ble lbl_805E3C60
/* 805E3C58  D0 3C 04 D0 */	stfs f1, 0x4d0(r28)
/* 805E3C5C  48 00 00 38 */	b lbl_805E3C94
lbl_805E3C60:
/* 805E3C60  C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 805E3C64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E3C68  40 80 00 0C */	bge lbl_805E3C74
/* 805E3C6C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 805E3C70  48 00 00 24 */	b lbl_805E3C94
lbl_805E3C74:
/* 805E3C74  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 805E3C78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E3C7C  40 80 00 0C */	bge lbl_805E3C88
/* 805E3C80  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 805E3C84  48 00 00 10 */	b lbl_805E3C94
lbl_805E3C88:
/* 805E3C88  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805E3C8C  40 81 00 08 */	ble lbl_805E3C94
/* 805E3C90  D0 3C 04 D8 */	stfs f1, 0x4d8(r28)
lbl_805E3C94:
/* 805E3C94  39 61 00 90 */	addi r11, r1, 0x90
/* 805E3C98  4B D7 E5 89 */	bl _restgpr_27
/* 805E3C9C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805E3CA0  7C 08 03 A6 */	mtlr r0
/* 805E3CA4  38 21 00 90 */	addi r1, r1, 0x90
/* 805E3CA8  4E 80 00 20 */	blr 
