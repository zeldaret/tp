lbl_8066DE64:
/* 8066DE64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8066DE68  7C 08 02 A6 */	mflr r0
/* 8066DE6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8066DE70  39 61 00 50 */	addi r11, r1, 0x50
/* 8066DE74  4B CF 43 69 */	bl _savegpr_29
/* 8066DE78  7C 7F 1B 78 */	mr r31, r3
/* 8066DE7C  3C 60 80 67 */	lis r3, lit_3662@ha /* 0x8066EDE8@ha */
/* 8066DE80  3B A3 ED E8 */	addi r29, r3, lit_3662@l /* 0x8066EDE8@l */
/* 8066DE84  4B 9A A4 25 */	bl cDmrNowMidnaTalk__Fv
/* 8066DE88  2C 03 00 00 */	cmpwi r3, 0
/* 8066DE8C  41 82 00 18 */	beq lbl_8066DEA4
/* 8066DE90  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8066DE94  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8066DE98  40 82 00 0C */	bne lbl_8066DEA4
/* 8066DE9C  38 60 00 01 */	li r3, 1
/* 8066DEA0  48 00 05 DC */	b lbl_8066E47C
lbl_8066DEA4:
/* 8066DEA4  A8 7F 05 F0 */	lha r3, 0x5f0(r31)
/* 8066DEA8  38 03 00 01 */	addi r0, r3, 1
/* 8066DEAC  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
/* 8066DEB0  38 60 00 00 */	li r3, 0
/* 8066DEB4  38 00 00 04 */	li r0, 4
/* 8066DEB8  7C 09 03 A6 */	mtctr r0
lbl_8066DEBC:
/* 8066DEBC  38 A3 05 FC */	addi r5, r3, 0x5fc
/* 8066DEC0  7C 9F 2A AE */	lhax r4, r31, r5
/* 8066DEC4  2C 04 00 00 */	cmpwi r4, 0
/* 8066DEC8  41 82 00 0C */	beq lbl_8066DED4
/* 8066DECC  38 04 FF FF */	addi r0, r4, -1
/* 8066DED0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8066DED4:
/* 8066DED4  38 63 00 02 */	addi r3, r3, 2
/* 8066DED8  42 00 FF E4 */	bdnz lbl_8066DEBC
/* 8066DEDC  A8 7F 06 04 */	lha r3, 0x604(r31)
/* 8066DEE0  2C 03 00 00 */	cmpwi r3, 0
/* 8066DEE4  41 82 00 0C */	beq lbl_8066DEF0
/* 8066DEE8  38 03 FF FF */	addi r0, r3, -1
/* 8066DEEC  B0 1F 06 04 */	sth r0, 0x604(r31)
lbl_8066DEF0:
/* 8066DEF0  A8 7F 06 06 */	lha r3, 0x606(r31)
/* 8066DEF4  2C 03 00 00 */	cmpwi r3, 0
/* 8066DEF8  41 82 00 0C */	beq lbl_8066DF04
/* 8066DEFC  38 03 FF FF */	addi r0, r3, -1
/* 8066DF00  B0 1F 06 06 */	sth r0, 0x606(r31)
lbl_8066DF04:
/* 8066DF04  7F E3 FB 78 */	mr r3, r31
/* 8066DF08  4B FF EF BD */	bl action__FP8do_class
/* 8066DF0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066DF10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066DF14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8066DF18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8066DF1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8066DF20  4B CD 89 C9 */	bl PSMTXTrans
/* 8066DF24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066DF28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066DF2C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8066DF30  4B 99 E5 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 8066DF34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066DF38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066DF3C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8066DF40  4B 99 E4 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 8066DF44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066DF48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066DF4C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8066DF50  4B 99 E5 7D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8066DF54  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 8066DF58  3C 60 80 67 */	lis r3, l_HIO@ha /* 0x8066F2C4@ha */
/* 8066DF5C  38 63 F2 C4 */	addi r3, r3, l_HIO@l /* 0x8066F2C4@l */
/* 8066DF60  C0 63 00 08 */	lfs f3, 8(r3)
/* 8066DF64  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8066DF68  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 8066DF6C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8066DF70  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 8066DF74  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8066DF78  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8066DF7C  D0 3F 04 F0 */	stfs f1, 0x4f0(r31)
/* 8066DF80  D0 5F 04 F4 */	stfs f2, 0x4f4(r31)
/* 8066DF84  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 8066DF88  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 8066DF8C  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 8066DF90  4B 99 EE A9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8066DF94  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066DF98  83 C3 00 04 */	lwz r30, 4(r3)
/* 8066DF9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066DFA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066DFA4  38 9E 00 24 */	addi r4, r30, 0x24
/* 8066DFA8  4B CD 85 09 */	bl PSMTXCopy
/* 8066DFAC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066DFB0  38 9F 05 38 */	addi r4, r31, 0x538
/* 8066DFB4  38 A0 00 00 */	li r5, 0
/* 8066DFB8  38 C0 00 00 */	li r6, 0
/* 8066DFBC  4B 9A 26 0D */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 8066DFC0  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 8066DFC4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8066DFC8  40 82 00 2C */	bne lbl_8066DFF4
/* 8066DFCC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066DFD0  38 63 00 0C */	addi r3, r3, 0xc
/* 8066DFD4  C0 3D 01 A4 */	lfs f1, 0x1a4(r29)
/* 8066DFD8  4B CB A4 55 */	bl checkPass__12J3DFrameCtrlFf
/* 8066DFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8066DFE0  41 82 00 40 */	beq lbl_8066E020
/* 8066DFE4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066DFE8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066DFEC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8066DFF0  48 00 00 30 */	b lbl_8066E020
lbl_8066DFF4:
/* 8066DFF4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8066DFF8  40 82 00 28 */	bne lbl_8066E020
/* 8066DFFC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E000  38 63 00 0C */	addi r3, r3, 0xc
/* 8066E004  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 8066E008  4B CB A4 25 */	bl checkPass__12J3DFrameCtrlFf
/* 8066E00C  2C 03 00 00 */	cmpwi r3, 0
/* 8066E010  41 82 00 10 */	beq lbl_8066E020
/* 8066E014  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E018  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E01C  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8066E020:
/* 8066E020  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 8066E024  2C 00 00 0D */	cmpwi r0, 0xd
/* 8066E028  41 82 00 0C */	beq lbl_8066E034
/* 8066E02C  2C 00 00 11 */	cmpwi r0, 0x11
/* 8066E030  40 82 00 5C */	bne lbl_8066E08C
lbl_8066E034:
/* 8066E034  A8 1F 06 02 */	lha r0, 0x602(r31)
/* 8066E038  2C 00 00 00 */	cmpwi r0, 0
/* 8066E03C  40 82 00 50 */	bne lbl_8066E08C
/* 8066E040  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 8066E044  4B BF 99 11 */	bl cM_rndF__Ff
/* 8066E048  C0 1D 01 A8 */	lfs f0, 0x1a8(r29)
/* 8066E04C  EC 00 08 2A */	fadds f0, f0, f1
/* 8066E050  FC 00 00 1E */	fctiwz f0, f0
/* 8066E054  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8066E058  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066E05C  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 8066E060  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005000E@ha */
/* 8066E064  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0005000E@l */
/* 8066E068  90 01 00 10 */	stw r0, 0x10(r1)
/* 8066E06C  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 8066E070  38 81 00 10 */	addi r4, r1, 0x10
/* 8066E074  38 A0 00 00 */	li r5, 0
/* 8066E078  38 C0 FF FF */	li r6, -1
/* 8066E07C  81 9F 0B F4 */	lwz r12, 0xbf4(r31)
/* 8066E080  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8066E084  7D 89 03 A6 */	mtctr r12
/* 8066E088  4E 80 04 21 */	bctrl 
lbl_8066E08C:
/* 8066E08C  88 1F 05 DC */	lbz r0, 0x5dc(r31)
/* 8066E090  7C 00 07 74 */	extsb r0, r0
/* 8066E094  C8 3D 01 80 */	lfd f1, 0x180(r29)
/* 8066E098  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8066E09C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8066E0A0  3C 80 43 30 */	lis r4, 0x4330
/* 8066E0A4  90 81 00 30 */	stw r4, 0x30(r1)
/* 8066E0A8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8066E0AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8066E0B0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8066E0B4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8066E0B8  A8 1F 05 DE */	lha r0, 0x5de(r31)
/* 8066E0BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8066E0C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8066E0C4  90 81 00 38 */	stw r4, 0x38(r1)
/* 8066E0C8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8066E0CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8066E0D0  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8066E0D4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8066E0D8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E0DC  4B 9A 25 D1 */	bl modelCalc__14mDoExt_McaMorfFv
/* 8066E0E0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8066E0E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8066E0E8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8066E0EC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8066E0F0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8066E0F4  80 84 00 00 */	lwz r4, 0(r4)
/* 8066E0F8  4B CD 83 B9 */	bl PSMTXCopy
/* 8066E0FC  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 8066E100  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066E104  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066E108  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E10C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066E110  38 61 00 20 */	addi r3, r1, 0x20
/* 8066E114  38 9F 05 38 */	addi r4, r31, 0x538
/* 8066E118  4B C0 2D D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8066E11C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8066E120  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8066E124  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8066E128  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8066E12C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8066E130  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8066E134  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 8066E138  C0 3D 01 A4 */	lfs f1, 0x1a4(r29)
/* 8066E13C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 8066E140  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066E144  EC 02 00 2A */	fadds f0, f2, f0
/* 8066E148  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8066E14C  C0 1D 01 AC */	lfs f0, 0x1ac(r29)
/* 8066E150  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066E154  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066E158  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E15C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066E160  38 61 00 20 */	addi r3, r1, 0x20
/* 8066E164  38 81 00 14 */	addi r4, r1, 0x14
/* 8066E168  4B C0 2D 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8066E16C  A8 1F 06 04 */	lha r0, 0x604(r31)
/* 8066E170  2C 00 00 00 */	cmpwi r0, 0
/* 8066E174  41 82 00 14 */	beq lbl_8066E188
/* 8066E178  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8066E17C  C0 1D 01 B0 */	lfs f0, 0x1b0(r29)
/* 8066E180  EC 01 00 2A */	fadds f0, f1, f0
/* 8066E184  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_8066E188:
/* 8066E188  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 8066E18C  38 81 00 14 */	addi r4, r1, 0x14
/* 8066E190  4B C0 14 B9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8066E194  A8 1F 05 F2 */	lha r0, 0x5f2(r31)
/* 8066E198  2C 00 00 0A */	cmpwi r0, 0xa
/* 8066E19C  40 82 00 1C */	bne lbl_8066E1B8
/* 8066E1A0  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 8066E1A4  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 8066E1A8  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 8066E1AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066E1B0  4B C0 15 59 */	bl SetR__8cM3dGSphFf
/* 8066E1B4  48 00 00 18 */	b lbl_8066E1CC
lbl_8066E1B8:
/* 8066E1B8  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 8066E1BC  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8066E1C0  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 8066E1C4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066E1C8  4B C0 15 41 */	bl SetR__8cM3dGSphFf
lbl_8066E1CC:
/* 8066E1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066E1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066E1D4  38 63 23 3C */	addi r3, r3, 0x233c
/* 8066E1D8  38 9F 09 10 */	addi r4, r31, 0x910
/* 8066E1DC  4B BF 69 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 8066E1E0  80 7F 06 80 */	lwz r3, 0x680(r31)
/* 8066E1E4  3C 03 00 01 */	addis r0, r3, 1
/* 8066E1E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8066E1EC  41 82 01 20 */	beq lbl_8066E30C
/* 8066E1F0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8066E1F4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8066E1F8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8066E1FC  38 81 00 0C */	addi r4, r1, 0xc
/* 8066E200  4B 9A B5 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8066E204  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066E208  41 82 01 04 */	beq lbl_8066E30C
/* 8066E20C  88 9F 06 B8 */	lbz r4, 0x6b8(r31)
/* 8066E210  28 04 00 0A */	cmplwi r4, 0xa
/* 8066E214  40 80 00 24 */	bge lbl_8066E238
/* 8066E218  38 04 00 01 */	addi r0, r4, 1
/* 8066E21C  98 1F 06 B8 */	stb r0, 0x6b8(r31)
/* 8066E220  88 1F 06 B8 */	lbz r0, 0x6b8(r31)
/* 8066E224  28 00 00 0A */	cmplwi r0, 0xa
/* 8066E228  40 82 00 10 */	bne lbl_8066E238
/* 8066E22C  4B 9C 99 C9 */	bl startControl__8daItem_cFv
/* 8066E230  38 00 00 14 */	li r0, 0x14
/* 8066E234  98 1F 06 B8 */	stb r0, 0x6b8(r31)
lbl_8066E238:
/* 8066E238  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E23C  80 63 00 04 */	lwz r3, 4(r3)
/* 8066E240  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8066E244  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8066E248  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8066E24C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8066E250  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8066E254  80 84 00 00 */	lwz r4, 0(r4)
/* 8066E258  4B CD 82 59 */	bl PSMTXCopy
/* 8066E25C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8066E260  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8066E264  80 63 00 00 */	lwz r3, 0(r3)
/* 8066E268  38 80 00 00 */	li r4, 0
/* 8066E26C  4B 99 E1 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8066E270  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8066E274  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8066E278  80 63 00 00 */	lwz r3, 0(r3)
/* 8066E27C  38 80 00 00 */	li r4, 0
/* 8066E280  4B 99 E1 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 8066E284  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8066E288  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8066E28C  80 63 00 00 */	lwz r3, 0(r3)
/* 8066E290  38 80 00 00 */	li r4, 0
/* 8066E294  4B 99 E2 39 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8066E298  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 8066E29C  C0 5D 01 B4 */	lfs f2, 0x1b4(r29)
/* 8066E2A0  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 8066E2A4  38 60 00 01 */	li r3, 1
/* 8066E2A8  4B C0 2B B5 */	bl MtxTrans__FfffUc
/* 8066E2AC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E2B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066E2B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066E2B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066E2BC  38 61 00 20 */	addi r3, r1, 0x20
/* 8066E2C0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8066E2C4  4B C0 2C 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8066E2C8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8066E2CC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8066E2D0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8066E2D4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8066E2D8  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8066E2DC  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8066E2E0  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 8066E2E4  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8066E2E8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8066E2EC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8066E2F0  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 8066E2F4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8066E2F8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E2FC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8066E300  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8066E304  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8066E308  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8066E30C:
/* 8066E30C  88 1F 06 88 */	lbz r0, 0x688(r31)
/* 8066E310  7C 00 07 75 */	extsb. r0, r0
/* 8066E314  41 82 01 34 */	beq lbl_8066E448
/* 8066E318  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8066E31C  90 01 00 08 */	stw r0, 8(r1)
/* 8066E320  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8066E324  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8066E328  38 81 00 08 */	addi r4, r1, 8
/* 8066E32C  4B 9A B4 CD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8066E330  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066E334  41 82 00 9C */	beq lbl_8066E3D0
/* 8066E338  A8 1E 00 08 */	lha r0, 8(r30)
/* 8066E33C  2C 00 01 10 */	cmpwi r0, 0x110
/* 8066E340  40 82 01 00 */	bne lbl_8066E440
/* 8066E344  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E348  80 63 00 04 */	lwz r3, 4(r3)
/* 8066E34C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8066E350  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8066E354  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8066E358  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8066E35C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8066E360  80 84 00 00 */	lwz r4, 0(r4)
/* 8066E364  4B CD 81 4D */	bl PSMTXCopy
/* 8066E368  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8066E36C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8066E370  80 63 00 00 */	lwz r3, 0(r3)
/* 8066E374  38 80 40 00 */	li r4, 0x4000
/* 8066E378  4B 99 E0 BD */	bl mDoMtx_YrotM__FPA4_fs
/* 8066E37C  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8066E380  C0 5D 01 88 */	lfs f2, 0x188(r29)
/* 8066E384  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 8066E388  38 60 00 01 */	li r3, 1
/* 8066E38C  4B C0 2A D1 */	bl MtxTrans__FfffUc
/* 8066E390  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8066E394  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8066E398  80 63 00 00 */	lwz r3, 0(r3)
/* 8066E39C  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 8066E3A0  38 84 00 24 */	addi r4, r4, 0x24
/* 8066E3A4  4B CD 81 0D */	bl PSMTXCopy
/* 8066E3A8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E3AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066E3B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066E3B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066E3B8  38 61 00 20 */	addi r3, r1, 0x20
/* 8066E3BC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8066E3C0  4B C0 2B 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8066E3C4  38 00 00 03 */	li r0, 3
/* 8066E3C8  98 1E 05 67 */	stb r0, 0x567(r30)
/* 8066E3CC  48 00 00 74 */	b lbl_8066E440
lbl_8066E3D0:
/* 8066E3D0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E3D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8066E3D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8066E3DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8066E3E0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8066E3E4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8066E3E8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8066E3EC  80 84 00 00 */	lwz r4, 0(r4)
/* 8066E3F0  4B CD 80 C1 */	bl PSMTXCopy
/* 8066E3F4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8066E3F8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8066E3FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8066E400  38 80 40 00 */	li r4, 0x4000
/* 8066E404  4B 99 E0 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 8066E408  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8066E40C  C0 5D 01 88 */	lfs f2, 0x188(r29)
/* 8066E410  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 8066E414  38 60 00 01 */	li r3, 1
/* 8066E418  4B C0 2A 45 */	bl MtxTrans__FfffUc
/* 8066E41C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8066E420  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066E424  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066E428  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066E42C  38 61 00 20 */	addi r3, r1, 0x20
/* 8066E430  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8066E434  4B C0 2A B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8066E438  38 00 00 03 */	li r0, 3
/* 8066E43C  98 1E 05 67 */	stb r0, 0x567(r30)
lbl_8066E440:
/* 8066E440  38 00 00 00 */	li r0, 0
/* 8066E444  98 1F 06 88 */	stb r0, 0x688(r31)
lbl_8066E448:
/* 8066E448  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066E44C  7C 03 07 74 */	extsb r3, r0
/* 8066E450  4B 9B EC 1D */	bl dComIfGp_getReverb__Fi
/* 8066E454  7C 65 1B 78 */	mr r5, r3
/* 8066E458  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 8066E45C  38 80 00 00 */	li r4, 0
/* 8066E460  81 9F 0B F4 */	lwz r12, 0xbf4(r31)
/* 8066E464  81 8C 00 08 */	lwz r12, 8(r12)
/* 8066E468  7D 89 03 A6 */	mtctr r12
/* 8066E46C  4E 80 04 21 */	bctrl 
/* 8066E470  7F E3 FB 78 */	mr r3, r31
/* 8066E474  4B FF F8 D5 */	bl message__FP8do_class
/* 8066E478  38 60 00 01 */	li r3, 1
lbl_8066E47C:
/* 8066E47C  39 61 00 50 */	addi r11, r1, 0x50
/* 8066E480  4B CF 3D A9 */	bl _restgpr_29
/* 8066E484  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8066E488  7C 08 03 A6 */	mtlr r0
/* 8066E48C  38 21 00 50 */	addi r1, r1, 0x50
/* 8066E490  4E 80 00 20 */	blr 
