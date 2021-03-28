lbl_806FBB1C:
/* 806FBB1C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 806FBB20  7C 08 02 A6 */	mflr r0
/* 806FBB24  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 806FBB28  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 806FBB2C  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 806FBB30  7C 7E 1B 78 */	mr r30, r3
/* 806FBB34  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FBB38  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FBB3C  38 61 00 48 */	addi r3, r1, 0x48
/* 806FBB40  4B 97 C1 28 */	b __ct__11dBgS_LinChkFv
/* 806FBB44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806FBB48  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806FBB4C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FBB50  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806FBB54  4B 91 08 88 */	b mDoMtx_YrotS__FPA4_fs
/* 806FBB58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FBB5C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FBB60  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FBB64  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FBB68  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806FBB6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FBB70  38 61 00 3C */	addi r3, r1, 0x3c
/* 806FBB74  38 81 00 30 */	addi r4, r1, 0x30
/* 806FBB78  4B B7 53 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 806FBB7C  38 61 00 24 */	addi r3, r1, 0x24
/* 806FBB80  38 81 00 30 */	addi r4, r1, 0x30
/* 806FBB84  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FBB88  4B B6 AF 5C */	b __pl__4cXyzCFRC3Vec
/* 806FBB8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806FBB90  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 806FBB94  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806FBB98  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 806FBB9C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806FBBA0  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806FBBA4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FBBA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FBBAC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806FBBB0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806FBBB4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806FBBB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FBBBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FBBC0  EC 01 00 2A */	fadds f0, f1, f0
/* 806FBBC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FBBC8  38 61 00 48 */	addi r3, r1, 0x48
/* 806FBBCC  38 81 00 3C */	addi r4, r1, 0x3c
/* 806FBBD0  38 BE 06 A4 */	addi r5, r30, 0x6a4
/* 806FBBD4  7F C6 F3 78 */	mr r6, r30
/* 806FBBD8  4B 97 C1 8C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806FBBDC  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 806FBBE0  2C 00 00 01 */	cmpwi r0, 1
/* 806FBBE4  41 82 01 34 */	beq lbl_806FBD18
/* 806FBBE8  40 80 00 10 */	bge lbl_806FBBF8
/* 806FBBEC  2C 00 00 00 */	cmpwi r0, 0
/* 806FBBF0  40 80 00 14 */	bge lbl_806FBC04
/* 806FBBF4  48 00 01 EC */	b lbl_806FBDE0
lbl_806FBBF8:
/* 806FBBF8  2C 00 00 03 */	cmpwi r0, 3
/* 806FBBFC  40 80 01 E4 */	bge lbl_806FBDE0
/* 806FBC00  48 00 01 BC */	b lbl_806FBDBC
lbl_806FBC04:
/* 806FBC04  7F C3 F3 78 */	mr r3, r30
/* 806FBC08  38 80 00 1B */	li r4, 0x1b
/* 806FBC0C  38 A0 00 02 */	li r5, 2
/* 806FBC10  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FBC14  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FBC18  4B FF EE 51 */	bl setBck__8daE_KK_cFiUcff
/* 806FBC1C  C0 3E 07 5C */	lfs f1, 0x75c(r30)
/* 806FBC20  4B B6 BD 6C */	b cM_rndFX__Ff
/* 806FBC24  C0 1E 07 40 */	lfs f0, 0x740(r30)
/* 806FBC28  EC 00 08 2A */	fadds f0, f0, f1
/* 806FBC2C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FBC30  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 806FBC34  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FBC38  C0 3E 07 5C */	lfs f1, 0x75c(r30)
/* 806FBC3C  4B B6 BD 50 */	b cM_rndFX__Ff
/* 806FBC40  C0 1E 07 48 */	lfs f0, 0x748(r30)
/* 806FBC44  EC 00 08 2A */	fadds f0, f0, f1
/* 806FBC48  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FBC4C  38 61 00 3C */	addi r3, r1, 0x3c
/* 806FBC50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806FBC54  7C 65 1B 78 */	mr r5, r3
/* 806FBC58  4B C4 B4 5C */	b PSVECSubtract
/* 806FBC5C  38 61 00 3C */	addi r3, r1, 0x3c
/* 806FBC60  4B B6 B4 C8 */	b atan2sX_Z__4cXyzCFv
/* 806FBC64  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806FBC68  7C 00 18 50 */	subf r0, r0, r3
/* 806FBC6C  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 806FBC70  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 806FBC74  2C 00 30 00 */	cmpwi r0, 0x3000
/* 806FBC78  40 81 00 10 */	ble lbl_806FBC88
/* 806FBC7C  38 00 30 00 */	li r0, 0x3000
/* 806FBC80  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 806FBC84  48 00 00 14 */	b lbl_806FBC98
lbl_806FBC88:
/* 806FBC88  2C 00 D0 00 */	cmpwi r0, -12288
/* 806FBC8C  40 80 00 0C */	bge lbl_806FBC98
/* 806FBC90  38 00 D0 00 */	li r0, -12288
/* 806FBC94  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_806FBC98:
/* 806FBC98  A8 7E 06 74 */	lha r3, 0x674(r30)
/* 806FBC9C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806FBCA0  7C 03 02 14 */	add r0, r3, r0
/* 806FBCA4  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 806FBCA8  7F C3 F3 78 */	mr r3, r30
/* 806FBCAC  4B FF F8 49 */	bl way_gake_check__8daE_KK_cFv
/* 806FBCB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FBCB4  41 82 00 38 */	beq lbl_806FBCEC
/* 806FBCB8  38 61 00 18 */	addi r3, r1, 0x18
/* 806FBCBC  38 9E 07 40 */	addi r4, r30, 0x740
/* 806FBCC0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FBCC4  4B B6 AE 70 */	b __mi__4cXyzCFRC3Vec
/* 806FBCC8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806FBCCC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FBCD0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806FBCD4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FBCD8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806FBCDC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FBCE0  38 61 00 3C */	addi r3, r1, 0x3c
/* 806FBCE4  4B B6 B4 44 */	b atan2sX_Z__4cXyzCFv
/* 806FBCE8  B0 7E 06 74 */	sth r3, 0x674(r30)
lbl_806FBCEC:
/* 806FBCEC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806FBCF0  4B B6 BC 64 */	b cM_rndF__Ff
/* 806FBCF4  FC 00 08 1E */	fctiwz f0, f1
/* 806FBCF8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806FBCFC  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 806FBD00  38 03 00 64 */	addi r0, r3, 0x64
/* 806FBD04  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 806FBD08  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FBD0C  38 03 00 01 */	addi r0, r3, 1
/* 806FBD10  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FBD14  48 00 00 CC */	b lbl_806FBDE0
lbl_806FBD18:
/* 806FBD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FBD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FBD20  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FBD24  38 81 00 48 */	addi r4, r1, 0x48
/* 806FBD28  4B 97 86 8C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806FBD2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FBD30  40 82 00 14 */	bne lbl_806FBD44
/* 806FBD34  7F C3 F3 78 */	mr r3, r30
/* 806FBD38  4B FF F7 BD */	bl way_gake_check__8daE_KK_cFv
/* 806FBD3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FBD40  41 82 00 70 */	beq lbl_806FBDB0
lbl_806FBD44:
/* 806FBD44  38 61 00 0C */	addi r3, r1, 0xc
/* 806FBD48  38 9E 07 40 */	addi r4, r30, 0x740
/* 806FBD4C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FBD50  4B B6 AD E4 */	b __mi__4cXyzCFRC3Vec
/* 806FBD54  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806FBD58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FBD5C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806FBD60  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FBD64  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806FBD68  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FBD6C  38 61 00 3C */	addi r3, r1, 0x3c
/* 806FBD70  4B B6 B3 B8 */	b atan2sX_Z__4cXyzCFv
/* 806FBD74  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806FBD78  7C 03 00 50 */	subf r0, r3, r0
/* 806FBD7C  7C 03 07 34 */	extsh r3, r0
/* 806FBD80  4B C6 93 50 */	b abs
/* 806FBD84  2C 03 01 00 */	cmpwi r3, 0x100
/* 806FBD88  40 81 00 28 */	ble lbl_806FBDB0
/* 806FBD8C  38 61 00 3C */	addi r3, r1, 0x3c
/* 806FBD90  4B B6 B3 98 */	b atan2sX_Z__4cXyzCFv
/* 806FBD94  B0 7E 06 74 */	sth r3, 0x674(r30)
/* 806FBD98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FBD9C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FBDA0  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FBDA4  38 03 00 01 */	addi r0, r3, 1
/* 806FBDA8  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FBDAC  48 00 00 34 */	b lbl_806FBDE0
lbl_806FBDB0:
/* 806FBDB0  7F C3 F3 78 */	mr r3, r30
/* 806FBDB4  4B FF F5 39 */	bl nextActionCheck__8daE_KK_cFv
/* 806FBDB8  48 00 00 28 */	b lbl_806FBDE0
lbl_806FBDBC:
/* 806FBDBC  A8 7E 06 74 */	lha r3, 0x674(r30)
/* 806FBDC0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806FBDC4  7C 03 00 50 */	subf r0, r3, r0
/* 806FBDC8  7C 03 07 34 */	extsh r3, r0
/* 806FBDCC  4B C6 93 04 */	b abs
/* 806FBDD0  2C 03 01 00 */	cmpwi r3, 0x100
/* 806FBDD4  41 81 00 0C */	bgt lbl_806FBDE0
/* 806FBDD8  38 00 00 01 */	li r0, 1
/* 806FBDDC  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_806FBDE0:
/* 806FBDE0  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FBDE4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 806FBDE8  40 82 00 5C */	bne lbl_806FBE44
/* 806FBDEC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FBDF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FBDF4  FC 00 00 1E */	fctiwz f0, f0
/* 806FBDF8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806FBDFC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806FBE00  2C 00 00 19 */	cmpwi r0, 0x19
/* 806FBE04  41 82 00 14 */	beq lbl_806FBE18
/* 806FBE08  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806FBE0C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806FBE10  2C 00 00 31 */	cmpwi r0, 0x31
/* 806FBE14  40 82 00 30 */	bne lbl_806FBE44
lbl_806FBE18:
/* 806FBE18  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037D@ha */
/* 806FBE1C  38 03 03 7D */	addi r0, r3, 0x037D /* 0x0007037D@l */
/* 806FBE20  90 01 00 08 */	stw r0, 8(r1)
/* 806FBE24  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FBE28  38 81 00 08 */	addi r4, r1, 8
/* 806FBE2C  38 A0 00 00 */	li r5, 0
/* 806FBE30  38 C0 FF FF */	li r6, -1
/* 806FBE34  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FBE38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FBE3C  7D 89 03 A6 */	mtctr r12
/* 806FBE40  4E 80 04 21 */	bctrl 
lbl_806FBE44:
/* 806FBE44  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806FBE48  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806FBE4C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806FBE50  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 806FBE54  4B B7 3B E8 */	b cLib_addCalc2__FPffff
/* 806FBE58  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806FBE5C  A8 9E 06 74 */	lha r4, 0x674(r30)
/* 806FBE60  38 A0 00 08 */	li r5, 8
/* 806FBE64  38 C0 05 00 */	li r6, 0x500
/* 806FBE68  4B B7 47 A0 */	b cLib_addCalcAngleS2__FPssss
/* 806FBE6C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806FBE70  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806FBE74  38 61 00 48 */	addi r3, r1, 0x48
/* 806FBE78  38 80 FF FF */	li r4, -1
/* 806FBE7C  4B 97 BE 60 */	b __dt__11dBgS_LinChkFv
/* 806FBE80  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 806FBE84  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 806FBE88  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 806FBE8C  7C 08 03 A6 */	mtlr r0
/* 806FBE90  38 21 00 D0 */	addi r1, r1, 0xd0
/* 806FBE94  4E 80 00 20 */	blr 
