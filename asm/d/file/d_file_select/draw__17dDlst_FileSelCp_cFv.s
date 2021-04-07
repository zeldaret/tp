lbl_8018DFFC:
/* 8018DFFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8018E000  7C 08 02 A6 */	mflr r0
/* 8018E004  90 01 00 54 */	stw r0, 0x54(r1)
/* 8018E008  39 61 00 50 */	addi r11, r1, 0x50
/* 8018E00C  48 1D 41 D1 */	bl _savegpr_29
/* 8018E010  7C 7D 1B 78 */	mr r29, r3
/* 8018E014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8018E018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018E01C  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 8018E020  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8018E024  38 03 00 80 */	addi r0, r3, 0x80
/* 8018E028  7C 1E 03 78 */	mr r30, r0
/* 8018E02C  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8018E030  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8018E034  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8018E038  EC 41 00 28 */	fsubs f2, f1, f0
/* 8018E03C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8018E040  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8018E044  EC 61 00 28 */	fsubs f3, f1, f0
/* 8018E048  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8018E04C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8018E050  EC 81 00 28 */	fsubs f4, f1, f0
/* 8018E054  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8018E058  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8018E05C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8018E060  38 61 00 08 */	addi r3, r1, 8
/* 8018E064  EC 20 20 24 */	fdivs f1, f0, f4
/* 8018E068  EC 43 10 24 */	fdivs f2, f3, f2
/* 8018E06C  C0 62 9F 40 */	lfs f3, lit_4611(r2)
/* 8018E070  48 1B 88 F9 */	bl PSMTXScale
/* 8018E074  7F C3 F3 78 */	mr r3, r30
/* 8018E078  38 81 00 08 */	addi r4, r1, 8
/* 8018E07C  7F C5 F3 78 */	mr r5, r30
/* 8018E080  48 1B 84 65 */	bl PSMTXConcat
/* 8018E084  7F C3 F3 78 */	mr r3, r30
/* 8018E088  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8018E08C  38 84 00 50 */	addi r4, r4, 0x50
/* 8018E090  48 1B 84 21 */	bl PSMTXCopy
/* 8018E094  80 7D 00 04 */	lwz r3, 4(r29)
/* 8018E098  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018E09C  FC 40 08 90 */	fmr f2, f1
/* 8018E0A0  7F E4 FB 78 */	mr r4, r31
/* 8018E0A4  48 16 AE 31 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8018E0A8  39 61 00 50 */	addi r11, r1, 0x50
/* 8018E0AC  48 1D 41 7D */	bl _restgpr_29
/* 8018E0B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8018E0B4  7C 08 03 A6 */	mtlr r0
/* 8018E0B8  38 21 00 50 */	addi r1, r1, 0x50
/* 8018E0BC  4E 80 00 20 */	blr 
