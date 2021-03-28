lbl_807D366C:
/* 807D366C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807D3670  7C 08 02 A6 */	mflr r0
/* 807D3674  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807D3678  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807D367C  4B B8 EB 60 */	b _savegpr_29
/* 807D3680  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D3684  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D3688  7C 7D 1B 78 */	mr r29, r3
/* 807D368C  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3690  4B 8A 45 D8 */	b __ct__11dBgS_LinChkFv
/* 807D3694  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D3698  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D369C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D36A0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807D36A4  4B 83 8D 38 */	b mDoMtx_YrotS__FPA4_fs
/* 807D36A8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807D36AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D36B0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807D36B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D36B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807D36BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D36C0  38 61 00 44 */	addi r3, r1, 0x44
/* 807D36C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D36C8  4B A9 D8 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D36CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D36D0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D36D4  7C 65 1B 78 */	mr r5, r3
/* 807D36D8  4B B7 39 B8 */	b PSVECAdd
/* 807D36DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D36E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807D36E4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807D36E8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807D36EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D36F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D36F4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807D36F8  EC 01 00 2A */	fadds f0, f1, f0
/* 807D36FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807D3700  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3704  38 81 00 38 */	addi r4, r1, 0x38
/* 807D3708  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807D370C  7F A6 EB 78 */	mr r6, r29
/* 807D3710  4B 8A 46 54 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807D3714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D3718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D371C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807D3720  7F C3 F3 78 */	mr r3, r30
/* 807D3724  38 81 00 50 */	addi r4, r1, 0x50
/* 807D3728  4B 8A 0C 8C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807D372C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D3730  41 82 01 24 */	beq lbl_807D3854
/* 807D3734  7F C3 F3 78 */	mr r3, r30
/* 807D3738  A0 81 00 66 */	lhz r4, 0x66(r1)
/* 807D373C  4B 8A 0E DC */	b GetActorPointer__4cBgSCFi
/* 807D3740  A8 03 00 08 */	lha r0, 8(r3)
/* 807D3744  2C 00 02 DC */	cmpwi r0, 0x2dc
/* 807D3748  41 82 00 18 */	beq lbl_807D3760
/* 807D374C  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3750  38 80 FF FF */	li r4, -1
/* 807D3754  4B 8A 45 88 */	b __dt__11dBgS_LinChkFv
/* 807D3758  38 60 00 00 */	li r3, 0
/* 807D375C  48 00 01 08 */	b lbl_807D3864
lbl_807D3760:
/* 807D3760  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807D3764  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D3768  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807D376C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D3770  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807D3774  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D3778  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807D377C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807D3780  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D3784  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D3788  38 61 00 44 */	addi r3, r1, 0x44
/* 807D378C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D3790  4B A9 D7 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3794  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3798  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D379C  7C 65 1B 78 */	mr r5, r3
/* 807D37A0  4B B7 38 F0 */	b PSVECAdd
/* 807D37A4  38 61 00 50 */	addi r3, r1, 0x50
/* 807D37A8  38 81 00 38 */	addi r4, r1, 0x38
/* 807D37AC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807D37B0  7F A6 EB 78 */	mr r6, r29
/* 807D37B4  4B 8A 45 B0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807D37B8  7F C3 F3 78 */	mr r3, r30
/* 807D37BC  38 81 00 50 */	addi r4, r1, 0x50
/* 807D37C0  4B 8A 0B F4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807D37C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D37C8  41 82 00 20 */	beq lbl_807D37E8
/* 807D37CC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807D37D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D37D4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807D37D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D37DC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807D37E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807D37E4  48 00 00 18 */	b lbl_807D37FC
lbl_807D37E8:
/* 807D37E8  38 61 00 50 */	addi r3, r1, 0x50
/* 807D37EC  38 80 FF FF */	li r4, -1
/* 807D37F0  4B 8A 44 EC */	b __dt__11dBgS_LinChkFv
/* 807D37F4  38 60 00 00 */	li r3, 0
/* 807D37F8  48 00 00 6C */	b lbl_807D3864
lbl_807D37FC:
/* 807D37FC  38 61 00 08 */	addi r3, r1, 8
/* 807D3800  38 81 00 14 */	addi r4, r1, 0x14
/* 807D3804  38 A1 00 20 */	addi r5, r1, 0x20
/* 807D3808  4B A9 33 2C */	b __mi__4cXyzCFRC3Vec
/* 807D380C  C0 21 00 08 */	lfs f1, 8(r1)
/* 807D3810  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807D3814  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807D3818  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D381C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807D3820  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 807D3824  4B A9 3E 50 */	b cM_atan2s__Fff
/* 807D3828  38 63 40 00 */	addi r3, r3, 0x4000
/* 807D382C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807D3830  7C 00 18 50 */	subf r0, r0, r3
/* 807D3834  7C 1D 07 35 */	extsh. r29, r0
/* 807D3838  40 82 00 08 */	bne lbl_807D3840
/* 807D383C  3B A0 00 01 */	li r29, 1
lbl_807D3840:
/* 807D3840  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3844  38 80 FF FF */	li r4, -1
/* 807D3848  4B 8A 44 94 */	b __dt__11dBgS_LinChkFv
/* 807D384C  7F A3 EB 78 */	mr r3, r29
/* 807D3850  48 00 00 14 */	b lbl_807D3864
lbl_807D3854:
/* 807D3854  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3858  38 80 FF FF */	li r4, -1
/* 807D385C  4B 8A 44 80 */	b __dt__11dBgS_LinChkFv
/* 807D3860  38 60 00 00 */	li r3, 0
lbl_807D3864:
/* 807D3864  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807D3868  4B B8 E9 C0 */	b _restgpr_29
/* 807D386C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807D3870  7C 08 03 A6 */	mtlr r0
/* 807D3874  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807D3878  4E 80 00 20 */	blr 
