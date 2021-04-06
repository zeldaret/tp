lbl_8018DEF4:
/* 8018DEF4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8018DEF8  7C 08 02 A6 */	mflr r0
/* 8018DEFC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8018DF00  39 61 00 80 */	addi r11, r1, 0x80
/* 8018DF04  48 1D 42 D9 */	bl _savegpr_29
/* 8018DF08  7C 7D 1B 78 */	mr r29, r3
/* 8018DF0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8018DF10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018DF14  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 8018DF18  80 7D 00 08 */	lwz r3, 8(r29)
/* 8018DF1C  38 03 00 80 */	addi r0, r3, 0x80
/* 8018DF20  7C 1E 03 78 */	mr r30, r0
/* 8018DF24  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8018DF28  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8018DF2C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8018DF30  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8018DF34  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8018DF38  EC 21 00 28 */	fsubs f1, f1, f0
/* 8018DF3C  38 61 00 38 */	addi r3, r1, 0x38
/* 8018DF40  C0 02 9F 30 */	lfs f0, lit_4166(r2)
/* 8018DF44  EC 21 00 32 */	fmuls f1, f1, f0
/* 8018DF48  EC 42 00 32 */	fmuls f2, f2, f0
/* 8018DF4C  C0 62 9F 48 */	lfs f3, lit_4778(r2)
/* 8018DF50  48 1B 89 99 */	bl PSMTXTrans
/* 8018DF54  7F C3 F3 78 */	mr r3, r30
/* 8018DF58  38 81 00 38 */	addi r4, r1, 0x38
/* 8018DF5C  7F C5 F3 78 */	mr r5, r30
/* 8018DF60  48 1B 85 85 */	bl PSMTXConcat
/* 8018DF64  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8018DF68  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8018DF6C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8018DF70  EC 41 00 28 */	fsubs f2, f1, f0
/* 8018DF74  80 9D 00 08 */	lwz r4, 8(r29)
/* 8018DF78  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8018DF7C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8018DF80  EC 61 00 28 */	fsubs f3, f1, f0
/* 8018DF84  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8018DF88  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8018DF8C  EC 81 00 28 */	fsubs f4, f1, f0
/* 8018DF90  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8018DF94  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8018DF98  EC 01 00 28 */	fsubs f0, f1, f0
/* 8018DF9C  38 61 00 08 */	addi r3, r1, 8
/* 8018DFA0  EC 20 20 24 */	fdivs f1, f0, f4
/* 8018DFA4  EC 43 10 24 */	fdivs f2, f3, f2
/* 8018DFA8  C0 62 9F 40 */	lfs f3, lit_4611(r2)
/* 8018DFAC  48 1B 89 BD */	bl PSMTXScale
/* 8018DFB0  7F C3 F3 78 */	mr r3, r30
/* 8018DFB4  38 81 00 08 */	addi r4, r1, 8
/* 8018DFB8  7F C5 F3 78 */	mr r5, r30
/* 8018DFBC  48 1B 85 29 */	bl PSMTXConcat
/* 8018DFC0  7F C3 F3 78 */	mr r3, r30
/* 8018DFC4  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8018DFC8  38 84 00 50 */	addi r4, r4, 0x50
/* 8018DFCC  48 1B 84 E5 */	bl PSMTXCopy
/* 8018DFD0  80 7D 00 04 */	lwz r3, 4(r29)
/* 8018DFD4  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018DFD8  FC 40 08 90 */	fmr f2, f1
/* 8018DFDC  7F E4 FB 78 */	mr r4, r31
/* 8018DFE0  48 16 AE F5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8018DFE4  39 61 00 80 */	addi r11, r1, 0x80
/* 8018DFE8  48 1D 42 41 */	bl _restgpr_29
/* 8018DFEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8018DFF0  7C 08 03 A6 */	mtlr r0
/* 8018DFF4  38 21 00 80 */	addi r1, r1, 0x80
/* 8018DFF8  4E 80 00 20 */	blr 
