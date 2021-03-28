lbl_8081615C:
/* 8081615C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80816160  7C 08 02 A6 */	mflr r0
/* 80816164  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80816168  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8081616C  4B B4 C0 64 */	b _savegpr_26
/* 80816170  7C 7A 1B 78 */	mr r26, r3
/* 80816174  7C BB 2B 78 */	mr r27, r5
/* 80816178  3C 60 80 82 */	lis r3, lit_3791@ha
/* 8081617C  3B C3 18 AC */	addi r30, r3, lit_3791@l
/* 80816180  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 80816184  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80816188  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8081618C  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80816190  7C 60 E2 14 */	add r3, r0, r28
/* 80816194  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80816198  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8081619C  4B B3 03 14 */	b PSMTXCopy
/* 808161A0  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 808161A4  40 80 02 C8 */	bge lbl_8081646C
/* 808161A8  2C 1F 00 13 */	cmpwi r31, 0x13
/* 808161AC  40 80 00 08 */	bge lbl_808161B4
/* 808161B0  48 00 02 BC */	b lbl_8081646C
lbl_808161B4:
/* 808161B4  38 1F FF ED */	addi r0, r31, -19
/* 808161B8  7C 00 0E 70 */	srawi r0, r0, 1
/* 808161BC  7C 00 01 94 */	addze r0, r0
/* 808161C0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 808161C4  54 00 10 3A */	slwi r0, r0, 2
/* 808161C8  7F BA 02 14 */	add r29, r26, r0
/* 808161CC  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 808161D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 808161D4  41 82 02 98 */	beq lbl_8081646C
/* 808161D8  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 808161DC  41 82 00 A4 */	beq lbl_80816280
/* 808161E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808161E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808161E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808161EC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 808161F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808161F4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 808161F8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 808161FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80816200  38 81 00 10 */	addi r4, r1, 0x10
/* 80816204  4B 7F 69 FC */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80816208  A8 01 00 14 */	lha r0, 0x14(r1)
/* 8081620C  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80816210  7C 00 07 34 */	extsh r0, r0
/* 80816214  C8 3E 00 20 */	lfd f1, 0x20(r30)
/* 80816218  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8081621C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80816220  3C 00 43 30 */	lis r0, 0x4330
/* 80816224  90 01 00 58 */	stw r0, 0x58(r1)
/* 80816228  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8081622C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80816230  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80816234  EC 01 00 32 */	fmuls f0, f1, f0
/* 80816238  FC 00 00 1E */	fctiwz f0, f0
/* 8081623C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80816240  83 41 00 64 */	lwz r26, 0x64(r1)
/* 80816244  38 61 00 48 */	addi r3, r1, 0x48
/* 80816248  4B 7F 6B 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8081624C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80816250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80816254  A8 81 00 10 */	lha r4, 0x10(r1)
/* 80816258  A8 A1 00 12 */	lha r5, 0x12(r1)
/* 8081625C  A8 01 00 14 */	lha r0, 0x14(r1)
/* 80816260  7C 00 D2 14 */	add r0, r0, r26
/* 80816264  7C 06 07 34 */	extsh r6, r0
/* 80816268  4B 7F 60 38 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8081626C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80816270  FC 40 08 90 */	fmr f2, f1
/* 80816274  FC 60 08 90 */	fmr f3, f1
/* 80816278  4B 7F 6B C0 */	b scaleM__14mDoMtx_stack_cFfff
/* 8081627C  48 00 01 F0 */	b lbl_8081646C
lbl_80816280:
/* 80816280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80816284  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 80816288  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8081628C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80816290  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 80816294  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80816298  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8081629C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 808162A0  7F 43 D3 78 */	mr r3, r26
/* 808162A4  38 81 00 10 */	addi r4, r1, 0x10
/* 808162A8  4B 7F 69 58 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 808162AC  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 808162B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808162B4  38 1F FF FF */	addi r0, r31, -1
/* 808162B8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 808162BC  7C 63 02 14 */	add r3, r3, r0
/* 808162C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 808162C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 808162C8  4B B3 01 E8 */	b PSMTXCopy
/* 808162CC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 808162D0  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 808162D4  FC 60 10 90 */	fmr f3, f2
/* 808162D8  4B 7F 6A C4 */	b transM__14mDoMtx_stack_cFfff
/* 808162DC  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 808162E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 808162E4  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 808162E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 808162EC  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 808162F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808162F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808162F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808162FC  38 81 00 08 */	addi r4, r1, 8
/* 80816300  4B 7F 69 00 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80816304  38 61 00 30 */	addi r3, r1, 0x30
/* 80816308  38 81 00 48 */	addi r4, r1, 0x48
/* 8081630C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80816310  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80816314  EC 21 00 28 */	fsubs f1, f1, f0
/* 80816318  4B A5 08 6C */	b __ml__4cXyzCFf
/* 8081631C  38 61 00 24 */	addi r3, r1, 0x24
/* 80816320  38 81 00 3C */	addi r4, r1, 0x3c
/* 80816324  C0 3D 06 68 */	lfs f1, 0x668(r29)
/* 80816328  4B A5 08 5C */	b __ml__4cXyzCFf
/* 8081632C  38 61 00 18 */	addi r3, r1, 0x18
/* 80816330  38 81 00 30 */	addi r4, r1, 0x30
/* 80816334  38 A1 00 24 */	addi r5, r1, 0x24
/* 80816338  4B A5 07 AC */	b __pl__4cXyzCFRC3Vec
/* 8081633C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80816340  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80816344  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80816348  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081634C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80816350  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80816354  C0 7D 06 68 */	lfs f3, 0x668(r29)
/* 80816358  A8 01 00 14 */	lha r0, 0x14(r1)
/* 8081635C  C8 5E 00 20 */	lfd f2, 0x20(r30)
/* 80816360  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80816364  90 01 00 64 */	stw r0, 0x64(r1)
/* 80816368  3C 60 43 30 */	lis r3, 0x4330
/* 8081636C  90 61 00 60 */	stw r3, 0x60(r1)
/* 80816370  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80816374  EC 20 10 28 */	fsubs f1, f0, f2
/* 80816378  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8081637C  EC 80 18 28 */	fsubs f4, f0, f3
/* 80816380  EC 21 01 32 */	fmuls f1, f1, f4
/* 80816384  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80816388  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8081638C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80816390  90 61 00 58 */	stw r3, 0x58(r1)
/* 80816394  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80816398  EC 00 10 28 */	fsubs f0, f0, f2
/* 8081639C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 808163A0  EC 01 00 2A */	fadds f0, f1, f0
/* 808163A4  FC 00 00 1E */	fctiwz f0, f0
/* 808163A8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 808163AC  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 808163B0  A8 01 00 12 */	lha r0, 0x12(r1)
/* 808163B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808163B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 808163BC  90 61 00 70 */	stw r3, 0x70(r1)
/* 808163C0  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 808163C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 808163C8  EC 20 01 32 */	fmuls f1, f0, f4
/* 808163CC  A8 01 00 0A */	lha r0, 0xa(r1)
/* 808163D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808163D4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 808163D8  90 61 00 78 */	stw r3, 0x78(r1)
/* 808163DC  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 808163E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 808163E4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 808163E8  EC 01 00 2A */	fadds f0, f1, f0
/* 808163EC  FC 00 00 1E */	fctiwz f0, f0
/* 808163F0  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 808163F4  80 81 00 84 */	lwz r4, 0x84(r1)
/* 808163F8  A8 01 00 10 */	lha r0, 0x10(r1)
/* 808163FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80816400  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80816404  90 61 00 88 */	stw r3, 0x88(r1)
/* 80816408  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8081640C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80816410  EC 20 01 32 */	fmuls f1, f0, f4
/* 80816414  A8 01 00 08 */	lha r0, 8(r1)
/* 80816418  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8081641C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80816420  90 61 00 90 */	stw r3, 0x90(r1)
/* 80816424  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80816428  EC 00 10 28 */	fsubs f0, f0, f2
/* 8081642C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80816430  EC 01 00 2A */	fadds f0, f1, f0
/* 80816434  FC 00 00 1E */	fctiwz f0, f0
/* 80816438  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8081643C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80816440  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80816444  B0 81 00 12 */	sth r4, 0x12(r1)
/* 80816448  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 8081644C  38 61 00 48 */	addi r3, r1, 0x48
/* 80816450  4B 7F 69 14 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80816454  38 61 00 10 */	addi r3, r1, 0x10
/* 80816458  4B 7F 6A EC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8081645C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80816460  FC 40 08 90 */	fmr f2, f1
/* 80816464  FC 60 08 90 */	fmr f3, f1
/* 80816468  4B 7F 69 D0 */	b scaleM__14mDoMtx_stack_cFfff
lbl_8081646C:
/* 8081646C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80816470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80816474  80 9B 00 84 */	lwz r4, 0x84(r27)
/* 80816478  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8081647C  7C 80 E2 14 */	add r4, r0, r28
/* 80816480  4B B3 00 30 */	b PSMTXCopy
/* 80816484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80816488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8081648C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80816490  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80816494  4B B3 00 1C */	b PSMTXCopy
/* 80816498  38 60 00 01 */	li r3, 1
/* 8081649C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 808164A0  4B B4 BD 7C */	b _restgpr_26
/* 808164A4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 808164A8  7C 08 03 A6 */	mtlr r0
/* 808164AC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 808164B0  4E 80 00 20 */	blr 
