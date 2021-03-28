lbl_8071DF04:
/* 8071DF04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8071DF08  7C 08 02 A6 */	mflr r0
/* 8071DF0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8071DF10  39 61 00 50 */	addi r11, r1, 0x50
/* 8071DF14  4B C4 42 C4 */	b _savegpr_28
/* 8071DF18  7C 7D 1B 78 */	mr r29, r3
/* 8071DF1C  3C 60 80 72 */	lis r3, lit_3776@ha
/* 8071DF20  3B E3 F6 40 */	addi r31, r3, lit_3776@l
/* 8071DF24  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 8071DF28  90 01 00 08 */	stw r0, 8(r1)
/* 8071DF2C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071DF30  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8071DF34  38 81 00 08 */	addi r4, r1, 8
/* 8071DF38  4B 8F B8 C0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071DF3C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8071DF40  41 82 02 4C */	beq lbl_8071E18C
/* 8071DF44  A8 1C 0C 30 */	lha r0, 0xc30(r28)
/* 8071DF48  2C 00 00 02 */	cmpwi r0, 2
/* 8071DF4C  40 82 00 18 */	bne lbl_8071DF64
/* 8071DF50  38 00 00 02 */	li r0, 2
/* 8071DF54  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 8071DF58  38 00 00 01 */	li r0, 1
/* 8071DF5C  98 1D 09 98 */	stb r0, 0x998(r29)
/* 8071DF60  48 00 02 2C */	b lbl_8071E18C
lbl_8071DF64:
/* 8071DF64  83 DC 06 EC */	lwz r30, 0x6ec(r28)
/* 8071DF68  28 1E 00 00 */	cmplwi r30, 0
/* 8071DF6C  41 82 01 98 */	beq lbl_8071E104
/* 8071DF70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071DF74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071DF78  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8071DF7C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8071DF80  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8071DF84  4B C2 89 64 */	b PSMTXTrans
/* 8071DF88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071DF8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071DF90  A8 9E 07 2E */	lha r4, 0x72e(r30)
/* 8071DF94  4B 8E E4 A0 */	b mDoMtx_YrotM__FPA4_fs
/* 8071DF98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071DF9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071DFA0  80 9C 06 EC */	lwz r4, 0x6ec(r28)
/* 8071DFA4  A8 84 04 E4 */	lha r4, 0x4e4(r4)
/* 8071DFA8  4B 8E E3 F4 */	b mDoMtx_XrotM__FPA4_fs
/* 8071DFAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071DFB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071DFB4  A8 1E 07 2E */	lha r0, 0x72e(r30)
/* 8071DFB8  7C 00 00 D0 */	neg r0, r0
/* 8071DFBC  7C 04 07 34 */	extsh r4, r0
/* 8071DFC0  4B 8E E4 74 */	b mDoMtx_YrotM__FPA4_fs
/* 8071DFC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8071DFC8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8071DFCC  FC 60 08 90 */	fmr f3, f1
/* 8071DFD0  4B 8E ED CC */	b transM__14mDoMtx_stack_cFfff
/* 8071DFD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071DFD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071DFDC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8071DFE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8071DFE4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8071DFE8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8071DFEC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8071DFF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8071DFF4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8071DFF8  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 8071DFFC  7C 04 02 14 */	add r0, r4, r0
/* 8071E000  7C 04 07 34 */	extsh r4, r0
/* 8071E004  4B 8E E3 D8 */	b mDoMtx_YrotS__FPA4_fs
/* 8071E008  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071E00C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8071E010  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8071E014  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 8071E018  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8071E01C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071E020  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071E024  38 81 00 24 */	addi r4, r1, 0x24
/* 8071E028  38 A1 00 18 */	addi r5, r1, 0x18
/* 8071E02C  4B C2 8D 40 */	b PSMTXMultVec
/* 8071E030  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8071E034  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8071E038  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8071E03C  EC 21 00 2A */	fadds f1, f1, f0
/* 8071E040  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071E044  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8071E048  4B B5 19 F4 */	b cLib_addCalc2__FPffff
/* 8071E04C  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8071E050  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8071E054  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8071E058  EC 21 00 2A */	fadds f1, f1, f0
/* 8071E05C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071E060  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8071E064  4B B5 19 D8 */	b cLib_addCalc2__FPffff
/* 8071E068  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8071E06C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8071E070  EC 01 00 2A */	fadds f0, f1, f0
/* 8071E074  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8071E078  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8071E07C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8071E080  EC 01 00 28 */	fsubs f0, f1, f0
/* 8071E084  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8071E088  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8071E08C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8071E090  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8071E094  EC 01 00 2A */	fadds f0, f1, f0
/* 8071E098  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071E09C  4C 40 13 82 */	cror 2, 0, 2
/* 8071E0A0  40 82 00 50 */	bne lbl_8071E0F0
/* 8071E0A4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8071E0A8  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 8071E0AC  2C 00 00 03 */	cmpwi r0, 3
/* 8071E0B0  41 81 00 18 */	bgt lbl_8071E0C8
/* 8071E0B4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8071E0B8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8071E0BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071E0C0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8071E0C4  48 00 00 0C */	b lbl_8071E0D0
lbl_8071E0C8:
/* 8071E0C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071E0CC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8071E0D0:
/* 8071E0D0  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 8071E0D4  2C 00 00 01 */	cmpwi r0, 1
/* 8071E0D8  41 81 00 0C */	bgt lbl_8071E0E4
/* 8071E0DC  38 00 00 14 */	li r0, 0x14
/* 8071E0E0  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
lbl_8071E0E4:
/* 8071E0E4  A8 7D 05 DC */	lha r3, 0x5dc(r29)
/* 8071E0E8  38 03 00 01 */	addi r0, r3, 1
/* 8071E0EC  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_8071E0F0:
/* 8071E0F0  88 1E 07 32 */	lbz r0, 0x732(r30)
/* 8071E0F4  28 00 00 01 */	cmplwi r0, 1
/* 8071E0F8  40 82 00 0C */	bne lbl_8071E104
/* 8071E0FC  38 00 00 14 */	li r0, 0x14
/* 8071E100  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
lbl_8071E104:
/* 8071E104  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071E108  2C 00 00 00 */	cmpwi r0, 0
/* 8071E10C  41 82 00 14 */	beq lbl_8071E120
/* 8071E110  C0 3D 05 FC */	lfs f1, 0x5fc(r29)
/* 8071E114  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8071E118  EC 01 00 2A */	fadds f0, f1, f0
/* 8071E11C  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
lbl_8071E120:
/* 8071E120  A8 9D 05 F4 */	lha r4, 0x5f4(r29)
/* 8071E124  1C 04 2E E0 */	mulli r0, r4, 0x2ee0
/* 8071E128  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8071E12C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8071E130  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8071E134  7C 63 04 2E */	lfsx f3, r3, r0
/* 8071E138  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8071E13C  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 8071E140  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8071E144  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071E148  3C 00 43 30 */	lis r0, 0x4330
/* 8071E14C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8071E150  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8071E154  EC 00 08 28 */	fsubs f0, f0, f1
/* 8071E158  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8071E15C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8071E160  FC 00 00 1E */	fctiwz f0, f0
/* 8071E164  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8071E168  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8071E16C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8071E170  38 00 00 00 */	li r0, 0
/* 8071E174  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8071E178  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 8071E17C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8071E180  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071E184  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8071E188  4B B5 18 B4 */	b cLib_addCalc2__FPffff
lbl_8071E18C:
/* 8071E18C  39 61 00 50 */	addi r11, r1, 0x50
/* 8071E190  4B C4 40 94 */	b _restgpr_28
/* 8071E194  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8071E198  7C 08 03 A6 */	mtlr r0
/* 8071E19C  38 21 00 50 */	addi r1, r1, 0x50
/* 8071E1A0  4E 80 00 20 */	blr 
