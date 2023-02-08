lbl_8099DE18:
/* 8099DE18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099DE1C  7C 08 02 A6 */	mflr r0
/* 8099DE20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099DE24  39 61 00 30 */	addi r11, r1, 0x30
/* 8099DE28  4B 9C 43 B5 */	bl _savegpr_29
/* 8099DE2C  7C 7E 1B 78 */	mr r30, r3
/* 8099DE30  7C BD 2B 78 */	mr r29, r5
/* 8099DE34  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099DE38  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099DE3C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8099DE40  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8099DE44  C0 04 00 04 */	lfs f0, 4(r4)
/* 8099DE48  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8099DE4C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8099DE50  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8099DE54  A8 A5 00 04 */	lha r5, 4(r5)
/* 8099DE58  A8 7D 00 02 */	lha r3, 2(r29)
/* 8099DE5C  A8 1D 00 00 */	lha r0, 0(r29)
/* 8099DE60  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8099DE64  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 8099DE68  B0 BE 04 E8 */	sth r5, 0x4e8(r30)
/* 8099DE6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8099DE70  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8099DE74  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8099DE78  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8099DE7C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8099DE80  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8099DE84  C0 04 00 00 */	lfs f0, 0(r4)
/* 8099DE88  D0 01 00 08 */	stfs f0, 8(r1)
/* 8099DE8C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8099DE90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099DE94  C0 04 00 08 */	lfs f0, 8(r4)
/* 8099DE98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099DE9C  38 61 00 08 */	addi r3, r1, 8
/* 8099DEA0  4B 66 EE C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8099DEA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099DEA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099DEAC  A8 9D 00 00 */	lha r4, 0(r29)
/* 8099DEB0  A8 BD 00 02 */	lha r5, 2(r29)
/* 8099DEB4  A8 DD 00 04 */	lha r6, 4(r29)
/* 8099DEB8  4B 66 E3 E9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8099DEBC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8099DEC0  FC 40 08 90 */	fmr f2, f1
/* 8099DEC4  38 7F 00 00 */	addi r3, r31, 0
/* 8099DEC8  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8099DECC  4B 66 EE D1 */	bl transM__14mDoMtx_stack_cFfff
/* 8099DED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099DED4  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099DED8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8099DEDC  D0 1E 15 5C */	stfs f0, 0x155c(r30)
/* 8099DEE0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8099DEE4  D0 1E 15 60 */	stfs f0, 0x1560(r30)
/* 8099DEE8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8099DEEC  D0 1E 15 64 */	stfs f0, 0x1564(r30)
/* 8099DEF0  C0 1E 15 5C */	lfs f0, 0x155c(r30)
/* 8099DEF4  D0 1E 15 68 */	stfs f0, 0x1568(r30)
/* 8099DEF8  C0 1E 15 60 */	lfs f0, 0x1560(r30)
/* 8099DEFC  D0 1E 15 6C */	stfs f0, 0x156c(r30)
/* 8099DF00  C0 1E 15 64 */	lfs f0, 0x1564(r30)
/* 8099DF04  D0 1E 15 70 */	stfs f0, 0x1570(r30)
/* 8099DF08  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8099DF0C  B0 1E 15 7E */	sth r0, 0x157e(r30)
/* 8099DF10  A8 1E 15 7C */	lha r0, 0x157c(r30)
/* 8099DF14  B0 1E 15 82 */	sth r0, 0x1582(r30)
/* 8099DF18  A8 1E 15 7E */	lha r0, 0x157e(r30)
/* 8099DF1C  B0 1E 15 84 */	sth r0, 0x1584(r30)
/* 8099DF20  A8 1E 15 80 */	lha r0, 0x1580(r30)
/* 8099DF24  B0 1E 15 86 */	sth r0, 0x1586(r30)
/* 8099DF28  38 7F 00 00 */	addi r3, r31, 0
/* 8099DF2C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8099DF30  D0 1E 15 88 */	stfs f0, 0x1588(r30)
/* 8099DF34  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8099DF38  D0 3E 15 8C */	stfs f1, 0x158c(r30)
/* 8099DF3C  D0 3E 15 90 */	stfs f1, 0x1590(r30)
/* 8099DF40  FC 00 00 50 */	fneg f0, f0
/* 8099DF44  D0 1E 15 AC */	stfs f0, 0x15ac(r30)
/* 8099DF48  D0 3E 15 B0 */	stfs f1, 0x15b0(r30)
/* 8099DF4C  D0 3E 15 B4 */	stfs f1, 0x15b4(r30)
/* 8099DF50  7F A3 EB 78 */	mr r3, r29
/* 8099DF54  38 9E 15 88 */	addi r4, r30, 0x1588
/* 8099DF58  7C 85 23 78 */	mr r5, r4
/* 8099DF5C  4B 9A 8E 11 */	bl PSMTXMultVec
/* 8099DF60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099DF64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099DF68  38 9E 15 AC */	addi r4, r30, 0x15ac
/* 8099DF6C  7C 85 23 78 */	mr r5, r4
/* 8099DF70  4B 9A 8D FD */	bl PSMTXMultVec
/* 8099DF74  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8099DF78  FC 40 08 90 */	fmr f2, f1
/* 8099DF7C  38 7F 00 00 */	addi r3, r31, 0
/* 8099DF80  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8099DF84  4B 66 EE 19 */	bl transM__14mDoMtx_stack_cFfff
/* 8099DF88  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8099DF8C  D0 1E 1B B0 */	stfs f0, 0x1bb0(r30)
/* 8099DF90  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8099DF94  D0 1E 1B B4 */	stfs f0, 0x1bb4(r30)
/* 8099DF98  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8099DF9C  D0 1E 1B B8 */	stfs f0, 0x1bb8(r30)
/* 8099DFA0  C0 1E 1B B0 */	lfs f0, 0x1bb0(r30)
/* 8099DFA4  D0 1E 1B BC */	stfs f0, 0x1bbc(r30)
/* 8099DFA8  C0 1E 1B B4 */	lfs f0, 0x1bb4(r30)
/* 8099DFAC  D0 1E 1B C0 */	stfs f0, 0x1bc0(r30)
/* 8099DFB0  C0 1E 1B B8 */	lfs f0, 0x1bb8(r30)
/* 8099DFB4  D0 1E 1B C4 */	stfs f0, 0x1bc4(r30)
/* 8099DFB8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8099DFBC  B0 1E 1D 6C */	sth r0, 0x1d6c(r30)
/* 8099DFC0  A8 1E 1D 6A */	lha r0, 0x1d6a(r30)
/* 8099DFC4  B0 1E 1D 70 */	sth r0, 0x1d70(r30)
/* 8099DFC8  A8 1E 1D 6C */	lha r0, 0x1d6c(r30)
/* 8099DFCC  B0 1E 1D 72 */	sth r0, 0x1d72(r30)
/* 8099DFD0  A8 1E 1D 6E */	lha r0, 0x1d6e(r30)
/* 8099DFD4  B0 1E 1D 74 */	sth r0, 0x1d74(r30)
/* 8099DFD8  3B BF 00 00 */	addi r29, r31, 0
/* 8099DFDC  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 8099DFE0  4B 8C 99 75 */	bl cM_rndF__Ff
/* 8099DFE4  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8099DFE8  EC 00 08 2A */	fadds f0, f0, f1
/* 8099DFEC  D0 1E 1D 58 */	stfs f0, 0x1d58(r30)
/* 8099DFF0  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8099DFF4  D0 1E 1D 78 */	stfs f0, 0x1d78(r30)
/* 8099DFF8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8099DFFC  D0 3E 1D 7C */	stfs f1, 0x1d7c(r30)
/* 8099E000  D0 3E 1D 80 */	stfs f1, 0x1d80(r30)
/* 8099E004  FC 00 00 50 */	fneg f0, f0
/* 8099E008  D0 1E 1D 9C */	stfs f0, 0x1d9c(r30)
/* 8099E00C  D0 3E 1D A0 */	stfs f1, 0x1da0(r30)
/* 8099E010  D0 3E 1D A4 */	stfs f1, 0x1da4(r30)
/* 8099E014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099E018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099E01C  38 9E 1D 78 */	addi r4, r30, 0x1d78
/* 8099E020  7C 85 23 78 */	mr r5, r4
/* 8099E024  4B 9A 8D 49 */	bl PSMTXMultVec
/* 8099E028  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099E02C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099E030  38 9E 1D 9C */	addi r4, r30, 0x1d9c
/* 8099E034  7C 85 23 78 */	mr r5, r4
/* 8099E038  4B 9A 8D 35 */	bl PSMTXMultVec
/* 8099E03C  C0 5E 15 64 */	lfs f2, 0x1564(r30)
/* 8099E040  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8099E044  C0 1E 15 60 */	lfs f0, 0x1560(r30)
/* 8099E048  EC 21 00 2A */	fadds f1, f1, f0
/* 8099E04C  C0 1E 15 5C */	lfs f0, 0x155c(r30)
/* 8099E050  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8099E054  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8099E058  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8099E05C  D0 1E 25 5C */	stfs f0, 0x255c(r30)
/* 8099E060  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8099E064  D0 1E 25 60 */	stfs f0, 0x2560(r30)
/* 8099E068  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8099E06C  D0 1E 25 64 */	stfs f0, 0x2564(r30)
/* 8099E070  38 61 00 14 */	addi r3, r1, 0x14
/* 8099E074  4B 67 FC 49 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8099E078  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099E07C  41 82 00 10 */	beq lbl_8099E08C
/* 8099E080  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8099E084  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8099E088  D0 1E 15 60 */	stfs f0, 0x1560(r30)
lbl_8099E08C:
/* 8099E08C  C0 5E 1B B8 */	lfs f2, 0x1bb8(r30)
/* 8099E090  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8099E094  C0 1E 1B B4 */	lfs f0, 0x1bb4(r30)
/* 8099E098  EC 21 00 2A */	fadds f1, f1, f0
/* 8099E09C  C0 1E 1B B0 */	lfs f0, 0x1bb0(r30)
/* 8099E0A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8099E0A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8099E0A8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8099E0AC  38 61 00 14 */	addi r3, r1, 0x14
/* 8099E0B0  4B 67 FC 0D */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8099E0B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099E0B8  41 82 00 10 */	beq lbl_8099E0C8
/* 8099E0BC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8099E0C0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8099E0C4  D0 1E 1B B4 */	stfs f0, 0x1bb4(r30)
lbl_8099E0C8:
/* 8099E0C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8099E0CC  4B 9C 41 5D */	bl _restgpr_29
/* 8099E0D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099E0D4  7C 08 03 A6 */	mtlr r0
/* 8099E0D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8099E0DC  4E 80 00 20 */	blr 
