lbl_807A3548:
/* 807A3548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807A354C  7C 08 02 A6 */	mflr r0
/* 807A3550  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A3554  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807A3558  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807A355C  7C 7E 1B 78 */	mr r30, r3
/* 807A3560  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 807A3564  3B E4 68 24 */	addi r31, r4, lit_3903@l /* 0x807A6824@l */
/* 807A3568  38 00 00 02 */	li r0, 2
/* 807A356C  98 03 0C F4 */	stb r0, 0xcf4(r3)
/* 807A3570  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807A3574  2C 00 00 02 */	cmpwi r0, 2
/* 807A3578  41 82 01 48 */	beq lbl_807A36C0
/* 807A357C  40 80 00 14 */	bge lbl_807A3590
/* 807A3580  2C 00 00 00 */	cmpwi r0, 0
/* 807A3584  41 82 00 18 */	beq lbl_807A359C
/* 807A3588  40 80 00 68 */	bge lbl_807A35F0
/* 807A358C  48 00 02 30 */	b lbl_807A37BC
lbl_807A3590:
/* 807A3590  2C 00 00 04 */	cmpwi r0, 4
/* 807A3594  40 80 02 28 */	bge lbl_807A37BC
/* 807A3598  48 00 01 D4 */	b lbl_807A376C
lbl_807A359C:
/* 807A359C  38 80 00 0A */	li r4, 0xa
/* 807A35A0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807A35A4  38 A0 00 00 */	li r5, 0
/* 807A35A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A35AC  4B FF A8 A1 */	bl anm_init__FP10e_st_classifUcf
/* 807A35B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070165@ha */
/* 807A35B4  38 03 01 65 */	addi r0, r3, 0x0165 /* 0x00070165@l */
/* 807A35B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A35BC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A35C0  38 81 00 14 */	addi r4, r1, 0x14
/* 807A35C4  38 A0 FF FF */	li r5, -1
/* 807A35C8  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A35CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A35D0  7D 89 03 A6 */	mtctr r12
/* 807A35D4  4E 80 04 21 */	bctrl 
/* 807A35D8  38 00 00 01 */	li r0, 1
/* 807A35DC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A35E0  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807A35E4  60 00 00 01 */	ori r0, r0, 1
/* 807A35E8  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 807A35EC  48 00 01 D0 */	b lbl_807A37BC
lbl_807A35F0:
/* 807A35F0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A35F4  38 63 00 0C */	addi r3, r3, 0xc
/* 807A35F8  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 807A35FC  4B B8 4E 31 */	bl checkPass__12J3DFrameCtrlFf
/* 807A3600  2C 03 00 00 */	cmpwi r3, 0
/* 807A3604  41 82 00 30 */	beq lbl_807A3634
/* 807A3608  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 807A360C  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 807A3610  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A3614  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A3618  38 81 00 10 */	addi r4, r1, 0x10
/* 807A361C  38 A0 00 00 */	li r5, 0
/* 807A3620  38 C0 FF FF */	li r6, -1
/* 807A3624  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A3628  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A362C  7D 89 03 A6 */	mtctr r12
/* 807A3630  4E 80 04 21 */	bctrl 
lbl_807A3634:
/* 807A3634  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A3638  38 80 00 01 */	li r4, 1
/* 807A363C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A3640  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A3644  40 82 00 18 */	bne lbl_807A365C
/* 807A3648  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A364C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A3650  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A3654  41 82 00 08 */	beq lbl_807A365C
/* 807A3658  38 80 00 00 */	li r4, 0
lbl_807A365C:
/* 807A365C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A3660  41 82 01 5C */	beq lbl_807A37BC
/* 807A3664  7F C3 F3 78 */	mr r3, r30
/* 807A3668  38 80 00 0B */	li r4, 0xb
/* 807A366C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A3670  38 A0 00 02 */	li r5, 2
/* 807A3674  FC 40 08 90 */	fmr f2, f1
/* 807A3678  4B FF A7 D5 */	bl anm_init__FP10e_st_classifUcf
/* 807A367C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070166@ha */
/* 807A3680  38 03 01 66 */	addi r0, r3, 0x0166 /* 0x00070166@l */
/* 807A3684  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A3688  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A368C  38 81 00 0C */	addi r4, r1, 0xc
/* 807A3690  38 A0 FF FF */	li r5, -1
/* 807A3694  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A3698  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A369C  7D 89 03 A6 */	mtctr r12
/* 807A36A0  4E 80 04 21 */	bctrl 
/* 807A36A4  38 00 00 02 */	li r0, 2
/* 807A36A8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A36AC  3C 60 80 7A */	lis r3, l_HIO@ha /* 0x807A6DF4@ha */
/* 807A36B0  38 63 6D F4 */	addi r3, r3, l_HIO@l /* 0x807A6DF4@l */
/* 807A36B4  A8 03 00 16 */	lha r0, 0x16(r3)
/* 807A36B8  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 807A36BC  48 00 01 00 */	b lbl_807A37BC
lbl_807A36C0:
/* 807A36C0  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 807A36C4  2C 00 00 0C */	cmpwi r0, 0xc
/* 807A36C8  40 82 00 4C */	bne lbl_807A3714
/* 807A36CC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A36D0  38 80 00 01 */	li r4, 1
/* 807A36D4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A36D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A36DC  40 82 00 18 */	bne lbl_807A36F4
/* 807A36E0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A36E4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A36E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A36EC  41 82 00 08 */	beq lbl_807A36F4
/* 807A36F0  38 80 00 00 */	li r4, 0
lbl_807A36F4:
/* 807A36F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A36F8  41 82 00 1C */	beq lbl_807A3714
/* 807A36FC  7F C3 F3 78 */	mr r3, r30
/* 807A3700  38 80 00 0B */	li r4, 0xb
/* 807A3704  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807A3708  38 A0 00 02 */	li r5, 2
/* 807A370C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A3710  4B FF A7 3D */	bl anm_init__FP10e_st_classifUcf
lbl_807A3714:
/* 807A3714  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A3718  2C 00 00 00 */	cmpwi r0, 0
/* 807A371C  40 82 00 A0 */	bne lbl_807A37BC
/* 807A3720  7F C3 F3 78 */	mr r3, r30
/* 807A3724  38 80 00 20 */	li r4, 0x20
/* 807A3728  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807A372C  38 A0 00 00 */	li r5, 0
/* 807A3730  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A3734  4B FF A7 19 */	bl anm_init__FP10e_st_classifUcf
/* 807A3738  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016B@ha */
/* 807A373C  38 03 01 6B */	addi r0, r3, 0x016B /* 0x0007016B@l */
/* 807A3740  90 01 00 08 */	stw r0, 8(r1)
/* 807A3744  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A3748  38 81 00 08 */	addi r4, r1, 8
/* 807A374C  38 A0 FF FF */	li r5, -1
/* 807A3750  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A3754  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A3758  7D 89 03 A6 */	mtctr r12
/* 807A375C  4E 80 04 21 */	bctrl 
/* 807A3760  38 00 00 03 */	li r0, 3
/* 807A3764  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A3768  48 00 00 54 */	b lbl_807A37BC
lbl_807A376C:
/* 807A376C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A3770  38 80 00 01 */	li r4, 1
/* 807A3774  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A3778  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A377C  40 82 00 18 */	bne lbl_807A3794
/* 807A3780  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A3784  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A3788  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A378C  41 82 00 08 */	beq lbl_807A3794
/* 807A3790  38 80 00 00 */	li r4, 0
lbl_807A3794:
/* 807A3794  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A3798  41 82 00 24 */	beq lbl_807A37BC
/* 807A379C  38 00 00 33 */	li r0, 0x33
/* 807A37A0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A37A4  38 00 00 00 */	li r0, 0
/* 807A37A8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A37AC  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 807A37B0  38 00 FF E8 */	li r0, -24
/* 807A37B4  7C 60 00 38 */	and r0, r3, r0
/* 807A37B8  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_807A37BC:
/* 807A37BC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807A37C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A37C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A37C8  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 807A37CC  4B AC C2 71 */	bl cLib_addCalc2__FPffff
/* 807A37D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A37D4  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 807A37D8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A37DC  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 807A37E0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A37E4  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 807A37E8  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807A37EC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807A37F0  41 82 00 50 */	beq lbl_807A3840
/* 807A37F4  38 00 00 39 */	li r0, 0x39
/* 807A37F8  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A37FC  38 00 00 00 */	li r0, 0
/* 807A3800  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A3804  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807A3808  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 807A380C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 807A3810  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 807A3814  38 00 FF E8 */	li r0, -24
/* 807A3818  7C 60 00 38 */	and r0, r3, r0
/* 807A381C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 807A3820  38 00 00 01 */	li r0, 1
/* 807A3824  98 1E 07 E4 */	stb r0, 0x7e4(r30)
/* 807A3828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A382C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A3830  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807A3834  80 03 05 88 */	lwz r0, 0x588(r3)
/* 807A3838  64 00 01 00 */	oris r0, r0, 0x100
/* 807A383C  90 03 05 88 */	stw r0, 0x588(r3)
lbl_807A3840:
/* 807A3840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807A3844  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807A3848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807A384C  7C 08 03 A6 */	mtlr r0
/* 807A3850  38 21 00 20 */	addi r1, r1, 0x20
/* 807A3854  4E 80 00 20 */	blr 
