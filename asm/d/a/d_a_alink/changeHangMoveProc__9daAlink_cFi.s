lbl_800FA338:
/* 800FA338  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800FA33C  7C 08 02 A6 */	mflr r0
/* 800FA340  90 01 00 64 */	stw r0, 0x64(r1)
/* 800FA344  39 61 00 60 */	addi r11, r1, 0x60
/* 800FA348  48 26 7E 91 */	bl _savegpr_28
/* 800FA34C  7C 7E 1B 78 */	mr r30, r3
/* 800FA350  7C 9C 23 78 */	mr r28, r4
/* 800FA354  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800FA358  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FA35C  41 82 00 24 */	beq lbl_800FA380
/* 800FA360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FA364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FA368  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800FA36C  7F E3 FB 78 */	mr r3, r31
/* 800FA370  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800FA374  4B F7 A2 ED */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800FA378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA37C  40 82 00 0C */	bne lbl_800FA388
lbl_800FA380:
/* 800FA380  38 60 00 00 */	li r3, 0
/* 800FA384  48 00 02 2C */	b lbl_800FA5B0
lbl_800FA388:
/* 800FA388  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA38C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA390  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FA394  7F E3 FB 78 */	mr r3, r31
/* 800FA398  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800FA39C  38 A1 00 38 */	addi r5, r1, 0x38
/* 800FA3A0  4B F7 A3 A5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FA3A4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 800FA3A8  C0 02 95 4C */	lfs f0, lit_23542(r2)
/* 800FA3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FA3B0  40 80 00 18 */	bge lbl_800FA3C8
/* 800FA3B4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA3B8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA3BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FA3C0  38 60 00 00 */	li r3, 0
/* 800FA3C4  48 00 01 EC */	b lbl_800FA5B0
lbl_800FA3C8:
/* 800FA3C8  2C 1C 00 02 */	cmpwi r28, 2
/* 800FA3CC  40 82 00 14 */	bne lbl_800FA3E0
/* 800FA3D0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800FA3D4  38 03 40 00 */	addi r0, r3, 0x4000
/* 800FA3D8  7C 1C 07 34 */	extsh r28, r0
/* 800FA3DC  48 00 00 20 */	b lbl_800FA3FC
lbl_800FA3E0:
/* 800FA3E0  2C 1C 00 03 */	cmpwi r28, 3
/* 800FA3E4  40 82 00 14 */	bne lbl_800FA3F8
/* 800FA3E8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800FA3EC  38 03 C0 00 */	addi r0, r3, -16384
/* 800FA3F0  7C 1C 07 34 */	extsh r28, r0
/* 800FA3F4  48 00 00 08 */	b lbl_800FA3FC
lbl_800FA3F8:
/* 800FA3F8  AB 9E 04 DE */	lha r28, 0x4de(r30)
lbl_800FA3FC:
/* 800FA3FC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800FA400  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800FA404  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FA408  EC 21 00 2A */	fadds f1, f1, f0
/* 800FA40C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800FA410  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800FA414  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800FA418  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800FA41C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800FA420  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FA424  41 82 00 0C */	beq lbl_800FA430
/* 800FA428  C0 42 93 D4 */	lfs f2, lit_11442(r2)
/* 800FA42C  48 00 00 08 */	b lbl_800FA434
lbl_800FA430:
/* 800FA430  C0 42 92 9C */	lfs f2, lit_5944(r2)
lbl_800FA434:
/* 800FA434  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800FA438  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 800FA43C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FA440  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FA444  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FA448  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FA44C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FA450  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800FA454  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800FA458  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800FA45C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800FA460  3B A3 00 04 */	addi r29, r3, 4
/* 800FA464  7C 1D 04 2E */	lfsx f0, r29, r0
/* 800FA468  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FA46C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FA470  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800FA474  7F C3 F3 78 */	mr r3, r30
/* 800FA478  38 81 00 2C */	addi r4, r1, 0x2c
/* 800FA47C  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FA480  4B FA 7D 19 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FA484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA488  41 82 00 18 */	beq lbl_800FA4A0
/* 800FA48C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA490  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA494  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FA498  38 60 00 00 */	li r3, 0
/* 800FA49C  48 00 01 14 */	b lbl_800FA5B0
lbl_800FA4A0:
/* 800FA4A0  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 800FA4A4  38 81 00 20 */	addi r4, r1, 0x20
/* 800FA4A8  48 16 D8 81 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FA4AC  7F E3 FB 78 */	mr r3, r31
/* 800FA4B0  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 800FA4B4  4B F7 9F ED */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FA4B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 800FA4BC  EC 01 10 28 */	fsubs f0, f1, f2
/* 800FA4C0  FC 00 02 10 */	fabs f0, f0
/* 800FA4C4  FC 20 00 18 */	frsp f1, f0
/* 800FA4C8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800FA4CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FA4D0  40 81 00 BC */	ble lbl_800FA58C
/* 800FA4D4  EC 42 00 28 */	fsubs f2, f2, f0
/* 800FA4D8  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 800FA4DC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 800FA4E0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800FA4E4  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 800FA4E8  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800FA4EC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FA4F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FA4F4  7C 7D 04 2E */	lfsx f3, r29, r0
/* 800FA4F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FA4FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FA500  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FA504  C0 22 94 80 */	lfs f1, lit_16036(r2)
/* 800FA508  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FA50C  EC 04 00 2A */	fadds f0, f4, f0
/* 800FA510  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FA514  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800FA518  EC 01 00 F2 */	fmuls f0, f1, f3
/* 800FA51C  EC 05 00 2A */	fadds f0, f5, f0
/* 800FA520  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FA524  7F C3 F3 78 */	mr r3, r30
/* 800FA528  38 81 00 14 */	addi r4, r1, 0x14
/* 800FA52C  38 A1 00 08 */	addi r5, r1, 8
/* 800FA530  4B FA 7C 69 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FA534  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA538  40 82 00 18 */	bne lbl_800FA550
/* 800FA53C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA540  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA544  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FA548  38 60 00 00 */	li r3, 0
/* 800FA54C  48 00 00 64 */	b lbl_800FA5B0
lbl_800FA550:
/* 800FA550  7F E3 FB 78 */	mr r3, r31
/* 800FA554  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FA558  38 A1 00 38 */	addi r5, r1, 0x38
/* 800FA55C  4B F7 A1 E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FA560  38 61 00 38 */	addi r3, r1, 0x38
/* 800FA564  48 16 CB C5 */	bl atan2sX_Z__4cXyzCFv
/* 800FA568  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800FA56C  48 17 68 B9 */	bl cLib_distanceAngleS__Fss
/* 800FA570  2C 03 54 9F */	cmpwi r3, 0x549f
/* 800FA574  40 80 00 18 */	bge lbl_800FA58C
/* 800FA578  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA57C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA580  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FA584  38 60 00 00 */	li r3, 0
/* 800FA588  48 00 00 28 */	b lbl_800FA5B0
lbl_800FA58C:
/* 800FA58C  7F C3 F3 78 */	mr r3, r30
/* 800FA590  7F 84 E3 78 */	mr r4, r28
/* 800FA594  38 A0 00 00 */	li r5, 0
/* 800FA598  4B FF FA D9 */	bl hangMoveBgCheck__9daAlink_cFsP4cXyz
/* 800FA59C  7C 60 00 34 */	cntlzw r0, r3
/* 800FA5A0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800FA5A4  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA5A8  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA5AC  90 01 00 48 */	stw r0, 0x48(r1)
lbl_800FA5B0:
/* 800FA5B0  39 61 00 60 */	addi r11, r1, 0x60
/* 800FA5B4  48 26 7C 71 */	bl _restgpr_28
/* 800FA5B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800FA5BC  7C 08 03 A6 */	mtlr r0
/* 800FA5C0  38 21 00 60 */	addi r1, r1, 0x60
/* 800FA5C4  4E 80 00 20 */	blr 
