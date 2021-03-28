lbl_807F3C10:
/* 807F3C10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807F3C14  7C 08 02 A6 */	mflr r0
/* 807F3C18  90 01 00 84 */	stw r0, 0x84(r1)
/* 807F3C1C  39 61 00 80 */	addi r11, r1, 0x80
/* 807F3C20  4B B6 E5 BC */	b _savegpr_29
/* 807F3C24  7C 7E 1B 78 */	mr r30, r3
/* 807F3C28  3C 60 80 7F */	lis r3, lit_3788@ha
/* 807F3C2C  3B E3 7A 00 */	addi r31, r3, lit_3788@l
/* 807F3C30  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 807F3C34  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807F3C38  40 82 00 40 */	bne lbl_807F3C78
/* 807F3C3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F3C40  4B A7 3D 14 */	b cM_rndF__Ff
/* 807F3C44  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 807F3C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F3C4C  40 80 00 2C */	bge lbl_807F3C78
/* 807F3C50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070087@ha */
/* 807F3C54  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00070087@l */
/* 807F3C58  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F3C5C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F3C60  38 81 00 0C */	addi r4, r1, 0xc
/* 807F3C64  38 A0 FF FF */	li r5, -1
/* 807F3C68  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F3C6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F3C70  7D 89 03 A6 */	mtctr r12
/* 807F3C74  4E 80 04 21 */	bctrl 
lbl_807F3C78:
/* 807F3C78  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 807F3C7C  2C 00 00 00 */	cmpwi r0, 0
/* 807F3C80  41 82 00 FC */	beq lbl_807F3D7C
/* 807F3C84  40 80 00 10 */	bge lbl_807F3C94
/* 807F3C88  2C 00 FF FF */	cmpwi r0, -1
/* 807F3C8C  40 80 00 14 */	bge lbl_807F3CA0
/* 807F3C90  48 00 03 D4 */	b lbl_807F4064
lbl_807F3C94:
/* 807F3C94  2C 00 00 02 */	cmpwi r0, 2
/* 807F3C98  40 80 03 CC */	bge lbl_807F4064
/* 807F3C9C  48 00 01 B4 */	b lbl_807F3E50
lbl_807F3CA0:
/* 807F3CA0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F3CA4  38 80 00 01 */	li r4, 1
/* 807F3CA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F3CAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F3CB0  40 82 00 18 */	bne lbl_807F3CC8
/* 807F3CB4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807F3CB8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F3CBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F3CC0  41 82 00 08 */	beq lbl_807F3CC8
/* 807F3CC4  38 80 00 00 */	li r4, 0
lbl_807F3CC8:
/* 807F3CC8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F3CCC  41 82 00 10 */	beq lbl_807F3CDC
/* 807F3CD0  38 00 00 00 */	li r0, 0
/* 807F3CD4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F3CD8  48 00 00 A4 */	b lbl_807F3D7C
lbl_807F3CDC:
/* 807F3CDC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F3CE0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807F3CE4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807F3CE8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807F3CEC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807F3CF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807F3CF4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F3CF8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807F3CFC  80 63 00 00 */	lwz r3, 0(r3)
/* 807F3D00  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807F3D04  4B 81 86 D8 */	b mDoMtx_YrotS__FPA4_fs
/* 807F3D08  38 61 00 40 */	addi r3, r1, 0x40
/* 807F3D0C  38 81 00 34 */	addi r4, r1, 0x34
/* 807F3D10  4B A7 D1 DC */	b MtxPosition__FP4cXyzP4cXyz
/* 807F3D14  38 61 00 1C */	addi r3, r1, 0x1c
/* 807F3D18  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807F3D1C  38 A1 00 34 */	addi r5, r1, 0x34
/* 807F3D20  4B A7 2D C4 */	b __pl__4cXyzCFRC3Vec
/* 807F3D24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807F3D28  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807F3D2C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807F3D30  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807F3D34  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807F3D38  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807F3D3C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F3D40  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 807F3D44  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 807F3D48  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807F3D4C  4B A7 BC F0 */	b cLib_addCalc2__FPffff
/* 807F3D50  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807F3D54  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807F3D58  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 807F3D5C  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807F3D60  4B A7 BC DC */	b cLib_addCalc2__FPffff
/* 807F3D64  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807F3D68  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807F3D6C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 807F3D70  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807F3D74  4B A7 BC C8 */	b cLib_addCalc2__FPffff
/* 807F3D78  48 00 02 EC */	b lbl_807F4064
lbl_807F3D7C:
/* 807F3D7C  7F C3 F3 78 */	mr r3, r30
/* 807F3D80  38 80 00 13 */	li r4, 0x13
/* 807F3D84  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807F3D88  38 A0 00 02 */	li r5, 2
/* 807F3D8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F3D90  4B FF F0 91 */	bl anm_init__FP10e_yd_classifUcf
/* 807F3D94  7F C3 F3 78 */	mr r3, r30
/* 807F3D98  38 80 00 15 */	li r4, 0x15
/* 807F3D9C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807F3DA0  38 A0 00 02 */	li r5, 2
/* 807F3DA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F3DA8  4B FF F1 25 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F3DAC  38 00 00 01 */	li r0, 1
/* 807F3DB0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F3DB4  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 807F3DB8  28 00 00 01 */	cmplwi r0, 1
/* 807F3DBC  40 82 00 28 */	bne lbl_807F3DE4
/* 807F3DC0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807F3DC4  4B A7 3B 90 */	b cM_rndF__Ff
/* 807F3DC8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807F3DCC  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3DD0  FC 00 00 1E */	fctiwz f0, f0
/* 807F3DD4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807F3DD8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807F3DDC  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807F3DE0  48 00 00 64 */	b lbl_807F3E44
lbl_807F3DE4:
/* 807F3DE4  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807F3DE8  3B A3 7D 78 */	addi r29, r3, l_HIO@l
/* 807F3DEC  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 807F3DF0  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 807F3DF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807F3DF8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807F3DFC  3C 00 43 30 */	lis r0, 0x4330
/* 807F3E00  90 01 00 58 */	stw r0, 0x58(r1)
/* 807F3E04  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 807F3E08  EC 20 08 28 */	fsubs f1, f0, f1
/* 807F3E0C  4B A7 3B 48 */	b cM_rndF__Ff
/* 807F3E10  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 807F3E14  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 807F3E18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807F3E1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 807F3E20  3C 00 43 30 */	lis r0, 0x4330
/* 807F3E24  90 01 00 60 */	stw r0, 0x60(r1)
/* 807F3E28  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 807F3E2C  EC 00 10 28 */	fsubs f0, f0, f2
/* 807F3E30  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3E34  FC 00 00 1E */	fctiwz f0, f0
/* 807F3E38  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807F3E3C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807F3E40  B0 1E 06 9E */	sth r0, 0x69e(r30)
lbl_807F3E44:
/* 807F3E44  38 00 00 00 */	li r0, 0
/* 807F3E48  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807F3E4C  48 00 02 18 */	b lbl_807F4064
lbl_807F3E50:
/* 807F3E50  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807F3E54  2C 00 00 00 */	cmpwi r0, 0
/* 807F3E58  40 82 00 9C */	bne lbl_807F3EF4
/* 807F3E5C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807F3E60  4B A7 3A F4 */	b cM_rndF__Ff
/* 807F3E64  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807F3E68  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3E6C  FC 00 00 1E */	fctiwz f0, f0
/* 807F3E70  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807F3E74  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807F3E78  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807F3E7C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F3E80  4B A7 3B 0C */	b cM_rndFX__Ff
/* 807F3E84  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807F3E88  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3E8C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807F3E90  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F3E94  4B A7 3A F8 */	b cM_rndFX__Ff
/* 807F3E98  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807F3E9C  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3EA0  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807F3EA4  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F3EA8  7C 00 07 75 */	extsb. r0, r0
/* 807F3EAC  41 82 00 24 */	beq lbl_807F3ED0
/* 807F3EB0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807F3EB4  4B A7 3A D8 */	b cM_rndFX__Ff
/* 807F3EB8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807F3EBC  EC 20 08 2A */	fadds f1, f0, f1
/* 807F3EC0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807F3EC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F3EC8  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807F3ECC  48 00 00 20 */	b lbl_807F3EEC
lbl_807F3ED0:
/* 807F3ED0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807F3ED4  4B A7 3A B8 */	b cM_rndFX__Ff
/* 807F3ED8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807F3EDC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807F3EE0  EC 02 00 2A */	fadds f0, f2, f0
/* 807F3EE4  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3EE8  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807F3EEC:
/* 807F3EEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F3EF0  D0 1E 06 94 */	stfs f0, 0x694(r30)
lbl_807F3EF4:
/* 807F3EF4  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 807F3EF8  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 807F3EFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F3F00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807F3F04  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807F3F08  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F3F0C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807F3F10  EC 22 00 32 */	fmuls f1, f2, f0
/* 807F3F14  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 807F3F18  1C 04 08 98 */	mulli r0, r4, 0x898
/* 807F3F1C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F3F20  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F3F24  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F3F28  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807F3F2C  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 807F3F30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F3F34  7C 63 02 14 */	add r3, r3, r0
/* 807F3F38  C0 03 00 04 */	lfs f0, 4(r3)
/* 807F3F3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F3F40  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807F3F44  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F3F48  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 807F3F4C  EC 20 08 2A */	fadds f1, f0, f1
/* 807F3F50  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F3F54  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F3F58  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F3F5C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3F60  4B A7 BA DC */	b cLib_addCalc2__FPffff
/* 807F3F64  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807F3F68  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807F3F6C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807F3F70  EC 21 00 2A */	fadds f1, f1, f0
/* 807F3F74  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F3F78  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F3F7C  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F3F80  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3F84  4B A7 BA B8 */	b cLib_addCalc2__FPffff
/* 807F3F88  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807F3F8C  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807F3F90  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807F3F94  EC 21 00 2A */	fadds f1, f1, f0
/* 807F3F98  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F3F9C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F3FA0  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F3FA4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3FA8  4B A7 BA 94 */	b cLib_addCalc2__FPffff
/* 807F3FAC  38 7E 06 94 */	addi r3, r30, 0x694
/* 807F3FB0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F3FB4  FC 40 08 90 */	fmr f2, f1
/* 807F3FB8  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807F3FBC  4B A7 BA 80 */	b cLib_addCalc2__FPffff
/* 807F3FC0  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 807F3FC4  2C 00 00 00 */	cmpwi r0, 0
/* 807F3FC8  40 82 00 9C */	bne lbl_807F4064
/* 807F3FCC  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 807F3FD0  28 00 00 01 */	cmplwi r0, 1
/* 807F3FD4  41 82 00 60 */	beq lbl_807F4034
/* 807F3FD8  7F C3 F3 78 */	mr r3, r30
/* 807F3FDC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F3FE0  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 807F3FE4  EC 21 00 2A */	fadds f1, f1, f0
/* 807F3FE8  4B FF F1 81 */	bl pl_check__FP10e_yd_classf
/* 807F3FEC  2C 03 00 00 */	cmpwi r3, 0
/* 807F3FF0  40 82 00 44 */	bne lbl_807F4034
/* 807F3FF4  38 00 00 00 */	li r0, 0
/* 807F3FF8  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F3FFC  38 00 00 02 */	li r0, 2
/* 807F4000  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F4004  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008D@ha */
/* 807F4008  38 03 00 8D */	addi r0, r3, 0x008D /* 0x0007008D@l */
/* 807F400C  90 01 00 08 */	stw r0, 8(r1)
/* 807F4010  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F4014  38 81 00 08 */	addi r4, r1, 8
/* 807F4018  38 A0 00 00 */	li r5, 0
/* 807F401C  38 C0 FF FF */	li r6, -1
/* 807F4020  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F4024  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F4028  7D 89 03 A6 */	mtctr r12
/* 807F402C  4E 80 04 21 */	bctrl 
/* 807F4030  48 00 00 34 */	b lbl_807F4064
lbl_807F4034:
/* 807F4034  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 807F4038  2C 00 00 00 */	cmpwi r0, 0
/* 807F403C  40 82 00 28 */	bne lbl_807F4064
/* 807F4040  7F C3 F3 78 */	mr r3, r30
/* 807F4044  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807F4048  4B FF F1 21 */	bl pl_check__FP10e_yd_classf
/* 807F404C  2C 03 00 00 */	cmpwi r3, 0
/* 807F4050  41 82 00 14 */	beq lbl_807F4064
/* 807F4054  38 00 00 04 */	li r0, 4
/* 807F4058  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F405C  38 00 00 00 */	li r0, 0
/* 807F4060  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F4064:
/* 807F4064  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F4068  7C 00 07 75 */	extsb. r0, r0
/* 807F406C  41 82 00 AC */	beq lbl_807F4118
/* 807F4070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F4074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F4078  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 807F407C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807F4080  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807F4084  3C 84 00 01 */	addis r4, r4, 1
/* 807F4088  38 04 80 00 */	addi r0, r4, -32768
/* 807F408C  7C 04 07 34 */	extsh r4, r0
/* 807F4090  38 A0 00 08 */	li r5, 8
/* 807F4094  38 C0 08 00 */	li r6, 0x800
/* 807F4098  4B A7 C5 70 */	b cLib_addCalcAngleS2__FPssss
/* 807F409C  38 61 00 10 */	addi r3, r1, 0x10
/* 807F40A0  38 9D 05 38 */	addi r4, r29, 0x538
/* 807F40A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807F40A8  4B A7 2A 8C */	b __mi__4cXyzCFRC3Vec
/* 807F40AC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 807F40B0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807F40B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807F40B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807F40BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F40C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807F40C4  EC 21 00 72 */	fmuls f1, f1, f1
/* 807F40C8  EC 00 00 32 */	fmuls f0, f0, f0
/* 807F40CC  EC 41 00 2A */	fadds f2, f1, f0
/* 807F40D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F40D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807F40D8  40 81 00 0C */	ble lbl_807F40E4
/* 807F40DC  FC 00 10 34 */	frsqrte f0, f2
/* 807F40E0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F40E4:
/* 807F40E4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 807F40E8  4B A7 35 8C */	b cM_atan2s__Fff
/* 807F40EC  7C 64 07 34 */	extsh r4, r3
/* 807F40F0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F40F4  3C 84 00 01 */	addis r4, r4, 1
/* 807F40F8  38 04 80 00 */	addi r0, r4, -32768
/* 807F40FC  7C 04 07 34 */	extsh r4, r0
/* 807F4100  38 A0 00 08 */	li r5, 8
/* 807F4104  38 C0 04 00 */	li r6, 0x400
/* 807F4108  4B A7 C5 00 */	b cLib_addCalcAngleS2__FPssss
/* 807F410C  38 00 00 01 */	li r0, 1
/* 807F4110  98 1E 0B 10 */	stb r0, 0xb10(r30)
/* 807F4114  48 00 00 2C */	b lbl_807F4140
lbl_807F4118:
/* 807F4118  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807F411C  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807F4120  38 A0 00 08 */	li r5, 8
/* 807F4124  38 C0 08 00 */	li r6, 0x800
/* 807F4128  4B A7 C4 E0 */	b cLib_addCalcAngleS2__FPssss
/* 807F412C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F4130  38 80 00 00 */	li r4, 0
/* 807F4134  38 A0 00 08 */	li r5, 8
/* 807F4138  38 C0 04 00 */	li r6, 0x400
/* 807F413C  4B A7 C4 CC */	b cLib_addCalcAngleS2__FPssss
lbl_807F4140:
/* 807F4140  39 61 00 80 */	addi r11, r1, 0x80
/* 807F4144  4B B6 E0 E4 */	b _restgpr_29
/* 807F4148  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807F414C  7C 08 03 A6 */	mtlr r0
/* 807F4150  38 21 00 80 */	addi r1, r1, 0x80
/* 807F4154  4E 80 00 20 */	blr 
