lbl_806BC264:
/* 806BC264  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BC268  7C 08 02 A6 */	mflr r0
/* 806BC26C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BC270  39 61 00 30 */	addi r11, r1, 0x30
/* 806BC274  4B CA 5F 68 */	b _savegpr_29
/* 806BC278  7C 7E 1B 78 */	mr r30, r3
/* 806BC27C  3C 80 80 6C */	lis r4, lit_3917@ha
/* 806BC280  3B E4 E4 8C */	addi r31, r4, lit_3917@l
/* 806BC284  A8 03 06 80 */	lha r0, 0x680(r3)
/* 806BC288  2C 00 00 01 */	cmpwi r0, 1
/* 806BC28C  41 82 00 34 */	beq lbl_806BC2C0
/* 806BC290  40 80 00 58 */	bge lbl_806BC2E8
/* 806BC294  2C 00 00 00 */	cmpwi r0, 0
/* 806BC298  40 80 00 08 */	bge lbl_806BC2A0
/* 806BC29C  48 00 00 4C */	b lbl_806BC2E8
lbl_806BC2A0:
/* 806BC2A0  38 80 00 08 */	li r4, 8
/* 806BC2A4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806BC2A8  38 A0 00 02 */	li r5, 2
/* 806BC2AC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BC2B0  4B FF F8 61 */	bl anm_init__FP10e_fs_classifUcf
/* 806BC2B4  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 806BC2B8  38 03 00 01 */	addi r0, r3, 1
/* 806BC2BC  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BC2C0:
/* 806BC2C0  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 806BC2C4  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BC2C8  38 63 E7 B0 */	addi r3, r3, l_HIO@l
/* 806BC2CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806BC2D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC2D4  40 80 00 14 */	bge lbl_806BC2E8
/* 806BC2D8  38 00 00 03 */	li r0, 3
/* 806BC2DC  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BC2E0  38 00 00 00 */	li r0, 0
/* 806BC2E4  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BC2E8:
/* 806BC2E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BC2EC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 806BC2F0  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 806BC2F4  C0 63 05 2C */	lfs f3, 0x52c(r3)
/* 806BC2F8  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BC2FC  38 63 E7 B0 */	addi r3, r3, l_HIO@l
/* 806BC300  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 806BC304  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806BC308  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806BC30C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 806BC310  EC 61 00 2A */	fadds f3, f1, f0
/* 806BC314  EC 22 00 F2 */	fmuls f1, f2, f3
/* 806BC318  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 806BC31C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 806BC320  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806BC324  40 82 00 0C */	bne lbl_806BC330
/* 806BC328  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806BC32C  EC 20 00 F2 */	fmuls f1, f0, f3
lbl_806BC330:
/* 806BC330  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BC334  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BC338  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806BC33C  4B BB 37 00 */	b cLib_addCalc2__FPffff
/* 806BC340  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806BC344  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806BC348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC34C  4C 41 13 82 */	cror 2, 1, 2
/* 806BC350  40 82 00 30 */	bne lbl_806BC380
/* 806BC354  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E4@ha */
/* 806BC358  38 03 00 E4 */	addi r0, r3, 0x00E4 /* 0x000700E4@l */
/* 806BC35C  90 01 00 08 */	stw r0, 8(r1)
/* 806BC360  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BC364  38 81 00 08 */	addi r4, r1, 8
/* 806BC368  38 A0 00 00 */	li r5, 0
/* 806BC36C  38 C0 FF FF */	li r6, -1
/* 806BC370  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BC374  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806BC378  7D 89 03 A6 */	mtctr r12
/* 806BC37C  4E 80 04 21 */	bctrl 
lbl_806BC380:
/* 806BC380  7F C3 F3 78 */	mr r3, r30
/* 806BC384  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BC388  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 806BC38C  4B FF F9 51 */	bl way_bg_check__FP10e_fs_classfs
/* 806BC390  2C 03 00 00 */	cmpwi r3, 0
/* 806BC394  41 82 00 68 */	beq lbl_806BC3FC
/* 806BC398  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 806BC39C  28 00 00 00 */	cmplwi r0, 0
/* 806BC3A0  40 82 00 5C */	bne lbl_806BC3FC
/* 806BC3A4  3B A0 00 00 */	li r29, 0
lbl_806BC3A8:
/* 806BC3A8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806BC3AC  4B BA B5 E0 */	b cM_rndFX__Ff
/* 806BC3B0  FC 00 08 1E */	fctiwz f0, f1
/* 806BC3B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806BC3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BC3BC  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 806BC3C0  7F C3 F3 78 */	mr r3, r30
/* 806BC3C4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BC3C8  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 806BC3CC  4B FF F9 11 */	bl way_bg_check__FP10e_fs_classfs
/* 806BC3D0  2C 03 00 00 */	cmpwi r3, 0
/* 806BC3D4  40 82 00 18 */	bne lbl_806BC3EC
/* 806BC3D8  38 00 00 32 */	li r0, 0x32
/* 806BC3DC  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806BC3E0  38 00 00 01 */	li r0, 1
/* 806BC3E4  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 806BC3E8  48 00 00 30 */	b lbl_806BC418
lbl_806BC3EC:
/* 806BC3EC  3B BD 00 01 */	addi r29, r29, 1
/* 806BC3F0  2C 1D 00 64 */	cmpwi r29, 0x64
/* 806BC3F4  41 80 FF B4 */	blt lbl_806BC3A8
/* 806BC3F8  48 00 00 20 */	b lbl_806BC418
lbl_806BC3FC:
/* 806BC3FC  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 806BC400  2C 00 00 00 */	cmpwi r0, 0
/* 806BC404  40 82 00 14 */	bne lbl_806BC418
/* 806BC408  38 00 00 00 */	li r0, 0
/* 806BC40C  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 806BC410  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 806BC414  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
lbl_806BC418:
/* 806BC418  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806BC41C  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 806BC420  38 A0 00 10 */	li r5, 0x10
/* 806BC424  38 C0 04 00 */	li r6, 0x400
/* 806BC428  4B BB 41 E0 */	b cLib_addCalcAngleS2__FPssss
/* 806BC42C  39 61 00 30 */	addi r11, r1, 0x30
/* 806BC430  4B CA 5D F8 */	b _restgpr_29
/* 806BC434  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BC438  7C 08 03 A6 */	mtlr r0
/* 806BC43C  38 21 00 30 */	addi r1, r1, 0x30
/* 806BC440  4E 80 00 20 */	blr 
