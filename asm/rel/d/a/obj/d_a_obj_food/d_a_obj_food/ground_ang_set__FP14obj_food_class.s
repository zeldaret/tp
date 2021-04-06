lbl_80BF0854:
/* 80BF0854  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BF0858  7C 08 02 A6 */	mflr r0
/* 80BF085C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BF0860  39 61 00 90 */	addi r11, r1, 0x90
/* 80BF0864  4B 77 19 79 */	bl _savegpr_29
/* 80BF0868  7C 7D 1B 78 */	mr r29, r3
/* 80BF086C  3C 60 80 BF */	lis r3, lit_3647@ha /* 0x80BF1D90@ha */
/* 80BF0870  3B E3 1D 90 */	addi r31, r3, lit_3647@l /* 0x80BF1D90@l */
/* 80BF0874  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF0878  4B 48 6D 05 */	bl __ct__11dBgS_GndChkFv
/* 80BF087C  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 80BF0880  D0 61 00 08 */	stfs f3, 8(r1)
/* 80BF0884  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BF0888  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF088C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BF0890  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BF0894  C0 3D 06 A0 */	lfs f1, 0x6a0(r29)
/* 80BF0898  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BF089C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80BF08A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BF08A4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BF08A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF08AC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BF08B0  EC 00 10 2A */	fadds f0, f0, f2
/* 80BF08B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF08B8  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF08BC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF08C0  4B 67 74 4D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80BF08C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF08C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF08CC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80BF08D0  7F C3 F3 78 */	mr r3, r30
/* 80BF08D4  38 81 00 20 */	addi r4, r1, 0x20
/* 80BF08D8  4B 48 3B C9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80BF08DC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BF08E0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BF08E4  FC 20 08 18 */	frsp f1, f1
/* 80BF08E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BF08EC  41 82 00 24 */	beq lbl_80BF0910
/* 80BF08F0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF08F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BF08F8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80BF08FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF0900  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BF0904  4B 67 6D 71 */	bl cM_atan2s__Fff
/* 80BF0908  7C 03 00 D0 */	neg r0, r3
/* 80BF090C  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_80BF0910:
/* 80BF0910  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BF0914  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BF0918  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF091C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF0920  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BF0924  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF0928  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF092C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF0930  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF0934  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF0938  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF093C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF0940  4B 67 73 CD */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80BF0944  7F C3 F3 78 */	mr r3, r30
/* 80BF0948  38 81 00 20 */	addi r4, r1, 0x20
/* 80BF094C  4B 48 3B 55 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80BF0950  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BF0954  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BF0958  FC 20 08 18 */	frsp f1, f1
/* 80BF095C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BF0960  41 82 00 20 */	beq lbl_80BF0980
/* 80BF0964  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF0968  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BF096C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80BF0970  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BF0974  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BF0978  4B 67 6C FD */	bl cM_atan2s__Fff
/* 80BF097C  B0 7D 05 90 */	sth r3, 0x590(r29)
lbl_80BF0980:
/* 80BF0980  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF0984  38 80 FF FF */	li r4, -1
/* 80BF0988  4B 48 6C 69 */	bl __dt__11dBgS_GndChkFv
/* 80BF098C  39 61 00 90 */	addi r11, r1, 0x90
/* 80BF0990  4B 77 18 99 */	bl _restgpr_29
/* 80BF0994  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BF0998  7C 08 03 A6 */	mtlr r0
/* 80BF099C  38 21 00 90 */	addi r1, r1, 0x90
/* 80BF09A0  4E 80 00 20 */	blr 
