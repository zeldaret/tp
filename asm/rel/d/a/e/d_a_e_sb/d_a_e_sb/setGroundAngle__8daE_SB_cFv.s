lbl_807841CC:
/* 807841CC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807841D0  7C 08 02 A6 */	mflr r0
/* 807841D4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807841D8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807841DC  4B BD E0 00 */	b _savegpr_29
/* 807841E0  7C 7D 1B 78 */	mr r29, r3
/* 807841E4  3C 60 80 78 */	lis r3, lit_3658@ha
/* 807841E8  3B E3 4D 68 */	addi r31, r3, lit_3658@l
/* 807841EC  38 61 00 50 */	addi r3, r1, 0x50
/* 807841F0  4B 8F 33 8C */	b __ct__11dBgS_GndChkFv
/* 807841F4  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 807841F8  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 807841FC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80784200  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80784204  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80784208  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8078420C  C0 3D 07 A8 */	lfs f1, 0x7a8(r29)
/* 80784210  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80784214  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 80784218  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8078421C  EC 00 08 2A */	fadds f0, f0, f1
/* 80784220  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80784224  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80784228  EC 00 10 2A */	fadds f0, f0, f2
/* 8078422C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80784230  38 61 00 50 */	addi r3, r1, 0x50
/* 80784234  38 81 00 44 */	addi r4, r1, 0x44
/* 80784238  4B AE 3A F0 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8078423C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80784240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80784244  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80784248  7F C3 F3 78 */	mr r3, r30
/* 8078424C  38 81 00 50 */	addi r4, r1, 0x50
/* 80784250  4B 8F 02 50 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80784254  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80784258  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8078425C  FC 20 08 18 */	frsp f1, f1
/* 80784260  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80784264  41 82 00 60 */	beq lbl_807842C4
/* 80784268  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8078426C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80784270  FC 00 02 10 */	fabs f0, f0
/* 80784274  FC 20 00 18 */	frsp f1, f0
/* 80784278  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8078427C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80784280  40 80 00 44 */	bge lbl_807842C4
/* 80784284  38 61 00 14 */	addi r3, r1, 0x14
/* 80784288  38 81 00 44 */	addi r4, r1, 0x44
/* 8078428C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80784290  4B AE 28 A4 */	b __mi__4cXyzCFRC3Vec
/* 80784294  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80784298  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078429C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807842A0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807842A4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 807842A8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807842AC  4B AE 33 C8 */	b cM_atan2s__Fff
/* 807842B0  7C 03 00 D0 */	neg r0, r3
/* 807842B4  7C 04 07 34 */	extsh r4, r0
/* 807842B8  38 7D 06 14 */	addi r3, r29, 0x614
/* 807842BC  38 A0 01 00 */	li r5, 0x100
/* 807842C0  4B AE C8 D0 */	b cLib_chaseAngleS__FPsss
lbl_807842C4:
/* 807842C4  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 807842C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807842CC  EC 01 00 2A */	fadds f0, f1, f0
/* 807842D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807842D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807842D8  EC 01 00 2A */	fadds f0, f1, f0
/* 807842DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807842E0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807842E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807842E8  38 61 00 50 */	addi r3, r1, 0x50
/* 807842EC  38 81 00 38 */	addi r4, r1, 0x38
/* 807842F0  4B AE 3A 38 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807842F4  7F C3 F3 78 */	mr r3, r30
/* 807842F8  38 81 00 50 */	addi r4, r1, 0x50
/* 807842FC  4B 8F 01 A4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80784300  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80784304  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80784308  FC 20 08 18 */	frsp f1, f1
/* 8078430C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80784310  41 82 00 5C */	beq lbl_8078436C
/* 80784314  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80784318  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078431C  FC 00 02 10 */	fabs f0, f0
/* 80784320  FC 20 00 18 */	frsp f1, f0
/* 80784324  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80784328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078432C  40 80 00 40 */	bge lbl_8078436C
/* 80784330  38 61 00 08 */	addi r3, r1, 8
/* 80784334  38 81 00 38 */	addi r4, r1, 0x38
/* 80784338  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8078433C  4B AE 27 F8 */	b __mi__4cXyzCFRC3Vec
/* 80784340  C0 41 00 08 */	lfs f2, 8(r1)
/* 80784344  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80784348  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8078434C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80784350  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80784354  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80784358  4B AE 33 1C */	b cM_atan2s__Fff
/* 8078435C  7C 64 07 34 */	extsh r4, r3
/* 80784360  38 7D 06 18 */	addi r3, r29, 0x618
/* 80784364  38 A0 01 00 */	li r5, 0x100
/* 80784368  4B AE C8 28 */	b cLib_chaseAngleS__FPsss
lbl_8078436C:
/* 8078436C  38 61 00 50 */	addi r3, r1, 0x50
/* 80784370  38 80 FF FF */	li r4, -1
/* 80784374  4B 8F 32 7C */	b __dt__11dBgS_GndChkFv
/* 80784378  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8078437C  4B BD DE AC */	b _restgpr_29
/* 80784380  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80784384  7C 08 03 A6 */	mtlr r0
/* 80784388  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8078438C  4E 80 00 20 */	blr 
