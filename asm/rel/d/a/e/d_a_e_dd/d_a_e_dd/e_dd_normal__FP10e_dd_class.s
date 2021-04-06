lbl_806A34DC:
/* 806A34DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806A34E0  7C 08 02 A6 */	mflr r0
/* 806A34E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 806A34E8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806A34EC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806A34F0  39 61 00 60 */	addi r11, r1, 0x60
/* 806A34F4  4B CB EC E9 */	bl _savegpr_29
/* 806A34F8  7C 7E 1B 78 */	mr r30, r3
/* 806A34FC  3C 80 80 6A */	lis r4, lit_3903@ha /* 0x806A71C4@ha */
/* 806A3500  3B E4 71 C4 */	addi r31, r4, lit_3903@l /* 0x806A71C4@l */
/* 806A3504  88 03 06 D4 */	lbz r0, 0x6d4(r3)
/* 806A3508  7C 00 07 75 */	extsb. r0, r0
/* 806A350C  41 82 00 0C */	beq lbl_806A3518
/* 806A3510  4B FF FA 05 */	bl e_dd_wall__FP10e_dd_class
/* 806A3514  48 00 05 B4 */	b lbl_806A3AC8
lbl_806A3518:
/* 806A3518  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 806A351C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806A3520  FC 00 00 1E */	fctiwz f0, f0
/* 806A3524  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A3528  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 806A352C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806A3530  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A3534  2C 00 00 64 */	cmpwi r0, 0x64
/* 806A3538  41 82 02 20 */	beq lbl_806A3758
/* 806A353C  40 80 00 1C */	bge lbl_806A3558
/* 806A3540  2C 00 00 01 */	cmpwi r0, 1
/* 806A3544  41 82 01 5C */	beq lbl_806A36A0
/* 806A3548  40 80 04 8C */	bge lbl_806A39D4
/* 806A354C  2C 00 00 00 */	cmpwi r0, 0
/* 806A3550  40 80 00 18 */	bge lbl_806A3568
/* 806A3554  48 00 04 80 */	b lbl_806A39D4
lbl_806A3558:
/* 806A3558  2C 00 00 66 */	cmpwi r0, 0x66
/* 806A355C  41 82 04 64 */	beq lbl_806A39C0
/* 806A3560  40 80 04 74 */	bge lbl_806A39D4
/* 806A3564  48 00 02 40 */	b lbl_806A37A4
lbl_806A3568:
/* 806A3568  38 00 00 00 */	li r0, 0
/* 806A356C  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 806A3570  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A3574  2C 00 00 00 */	cmpwi r0, 0
/* 806A3578  40 82 04 5C */	bne lbl_806A39D4
/* 806A357C  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 806A3580  28 00 00 00 */	cmplwi r0, 0
/* 806A3584  41 82 00 1C */	beq lbl_806A35A0
/* 806A3588  4B FF F7 61 */	bl path_check__FP10e_dd_class
/* 806A358C  2C 03 00 00 */	cmpwi r3, 0
/* 806A3590  41 82 00 10 */	beq lbl_806A35A0
/* 806A3594  38 00 00 64 */	li r0, 0x64
/* 806A3598  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A359C  48 00 04 38 */	b lbl_806A39D4
lbl_806A35A0:
/* 806A35A0  7F C3 F3 78 */	mr r3, r30
/* 806A35A4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806A35A8  4B FF F6 35 */	bl way_bg_check__FP10e_dd_classf
/* 806A35AC  2C 03 00 00 */	cmpwi r3, 0
/* 806A35B0  40 82 00 10 */	bne lbl_806A35C0
/* 806A35B4  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 806A35B8  7C 00 07 75 */	extsb. r0, r0
/* 806A35BC  41 82 00 2C */	beq lbl_806A35E8
lbl_806A35C0:
/* 806A35C0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806A35C4  4B BC 43 C9 */	bl cM_rndFX__Ff
/* 806A35C8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806A35CC  EC 00 08 2A */	fadds f0, f0, f1
/* 806A35D0  FC 00 00 1E */	fctiwz f0, f0
/* 806A35D4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A35D8  80 61 00 44 */	lwz r3, 0x44(r1)
/* 806A35DC  38 00 00 C8 */	li r0, 0xc8
/* 806A35E0  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 806A35E4  48 00 00 6C */	b lbl_806A3650
lbl_806A35E8:
/* 806A35E8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806A35EC  4B BC 43 A1 */	bl cM_rndFX__Ff
/* 806A35F0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806A35F4  EC 00 08 2A */	fadds f0, f0, f1
/* 806A35F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806A35FC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806A3600  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806A3604  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806A3608  4B BC 43 85 */	bl cM_rndFX__Ff
/* 806A360C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806A3610  EC 00 08 2A */	fadds f0, f0, f1
/* 806A3614  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A3618  38 61 00 18 */	addi r3, r1, 0x18
/* 806A361C  38 81 00 24 */	addi r4, r1, 0x24
/* 806A3620  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A3624  4B BC 35 11 */	bl __mi__4cXyzCFRC3Vec
/* 806A3628  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 806A362C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806A3630  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806A3634  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A3638  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 806A363C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806A3640  4B BC 40 35 */	bl cM_atan2s__Fff
/* 806A3644  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806A3648  7C 00 18 50 */	subf r0, r0, r3
/* 806A364C  7C 03 07 34 */	extsh r3, r0
lbl_806A3650:
/* 806A3650  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806A3654  7C 00 1A 14 */	add r0, r0, r3
/* 806A3658  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806A365C  7F C3 F3 78 */	mr r3, r30
/* 806A3660  38 80 00 16 */	li r4, 0x16
/* 806A3664  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A3668  38 A0 00 02 */	li r5, 2
/* 806A366C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3670  4B FF EC 5D */	bl anm_init__FP10e_dd_classifUcf
/* 806A3674  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806A3678  4B BC 42 DD */	bl cM_rndF__Ff
/* 806A367C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A3680  EC 00 08 2A */	fadds f0, f0, f1
/* 806A3684  FC 00 00 1E */	fctiwz f0, f0
/* 806A3688  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A368C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A3690  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A3694  38 00 00 01 */	li r0, 1
/* 806A3698  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A369C  48 00 03 38 */	b lbl_806A39D4
lbl_806A36A0:
/* 806A36A0  2C 1D 00 0C */	cmpwi r29, 0xc
/* 806A36A4  41 80 00 0C */	blt lbl_806A36B0
/* 806A36A8  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 806A36AC  40 81 00 14 */	ble lbl_806A36C0
lbl_806A36B0:
/* 806A36B0  2C 1D 00 02 */	cmpwi r29, 2
/* 806A36B4  40 81 00 0C */	ble lbl_806A36C0
/* 806A36B8  2C 1D 00 25 */	cmpwi r29, 0x25
/* 806A36BC  41 80 00 10 */	blt lbl_806A36CC
lbl_806A36C0:
/* 806A36C0  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A74C8@ha */
/* 806A36C4  38 63 74 C8 */	addi r3, r3, l_HIO@l /* 0x806A74C8@l */
/* 806A36C8  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_806A36CC:
/* 806A36CC  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A36D0  2C 00 00 00 */	cmpwi r0, 0
/* 806A36D4  40 82 00 14 */	bne lbl_806A36E8
/* 806A36D8  2C 1D 00 07 */	cmpwi r29, 7
/* 806A36DC  41 82 00 38 */	beq lbl_806A3714
/* 806A36E0  2C 1D 00 21 */	cmpwi r29, 0x21
/* 806A36E4  41 82 00 30 */	beq lbl_806A3714
lbl_806A36E8:
/* 806A36E8  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 806A36EC  2C 00 00 00 */	cmpwi r0, 0
/* 806A36F0  40 82 02 E4 */	bne lbl_806A39D4
/* 806A36F4  7F C3 F3 78 */	mr r3, r30
/* 806A36F8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806A36FC  4B FF F4 E1 */	bl way_bg_check__FP10e_dd_classf
/* 806A3700  2C 03 00 00 */	cmpwi r3, 0
/* 806A3704  40 82 00 10 */	bne lbl_806A3714
/* 806A3708  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 806A370C  7C 00 07 75 */	extsb. r0, r0
/* 806A3710  41 82 02 C4 */	beq lbl_806A39D4
lbl_806A3714:
/* 806A3714  38 00 00 00 */	li r0, 0
/* 806A3718  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A371C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806A3720  4B BC 42 35 */	bl cM_rndF__Ff
/* 806A3724  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A3728  EC 00 08 2A */	fadds f0, f0, f1
/* 806A372C  FC 00 00 1E */	fctiwz f0, f0
/* 806A3730  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A3734  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A3738  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A373C  7F C3 F3 78 */	mr r3, r30
/* 806A3740  38 80 00 15 */	li r4, 0x15
/* 806A3744  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A3748  38 A0 00 02 */	li r5, 2
/* 806A374C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3750  4B FF EB 7D */	bl anm_init__FP10e_dd_classifUcf
/* 806A3754  48 00 02 80 */	b lbl_806A39D4
lbl_806A3758:
/* 806A3758  38 80 00 16 */	li r4, 0x16
/* 806A375C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A3760  38 A0 00 02 */	li r5, 2
/* 806A3764  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3768  4B FF EB 65 */	bl anm_init__FP10e_dd_classifUcf
/* 806A376C  38 00 00 65 */	li r0, 0x65
/* 806A3770  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3774  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A3778  80 63 00 08 */	lwz r3, 8(r3)
/* 806A377C  88 1E 05 BC */	lbz r0, 0x5bc(r30)
/* 806A3780  7C 00 07 74 */	extsb r0, r0
/* 806A3784  54 00 20 36 */	slwi r0, r0, 4
/* 806A3788  7C 63 02 14 */	add r3, r3, r0
/* 806A378C  C0 03 00 04 */	lfs f0, 4(r3)
/* 806A3790  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 806A3794  C0 03 00 08 */	lfs f0, 8(r3)
/* 806A3798  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 806A379C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806A37A0  D0 1E 06 98 */	stfs f0, 0x698(r30)
lbl_806A37A4:
/* 806A37A4  2C 1D 00 0C */	cmpwi r29, 0xc
/* 806A37A8  41 80 00 0C */	blt lbl_806A37B4
/* 806A37AC  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 806A37B0  40 81 00 14 */	ble lbl_806A37C4
lbl_806A37B4:
/* 806A37B4  2C 1D 00 02 */	cmpwi r29, 2
/* 806A37B8  40 81 00 0C */	ble lbl_806A37C4
/* 806A37BC  2C 1D 00 25 */	cmpwi r29, 0x25
/* 806A37C0  41 80 00 10 */	blt lbl_806A37D0
lbl_806A37C4:
/* 806A37C4  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A74C8@ha */
/* 806A37C8  38 63 74 C8 */	addi r3, r3, l_HIO@l /* 0x806A74C8@l */
/* 806A37CC  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_806A37D0:
/* 806A37D0  38 61 00 0C */	addi r3, r1, 0xc
/* 806A37D4  38 9E 06 90 */	addi r4, r30, 0x690
/* 806A37D8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A37DC  4B BC 33 59 */	bl __mi__4cXyzCFRC3Vec
/* 806A37E0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 806A37E4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806A37E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806A37EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A37F0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 806A37F4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806A37F8  4B BC 3E 7D */	bl cM_atan2s__Fff
/* 806A37FC  B0 7E 06 9C */	sth r3, 0x69c(r30)
/* 806A3800  2C 1D 00 07 */	cmpwi r29, 7
/* 806A3804  41 82 00 0C */	beq lbl_806A3810
/* 806A3808  2C 1D 00 21 */	cmpwi r29, 0x21
/* 806A380C  40 82 01 C8 */	bne lbl_806A39D4
lbl_806A3810:
/* 806A3810  38 61 00 30 */	addi r3, r1, 0x30
/* 806A3814  4B CA 39 25 */	bl PSVECSquareMag
/* 806A3818  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A381C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3820  40 81 00 58 */	ble lbl_806A3878
/* 806A3824  FC 00 08 34 */	frsqrte f0, f1
/* 806A3828  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806A382C  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3830  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806A3834  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3838  FC 01 00 32 */	fmul f0, f1, f0
/* 806A383C  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3840  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3844  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3848  FC 00 00 32 */	fmul f0, f0, f0
/* 806A384C  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3850  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3854  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3858  FC 44 00 32 */	fmul f2, f4, f0
/* 806A385C  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3860  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3864  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3868  FC 02 00 32 */	fmul f0, f2, f0
/* 806A386C  FC 21 00 32 */	fmul f1, f1, f0
/* 806A3870  FC 20 08 18 */	frsp f1, f1
/* 806A3874  48 00 00 88 */	b lbl_806A38FC
lbl_806A3878:
/* 806A3878  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806A387C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3880  40 80 00 10 */	bge lbl_806A3890
/* 806A3884  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A3888  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806A388C  48 00 00 70 */	b lbl_806A38FC
lbl_806A3890:
/* 806A3890  D0 21 00 08 */	stfs f1, 8(r1)
/* 806A3894  80 81 00 08 */	lwz r4, 8(r1)
/* 806A3898  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A389C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A38A0  7C 03 00 00 */	cmpw r3, r0
/* 806A38A4  41 82 00 14 */	beq lbl_806A38B8
/* 806A38A8  40 80 00 40 */	bge lbl_806A38E8
/* 806A38AC  2C 03 00 00 */	cmpwi r3, 0
/* 806A38B0  41 82 00 20 */	beq lbl_806A38D0
/* 806A38B4  48 00 00 34 */	b lbl_806A38E8
lbl_806A38B8:
/* 806A38B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A38BC  41 82 00 0C */	beq lbl_806A38C8
/* 806A38C0  38 00 00 01 */	li r0, 1
/* 806A38C4  48 00 00 28 */	b lbl_806A38EC
lbl_806A38C8:
/* 806A38C8  38 00 00 02 */	li r0, 2
/* 806A38CC  48 00 00 20 */	b lbl_806A38EC
lbl_806A38D0:
/* 806A38D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A38D4  41 82 00 0C */	beq lbl_806A38E0
/* 806A38D8  38 00 00 05 */	li r0, 5
/* 806A38DC  48 00 00 10 */	b lbl_806A38EC
lbl_806A38E0:
/* 806A38E0  38 00 00 03 */	li r0, 3
/* 806A38E4  48 00 00 08 */	b lbl_806A38EC
lbl_806A38E8:
/* 806A38E8  38 00 00 04 */	li r0, 4
lbl_806A38EC:
/* 806A38EC  2C 00 00 01 */	cmpwi r0, 1
/* 806A38F0  40 82 00 0C */	bne lbl_806A38FC
/* 806A38F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A38F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806A38FC:
/* 806A38FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A3900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3904  40 80 00 D0 */	bge lbl_806A39D4
/* 806A3908  88 7E 05 BC */	lbz r3, 0x5bc(r30)
/* 806A390C  88 1E 05 BD */	lbz r0, 0x5bd(r30)
/* 806A3910  7C 03 02 14 */	add r0, r3, r0
/* 806A3914  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 806A3918  88 BE 05 BC */	lbz r5, 0x5bc(r30)
/* 806A391C  7C A3 07 74 */	extsb r3, r5
/* 806A3920  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 806A3924  A0 04 00 00 */	lhz r0, 0(r4)
/* 806A3928  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806A392C  7C 03 00 00 */	cmpw r3, r0
/* 806A3930  41 80 00 38 */	blt lbl_806A3968
/* 806A3934  88 04 00 05 */	lbz r0, 5(r4)
/* 806A3938  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A393C  41 82 00 10 */	beq lbl_806A394C
/* 806A3940  38 00 00 00 */	li r0, 0
/* 806A3944  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 806A3948  48 00 00 34 */	b lbl_806A397C
lbl_806A394C:
/* 806A394C  38 00 FF FF */	li r0, -1
/* 806A3950  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 806A3954  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A3958  A0 63 00 00 */	lhz r3, 0(r3)
/* 806A395C  38 03 FF FE */	addi r0, r3, -2
/* 806A3960  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 806A3964  48 00 00 18 */	b lbl_806A397C
lbl_806A3968:
/* 806A3968  7C A0 07 75 */	extsb. r0, r5
/* 806A396C  40 80 00 10 */	bge lbl_806A397C
/* 806A3970  38 00 00 01 */	li r0, 1
/* 806A3974  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 806A3978  98 1E 05 BC */	stb r0, 0x5bc(r30)
lbl_806A397C:
/* 806A397C  38 00 00 66 */	li r0, 0x66
/* 806A3980  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3984  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806A3988  4B BC 3F CD */	bl cM_rndF__Ff
/* 806A398C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A3990  EC 00 08 2A */	fadds f0, f0, f1
/* 806A3994  FC 00 00 1E */	fctiwz f0, f0
/* 806A3998  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A399C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A39A0  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A39A4  7F C3 F3 78 */	mr r3, r30
/* 806A39A8  38 80 00 15 */	li r4, 0x15
/* 806A39AC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A39B0  38 A0 00 02 */	li r5, 2
/* 806A39B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A39B8  4B FF E9 15 */	bl anm_init__FP10e_dd_classifUcf
/* 806A39BC  48 00 00 18 */	b lbl_806A39D4
lbl_806A39C0:
/* 806A39C0  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A39C4  2C 00 00 00 */	cmpwi r0, 0
/* 806A39C8  40 82 00 0C */	bne lbl_806A39D4
/* 806A39CC  38 00 00 64 */	li r0, 0x64
/* 806A39D0  B0 1E 06 8C */	sth r0, 0x68c(r30)
lbl_806A39D4:
/* 806A39D4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A39D8  FC 20 F8 90 */	fmr f1, f31
/* 806A39DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A39E0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 806A39E4  3C 80 80 6A */	lis r4, l_HIO@ha /* 0x806A74C8@ha */
/* 806A39E8  38 84 74 C8 */	addi r4, r4, l_HIO@l /* 0x806A74C8@l */
/* 806A39EC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806A39F0  EC 63 00 32 */	fmuls f3, f3, f0
/* 806A39F4  4B BC C0 49 */	bl cLib_addCalc2__FPffff
/* 806A39F8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806A39FC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806A3A00  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A3A04  FC 00 00 1E */	fctiwz f0, f0
/* 806A3A08  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A3A0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A3A10  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 806A3A14  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 806A3A18  2C 00 00 16 */	cmpwi r0, 0x16
/* 806A3A1C  40 82 00 70 */	bne lbl_806A3A8C
/* 806A3A20  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806A3A24  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806A3A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3A2C  4C 41 13 82 */	cror 2, 1, 2
/* 806A3A30  40 82 00 18 */	bne lbl_806A3A48
/* 806A3A34  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806A3A38  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 806A3A3C  38 A0 00 08 */	li r5, 8
/* 806A3A40  A8 DE 06 A8 */	lha r6, 0x6a8(r30)
/* 806A3A44  4B BC CB C5 */	bl cLib_addCalcAngleS2__FPssss
lbl_806A3A48:
/* 806A3A48  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806A3A4C  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806A3A50  7C 03 00 50 */	subf r0, r3, r0
/* 806A3A54  7C 00 07 34 */	extsh r0, r0
/* 806A3A58  2C 00 08 00 */	cmpwi r0, 0x800
/* 806A3A5C  41 81 00 0C */	bgt lbl_806A3A68
/* 806A3A60  2C 00 F8 00 */	cmpwi r0, -2048
/* 806A3A64  40 80 00 28 */	bge lbl_806A3A8C
lbl_806A3A68:
/* 806A3A68  7C 00 07 35 */	extsh. r0, r0
/* 806A3A6C  40 81 00 10 */	ble lbl_806A3A7C
/* 806A3A70  38 00 0A 00 */	li r0, 0xa00
/* 806A3A74  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 806A3A78  48 00 00 0C */	b lbl_806A3A84
lbl_806A3A7C:
/* 806A3A7C  38 00 F6 00 */	li r0, -2560
/* 806A3A80  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_806A3A84:
/* 806A3A84  38 00 00 80 */	li r0, 0x80
/* 806A3A88  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_806A3A8C:
/* 806A3A8C  7F C3 F3 78 */	mr r3, r30
/* 806A3A90  3C 80 80 6A */	lis r4, l_HIO@ha /* 0x806A74C8@ha */
/* 806A3A94  38 84 74 C8 */	addi r4, r4, l_HIO@l /* 0x806A74C8@l */
/* 806A3A98  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 806A3A9C  38 80 7F FF */	li r4, 0x7fff
/* 806A3AA0  4B FF EC 8D */	bl pl_check__FP10e_dd_classfs
/* 806A3AA4  2C 03 00 00 */	cmpwi r3, 0
/* 806A3AA8  41 82 00 20 */	beq lbl_806A3AC8
/* 806A3AAC  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 806A3AB0  7C 00 07 75 */	extsb. r0, r0
/* 806A3AB4  40 82 00 14 */	bne lbl_806A3AC8
/* 806A3AB8  38 00 00 03 */	li r0, 3
/* 806A3ABC  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A3AC0  38 00 00 00 */	li r0, 0
/* 806A3AC4  B0 1E 06 8C */	sth r0, 0x68c(r30)
lbl_806A3AC8:
/* 806A3AC8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806A3ACC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806A3AD0  39 61 00 60 */	addi r11, r1, 0x60
/* 806A3AD4  4B CB E7 55 */	bl _restgpr_29
/* 806A3AD8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806A3ADC  7C 08 03 A6 */	mtlr r0
/* 806A3AE0  38 21 00 70 */	addi r1, r1, 0x70
/* 806A3AE4  4E 80 00 20 */	blr 
