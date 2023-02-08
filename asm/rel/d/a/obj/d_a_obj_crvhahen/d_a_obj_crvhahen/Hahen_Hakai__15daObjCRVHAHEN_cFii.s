lbl_80BD3720:
/* 80BD3720  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BD3724  7C 08 02 A6 */	mflr r0
/* 80BD3728  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BD372C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BD3730  4B 78 EA 99 */	bl _savegpr_24
/* 80BD3734  7C 7A 1B 78 */	mr r26, r3
/* 80BD3738  7C BB 2B 78 */	mr r27, r5
/* 80BD373C  3C 60 80 BD */	lis r3, lit_3703@ha /* 0x80BD3FF0@ha */
/* 80BD3740  3B E3 3F F0 */	addi r31, r3, lit_3703@l /* 0x80BD3FF0@l */
/* 80BD3744  7C 9C 23 78 */	mr r28, r4
/* 80BD3748  1F 1C 00 0C */	mulli r24, r28, 0xc
/* 80BD374C  1F 3C 00 06 */	mulli r25, r28, 6
/* 80BD3750  48 00 01 6C */	b lbl_80BD38BC
lbl_80BD3754:
/* 80BD3754  3B BC 07 51 */	addi r29, r28, 0x751
/* 80BD3758  7C 1A E8 AE */	lbzx r0, r26, r29
/* 80BD375C  28 00 00 03 */	cmplwi r0, 3
/* 80BD3760  40 81 00 20 */	ble lbl_80BD3780
/* 80BD3764  C0 1A 07 4C */	lfs f0, 0x74c(r26)
/* 80BD3768  38 18 05 6C */	addi r0, r24, 0x56c
/* 80BD376C  7C 1A 05 2E */	stfsx f0, r26, r0
/* 80BD3770  38 60 40 00 */	li r3, 0x4000
/* 80BD3774  38 19 06 D0 */	addi r0, r25, 0x6d0
/* 80BD3778  7C 7A 03 2E */	sthx r3, r26, r0
/* 80BD377C  48 00 01 34 */	b lbl_80BD38B0
lbl_80BD3780:
/* 80BD3780  7F DA C2 14 */	add r30, r26, r24
/* 80BD3784  C0 3E 05 E4 */	lfs f1, 0x5e4(r30)
/* 80BD3788  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BD378C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD3790  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80BD3794  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 80BD3798  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD379C  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80BD37A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD37A4  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 80BD37A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD37AC  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80BD37B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD37B4  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80BD37B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD37BC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80BD37C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD37C4  7F 43 D3 78 */	mr r3, r26
/* 80BD37C8  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD37CC  38 A1 00 08 */	addi r5, r1, 8
/* 80BD37D0  4B FF FE 59 */	bl Wall_Check__15daObjCRVHAHEN_cF4cXyz4cXyz
/* 80BD37D4  C0 3E 05 68 */	lfs f1, 0x568(r30)
/* 80BD37D8  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80BD37DC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD37E0  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 80BD37E4  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 80BD37E8  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80BD37EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD37F0  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80BD37F4  C0 3E 05 70 */	lfs f1, 0x570(r30)
/* 80BD37F8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80BD37FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD3800  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80BD3804  7C 9A CA 14 */	add r4, r26, r25
/* 80BD3808  A8 64 06 D0 */	lha r3, 0x6d0(r4)
/* 80BD380C  A8 04 07 0C */	lha r0, 0x70c(r4)
/* 80BD3810  7C 03 02 14 */	add r0, r3, r0
/* 80BD3814  B0 04 06 D0 */	sth r0, 0x6d0(r4)
/* 80BD3818  A8 64 06 D2 */	lha r3, 0x6d2(r4)
/* 80BD381C  A8 04 07 0E */	lha r0, 0x70e(r4)
/* 80BD3820  7C 03 02 14 */	add r0, r3, r0
/* 80BD3824  B0 04 06 D2 */	sth r0, 0x6d2(r4)
/* 80BD3828  A8 64 06 D4 */	lha r3, 0x6d4(r4)
/* 80BD382C  A8 04 07 10 */	lha r0, 0x710(r4)
/* 80BD3830  7C 03 02 14 */	add r0, r3, r0
/* 80BD3834  B0 04 06 D4 */	sth r0, 0x6d4(r4)
/* 80BD3838  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BD383C  C0 1A 07 4C */	lfs f0, 0x74c(r26)
/* 80BD3840  EC 22 00 2A */	fadds f1, f2, f0
/* 80BD3844  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80BD3848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD384C  4C 41 13 82 */	cror 2, 1, 2
/* 80BD3850  40 82 00 60 */	bne lbl_80BD38B0
/* 80BD3854  7C 7A E8 AE */	lbzx r3, r26, r29
/* 80BD3858  38 03 00 01 */	addi r0, r3, 1
/* 80BD385C  7C 1A E9 AE */	stbx r0, r26, r29
/* 80BD3860  C0 1A 07 4C */	lfs f0, 0x74c(r26)
/* 80BD3864  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD3868  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80BD386C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BD3870  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80BD3874  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD3878  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80BD387C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BD3880  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80BD3884  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD3888  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80BD388C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80BD3890  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD3894  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80BD3898  38 00 40 00 */	li r0, 0x4000
/* 80BD389C  B0 04 06 D0 */	sth r0, 0x6d0(r4)
/* 80BD38A0  A8 64 06 D2 */	lha r3, 0x6d2(r4)
/* 80BD38A4  A8 04 07 0E */	lha r0, 0x70e(r4)
/* 80BD38A8  7C 03 02 14 */	add r0, r3, r0
/* 80BD38AC  B0 04 06 D2 */	sth r0, 0x6d2(r4)
lbl_80BD38B0:
/* 80BD38B0  3B 9C 00 01 */	addi r28, r28, 1
/* 80BD38B4  3B 39 00 06 */	addi r25, r25, 6
/* 80BD38B8  3B 18 00 0C */	addi r24, r24, 0xc
lbl_80BD38BC:
/* 80BD38BC  7C 1C D8 00 */	cmpw r28, r27
/* 80BD38C0  41 80 FE 94 */	blt lbl_80BD3754
/* 80BD38C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BD38C8  4B 78 E9 4D */	bl _restgpr_24
/* 80BD38CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD38D0  7C 08 03 A6 */	mtlr r0
/* 80BD38D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BD38D8  4E 80 00 20 */	blr 
