lbl_800FBE04:
/* 800FBE04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800FBE08  7C 08 02 A6 */	mflr r0
/* 800FBE0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800FBE10  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800FBE14  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800FBE18  7C 7F 1B 78 */	mr r31, r3
/* 800FBE1C  38 61 00 18 */	addi r3, r1, 0x18
/* 800FBE20  38 9F 34 EC */	addi r4, r31, 0x34ec
/* 800FBE24  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800FBE28  48 16 AD 0D */	bl __mi__4cXyzCFRC3Vec
/* 800FBE2C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800FBE30  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800FBE34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800FBE38  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800FBE3C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800FBE40  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800FBE44  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800FBE48  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FBE4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FBE50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800FBE54  38 61 00 0C */	addi r3, r1, 0xc
/* 800FBE58  48 24 B2 E1 */	bl PSVECSquareMag
/* 800FBE5C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FBE60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBE64  40 81 00 58 */	ble lbl_800FBEBC
/* 800FBE68  FC 00 08 34 */	frsqrte f0, f1
/* 800FBE6C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800FBE70  FC 44 00 32 */	fmul f2, f4, f0
/* 800FBE74  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800FBE78  FC 00 00 32 */	fmul f0, f0, f0
/* 800FBE7C  FC 01 00 32 */	fmul f0, f1, f0
/* 800FBE80  FC 03 00 28 */	fsub f0, f3, f0
/* 800FBE84  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBE88  FC 44 00 32 */	fmul f2, f4, f0
/* 800FBE8C  FC 00 00 32 */	fmul f0, f0, f0
/* 800FBE90  FC 01 00 32 */	fmul f0, f1, f0
/* 800FBE94  FC 03 00 28 */	fsub f0, f3, f0
/* 800FBE98  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBE9C  FC 44 00 32 */	fmul f2, f4, f0
/* 800FBEA0  FC 00 00 32 */	fmul f0, f0, f0
/* 800FBEA4  FC 01 00 32 */	fmul f0, f1, f0
/* 800FBEA8  FC 03 00 28 */	fsub f0, f3, f0
/* 800FBEAC  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBEB0  FC 21 00 32 */	fmul f1, f1, f0
/* 800FBEB4  FC 20 08 18 */	frsp f1, f1
/* 800FBEB8  48 00 00 88 */	b lbl_800FBF40
lbl_800FBEBC:
/* 800FBEBC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800FBEC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBEC4  40 80 00 10 */	bge lbl_800FBED4
/* 800FBEC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800FBECC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800FBED0  48 00 00 70 */	b lbl_800FBF40
lbl_800FBED4:
/* 800FBED4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800FBED8  80 81 00 08 */	lwz r4, 8(r1)
/* 800FBEDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800FBEE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 800FBEE4  7C 03 00 00 */	cmpw r3, r0
/* 800FBEE8  41 82 00 14 */	beq lbl_800FBEFC
/* 800FBEEC  40 80 00 40 */	bge lbl_800FBF2C
/* 800FBEF0  2C 03 00 00 */	cmpwi r3, 0
/* 800FBEF4  41 82 00 20 */	beq lbl_800FBF14
/* 800FBEF8  48 00 00 34 */	b lbl_800FBF2C
lbl_800FBEFC:
/* 800FBEFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800FBF00  41 82 00 0C */	beq lbl_800FBF0C
/* 800FBF04  38 00 00 01 */	li r0, 1
/* 800FBF08  48 00 00 28 */	b lbl_800FBF30
lbl_800FBF0C:
/* 800FBF0C  38 00 00 02 */	li r0, 2
/* 800FBF10  48 00 00 20 */	b lbl_800FBF30
lbl_800FBF14:
/* 800FBF14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800FBF18  41 82 00 0C */	beq lbl_800FBF24
/* 800FBF1C  38 00 00 05 */	li r0, 5
/* 800FBF20  48 00 00 10 */	b lbl_800FBF30
lbl_800FBF24:
/* 800FBF24  38 00 00 03 */	li r0, 3
/* 800FBF28  48 00 00 08 */	b lbl_800FBF30
lbl_800FBF2C:
/* 800FBF2C  38 00 00 04 */	li r0, 4
lbl_800FBF30:
/* 800FBF30  2C 00 00 01 */	cmpwi r0, 1
/* 800FBF34  40 82 00 0C */	bne lbl_800FBF40
/* 800FBF38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800FBF3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800FBF40:
/* 800FBF40  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 800FBF44  C0 1F 18 E4 */	lfs f0, 0x18e4(r31)
/* 800FBF48  EC 02 00 2A */	fadds f0, f2, f0
/* 800FBF4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBF50  40 81 00 0C */	ble lbl_800FBF5C
/* 800FBF54  38 60 00 00 */	li r3, 0
/* 800FBF58  48 00 01 68 */	b lbl_800FC0C0
lbl_800FBF5C:
/* 800FBF5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FBF60  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800FBF64  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800FBF68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FBF6C  7C 64 02 14 */	add r3, r4, r0
/* 800FBF70  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FBF74  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800FBF78  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 800FBF7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FBF80  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FBF84  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800FBF88  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FBF8C  EC 61 00 2A */	fadds f3, f1, f0
/* 800FBF90  7C 04 04 2E */	lfsx f0, r4, r0
/* 800FBF94  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800FBF98  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FBF9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FBFA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800FBFA4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 800FBFA8  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 800FBFAC  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FBFB0  38 81 00 24 */	addi r4, r1, 0x24
/* 800FBFB4  48 16 BD 75 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FBFB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FBFBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FBFC0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800FBFC4  7F C3 F3 78 */	mr r3, r30
/* 800FBFC8  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FBFCC  4B F7 84 D5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FBFD0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800FBFD4  FC 20 08 18 */	frsp f1, f1
/* 800FBFD8  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FBFDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FBFE0  FC 00 02 10 */	fabs f0, f0
/* 800FBFE4  FC 20 00 18 */	frsp f1, f0
/* 800FBFE8  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800FBFEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBFF0  40 81 00 0C */	ble lbl_800FBFFC
/* 800FBFF4  38 60 00 00 */	li r3, 0
/* 800FBFF8  48 00 00 C8 */	b lbl_800FC0C0
lbl_800FBFFC:
/* 800FBFFC  7F C3 F3 78 */	mr r3, r30
/* 800FC000  38 9F 1D 1C */	addi r4, r31, 0x1d1c
/* 800FC004  4B F7 8E ED */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 800FC008  2C 03 00 06 */	cmpwi r3, 6
/* 800FC00C  40 82 00 10 */	bne lbl_800FC01C
/* 800FC010  7F E3 FB 78 */	mr r3, r31
/* 800FC014  4B FF EA 69 */	bl procHangStartInit__9daAlink_cFv
/* 800FC018  48 00 00 A8 */	b lbl_800FC0C0
lbl_800FC01C:
/* 800FC01C  7F E3 FB 78 */	mr r3, r31
/* 800FC020  38 80 00 5B */	li r4, 0x5b
/* 800FC024  4B FC 5F 49 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FC028  7F E3 FB 78 */	mr r3, r31
/* 800FC02C  38 80 00 93 */	li r4, 0x93
/* 800FC030  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FC034  38 A5 E1 64 */	addi r5, r5, m__23daAlinkHIO_wallCatch_c0@l
/* 800FC038  38 A5 00 14 */	addi r5, r5, 0x14
/* 800FC03C  4B FB 10 B9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FC040  7F E3 FB 78 */	mr r3, r31
/* 800FC044  4B FE 3B E5 */	bl setBowHangAnime__9daAlink_cFv
/* 800FC048  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FC04C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FC050  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800FC054  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FC058  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800FC05C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FC060  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 800FC064  3C 63 00 01 */	addis r3, r3, 1
/* 800FC068  38 03 80 00 */	addi r0, r3, -32768
/* 800FC06C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FC070  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FC074  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FC078  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FC07C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FC080  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FC084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FC088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FC08C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FC090  60 00 01 00 */	ori r0, r0, 0x100
/* 800FC094  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FC098  7F E3 FB 78 */	mr r3, r31
/* 800FC09C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000A@ha */
/* 800FC0A0  38 84 00 0A */	addi r4, r4, 0x000A /* 0x0001000A@l */
/* 800FC0A4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800FC0A8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FC0AC  7D 89 03 A6 */	mtctr r12
/* 800FC0B0  4E 80 04 21 */	bctrl 
/* 800FC0B4  7F E3 FB 78 */	mr r3, r31
/* 800FC0B8  4B FF E6 2D */	bl setHangGroundY__9daAlink_cFv
/* 800FC0BC  38 60 00 01 */	li r3, 1
lbl_800FC0C0:
/* 800FC0C0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800FC0C4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800FC0C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800FC0CC  7C 08 03 A6 */	mtlr r0
/* 800FC0D0  38 21 00 50 */	addi r1, r1, 0x50
/* 800FC0D4  4E 80 00 20 */	blr 
