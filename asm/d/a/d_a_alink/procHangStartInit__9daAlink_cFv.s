lbl_800FAA7C:
/* 800FAA7C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800FAA80  7C 08 02 A6 */	mflr r0
/* 800FAA84  90 01 00 54 */	stw r0, 0x54(r1)
/* 800FAA88  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800FAA8C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800FAA90  7C 7F 1B 78 */	mr r31, r3
/* 800FAA94  38 61 00 18 */	addi r3, r1, 0x18
/* 800FAA98  38 9F 34 EC */	addi r4, r31, 0x34ec
/* 800FAA9C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800FAAA0  48 16 C0 95 */	bl __mi__4cXyzCFRC3Vec
/* 800FAAA4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800FAAA8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800FAAAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800FAAB0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800FAAB4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800FAAB8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800FAABC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800FAAC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FAAC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FAAC8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800FAACC  38 61 00 0C */	addi r3, r1, 0xc
/* 800FAAD0  48 24 C6 69 */	bl PSVECSquareMag
/* 800FAAD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FAAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FAADC  40 81 00 58 */	ble lbl_800FAB34
/* 800FAAE0  FC 00 08 34 */	frsqrte f0, f1
/* 800FAAE4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800FAAE8  FC 44 00 32 */	fmul f2, f4, f0
/* 800FAAEC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800FAAF0  FC 00 00 32 */	fmul f0, f0, f0
/* 800FAAF4  FC 01 00 32 */	fmul f0, f1, f0
/* 800FAAF8  FC 03 00 28 */	fsub f0, f3, f0
/* 800FAAFC  FC 02 00 32 */	fmul f0, f2, f0
/* 800FAB00  FC 44 00 32 */	fmul f2, f4, f0
/* 800FAB04  FC 00 00 32 */	fmul f0, f0, f0
/* 800FAB08  FC 01 00 32 */	fmul f0, f1, f0
/* 800FAB0C  FC 03 00 28 */	fsub f0, f3, f0
/* 800FAB10  FC 02 00 32 */	fmul f0, f2, f0
/* 800FAB14  FC 44 00 32 */	fmul f2, f4, f0
/* 800FAB18  FC 00 00 32 */	fmul f0, f0, f0
/* 800FAB1C  FC 01 00 32 */	fmul f0, f1, f0
/* 800FAB20  FC 03 00 28 */	fsub f0, f3, f0
/* 800FAB24  FC 02 00 32 */	fmul f0, f2, f0
/* 800FAB28  FC 21 00 32 */	fmul f1, f1, f0
/* 800FAB2C  FC 20 08 18 */	frsp f1, f1
/* 800FAB30  48 00 00 88 */	b lbl_800FABB8
lbl_800FAB34:
/* 800FAB34  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800FAB38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FAB3C  40 80 00 10 */	bge lbl_800FAB4C
/* 800FAB40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800FAB44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800FAB48  48 00 00 70 */	b lbl_800FABB8
lbl_800FAB4C:
/* 800FAB4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800FAB50  80 81 00 08 */	lwz r4, 8(r1)
/* 800FAB54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800FAB58  3C 00 7F 80 */	lis r0, 0x7f80
/* 800FAB5C  7C 03 00 00 */	cmpw r3, r0
/* 800FAB60  41 82 00 14 */	beq lbl_800FAB74
/* 800FAB64  40 80 00 40 */	bge lbl_800FABA4
/* 800FAB68  2C 03 00 00 */	cmpwi r3, 0
/* 800FAB6C  41 82 00 20 */	beq lbl_800FAB8C
/* 800FAB70  48 00 00 34 */	b lbl_800FABA4
lbl_800FAB74:
/* 800FAB74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800FAB78  41 82 00 0C */	beq lbl_800FAB84
/* 800FAB7C  38 00 00 01 */	li r0, 1
/* 800FAB80  48 00 00 28 */	b lbl_800FABA8
lbl_800FAB84:
/* 800FAB84  38 00 00 02 */	li r0, 2
/* 800FAB88  48 00 00 20 */	b lbl_800FABA8
lbl_800FAB8C:
/* 800FAB8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800FAB90  41 82 00 0C */	beq lbl_800FAB9C
/* 800FAB94  38 00 00 05 */	li r0, 5
/* 800FAB98  48 00 00 10 */	b lbl_800FABA8
lbl_800FAB9C:
/* 800FAB9C  38 00 00 03 */	li r0, 3
/* 800FABA0  48 00 00 08 */	b lbl_800FABA8
lbl_800FABA4:
/* 800FABA4  38 00 00 04 */	li r0, 4
lbl_800FABA8:
/* 800FABA8  2C 00 00 01 */	cmpwi r0, 1
/* 800FABAC  40 82 00 0C */	bne lbl_800FABB8
/* 800FABB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800FABB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800FABB8:
/* 800FABB8  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 800FABBC  C0 1F 18 E4 */	lfs f0, 0x18e4(r31)
/* 800FABC0  EC 02 00 2A */	fadds f0, f2, f0
/* 800FABC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FABC8  40 81 00 0C */	ble lbl_800FABD4
/* 800FABCC  38 60 00 00 */	li r3, 0
/* 800FABD0  48 00 02 2C */	b lbl_800FADFC
lbl_800FABD4:
/* 800FABD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FABD8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800FABDC  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800FABE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FABE4  7C 64 02 14 */	add r3, r4, r0
/* 800FABE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FABEC  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800FABF0  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 800FABF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FABF8  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FABFC  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800FAC00  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FAC04  EC 61 00 2A */	fadds f3, f1, f0
/* 800FAC08  7C 04 04 2E */	lfsx f0, r4, r0
/* 800FAC0C  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800FAC10  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FAC14  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FAC18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800FAC1C  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 800FAC20  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 800FAC24  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FAC28  38 81 00 24 */	addi r4, r1, 0x24
/* 800FAC2C  48 16 D0 FD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FAC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FAC34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FAC38  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800FAC3C  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FAC40  4B F7 98 61 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FAC44  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800FAC48  FC 20 08 18 */	frsp f1, f1
/* 800FAC4C  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FAC50  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FAC54  FC 00 02 10 */	fabs f0, f0
/* 800FAC58  FC 20 00 18 */	frsp f1, f0
/* 800FAC5C  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800FAC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FAC64  40 81 00 0C */	ble lbl_800FAC70
/* 800FAC68  38 60 00 00 */	li r3, 0
/* 800FAC6C  48 00 01 90 */	b lbl_800FADFC
lbl_800FAC70:
/* 800FAC70  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FAC74  20 00 00 5C */	subfic r0, r0, 0x5c
/* 800FAC78  7C 00 00 34 */	cntlzw r0, r0
/* 800FAC7C  54 1E DE 3E */	rlwinm r30, r0, 0x1b, 0x18, 0x1f
/* 800FAC80  7F E3 FB 78 */	mr r3, r31
/* 800FAC84  38 80 00 55 */	li r4, 0x55
/* 800FAC88  4B FC 72 E5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FAC8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FAC90  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FAC94  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800FAC98  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FAC9C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800FACA0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FACA4  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800FACA8  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800FACAC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800FACB0  7F E3 FB 78 */	mr r3, r31
/* 800FACB4  4B FF F9 15 */	bl checkHangFootWall__9daAlink_cFv
/* 800FACB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FACBC  41 82 00 B4 */	beq lbl_800FAD70
/* 800FACC0  2C 1E 00 00 */	cmpwi r30, 0
/* 800FACC4  40 82 00 5C */	bne lbl_800FAD20
/* 800FACC8  48 16 CB A5 */	bl cM_rnd__Fv
/* 800FACCC  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800FACD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FACD4  40 80 00 4C */	bge lbl_800FAD20
/* 800FACD8  7F E3 FB 78 */	mr r3, r31
/* 800FACDC  38 80 00 A7 */	li r4, 0xa7
/* 800FACE0  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha
/* 800FACE4  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l
/* 800FACE8  38 A5 00 14 */	addi r5, r5, 0x14
/* 800FACEC  4B FB 24 09 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FACF0  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha
/* 800FACF4  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l
/* 800FACF8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800FACFC  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800FAD00  7F E3 FB 78 */	mr r3, r31
/* 800FAD04  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000B@ha */
/* 800FAD08  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0001000B@l */
/* 800FAD0C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800FAD10  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FAD14  7D 89 03 A6 */	mtctr r12
/* 800FAD18  4E 80 04 21 */	bctrl 
/* 800FAD1C  48 00 00 44 */	b lbl_800FAD60
lbl_800FAD20:
/* 800FAD20  7F E3 FB 78 */	mr r3, r31
/* 800FAD24  38 80 00 A1 */	li r4, 0xa1
/* 800FAD28  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha
/* 800FAD2C  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l
/* 800FAD30  4B FB 23 C5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FAD34  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha
/* 800FAD38  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l
/* 800FAD3C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800FAD40  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800FAD44  7F E3 FB 78 */	mr r3, r31
/* 800FAD48  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010057@ha */
/* 800FAD4C  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x00010057@l */
/* 800FAD50  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800FAD54  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FAD58  7D 89 03 A6 */	mtctr r12
/* 800FAD5C  4E 80 04 21 */	bctrl 
lbl_800FAD60:
/* 800FAD60  38 00 00 FE */	li r0, 0xfe
/* 800FAD64  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800FAD68  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800FAD6C  48 00 00 44 */	b lbl_800FADB0
lbl_800FAD70:
/* 800FAD70  7F E3 FB 78 */	mr r3, r31
/* 800FAD74  38 80 00 92 */	li r4, 0x92
/* 800FAD78  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FAD7C  38 A5 E1 64 */	addi r5, r5, m__23daAlinkHIO_wallCatch_c0@l
/* 800FAD80  4B FB 23 75 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FAD84  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FAD88  38 63 E1 64 */	addi r3, r3, m__23daAlinkHIO_wallCatch_c0@l
/* 800FAD8C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800FAD90  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800FAD94  7F E3 FB 78 */	mr r3, r31
/* 800FAD98  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010057@ha */
/* 800FAD9C  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x00010057@l */
/* 800FADA0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800FADA4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FADA8  7D 89 03 A6 */	mtctr r12
/* 800FADAC  4E 80 04 21 */	bctrl 
lbl_800FADB0:
/* 800FADB0  7F E3 FB 78 */	mr r3, r31
/* 800FADB4  4B FE 4E 75 */	bl setBowHangAnime__9daAlink_cFv
/* 800FADB8  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 800FADBC  3C 63 00 01 */	addis r3, r3, 1
/* 800FADC0  38 03 80 00 */	addi r0, r3, -32768
/* 800FADC4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FADC8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FADCC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FADD0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FADD4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FADD8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FADDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FADE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FADE4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FADE8  60 00 01 00 */	ori r0, r0, 0x100
/* 800FADEC  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FADF0  7F E3 FB 78 */	mr r3, r31
/* 800FADF4  4B FF F8 F1 */	bl setHangGroundY__9daAlink_cFv
/* 800FADF8  38 60 00 01 */	li r3, 1
lbl_800FADFC:
/* 800FADFC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800FAE00  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800FAE04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800FAE08  7C 08 03 A6 */	mtlr r0
/* 800FAE0C  38 21 00 50 */	addi r1, r1, 0x50
/* 800FAE10  4E 80 00 20 */	blr 
