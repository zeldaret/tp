lbl_80C05F64:
/* 80C05F64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C05F68  7C 08 02 A6 */	mflr r0
/* 80C05F6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C05F70  39 61 00 30 */	addi r11, r1, 0x30
/* 80C05F74  4B 75 C2 68 */	b _savegpr_29
/* 80C05F78  7C 7E 1B 78 */	mr r30, r3
/* 80C05F7C  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C05F80  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l
/* 80C05F84  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C05F88  2C 00 00 01 */	cmpwi r0, 1
/* 80C05F8C  41 82 00 90 */	beq lbl_80C0601C
/* 80C05F90  40 80 00 10 */	bge lbl_80C05FA0
/* 80C05F94  2C 00 00 00 */	cmpwi r0, 0
/* 80C05F98  40 80 00 14 */	bge lbl_80C05FAC
/* 80C05F9C  48 00 02 3C */	b lbl_80C061D8
lbl_80C05FA0:
/* 80C05FA0  2C 00 00 03 */	cmpwi r0, 3
/* 80C05FA4  40 80 02 34 */	bge lbl_80C061D8
/* 80C05FA8  48 00 02 24 */	b lbl_80C061CC
lbl_80C05FAC:
/* 80C05FAC  38 80 00 07 */	li r4, 7
/* 80C05FB0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C05FB4  4B FF B7 D9 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C05FB8  7F C3 F3 78 */	mr r3, r30
/* 80C05FBC  38 80 00 0A */	li r4, 0xa
/* 80C05FC0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C05FC4  4B FF B7 E9 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C05FC8  7F C3 F3 78 */	mr r3, r30
/* 80C05FCC  4B FF B8 25 */	bl calcMotion__11daObj_GrA_cFv
/* 80C05FD0  38 7E 0A B0 */	addi r3, r30, 0xab0
/* 80C05FD4  4B 54 78 64 */	b getActor__18daBaseNpc_acMngr_cFv
/* 80C05FD8  7C 64 1B 78 */	mr r4, r3
/* 80C05FDC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C05FE0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C05FE4  4B 66 AC 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C05FE8  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80C05FEC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C05FF0  B0 1E 09 1C */	sth r0, 0x91c(r30)
/* 80C05FF4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C05FF8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C05FFC  D0 1E 10 8C */	stfs f0, 0x108c(r30)
/* 80C06000  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C06004  D0 1E 10 90 */	stfs f0, 0x1090(r30)
/* 80C06008  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C0600C  D0 1E 10 94 */	stfs f0, 0x1094(r30)
/* 80C06010  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C06014  D0 1E 10 98 */	stfs f0, 0x1098(r30)
/* 80C06018  48 00 01 C0 */	b lbl_80C061D8
lbl_80C0601C:
/* 80C0601C  A0 1E 08 42 */	lhz r0, 0x842(r30)
/* 80C06020  28 00 00 00 */	cmplwi r0, 0
/* 80C06024  41 82 00 30 */	beq lbl_80C06054
/* 80C06028  3C 80 80 C1 */	lis r4, lit_6661@ha
/* 80C0602C  38 A4 01 D8 */	addi r5, r4, lit_6661@l
/* 80C06030  80 85 00 00 */	lwz r4, 0(r5)
/* 80C06034  80 05 00 04 */	lwz r0, 4(r5)
/* 80C06038  90 81 00 08 */	stw r4, 8(r1)
/* 80C0603C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C06040  80 05 00 08 */	lwz r0, 8(r5)
/* 80C06044  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C06048  38 81 00 08 */	addi r4, r1, 8
/* 80C0604C  4B FF B8 A9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C06050  48 00 01 88 */	b lbl_80C061D8
lbl_80C06054:
/* 80C06054  38 7E 10 98 */	addi r3, r30, 0x1098
/* 80C06058  38 9F 00 00 */	addi r4, r31, 0
/* 80C0605C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80C06060  C0 5F 02 4C */	lfs f2, 0x24c(r31)
/* 80C06064  C0 7F 02 10 */	lfs f3, 0x210(r31)
/* 80C06068  4B 66 99 D4 */	b cLib_addCalc2__FPffff
/* 80C0606C  C0 7E 10 8C */	lfs f3, 0x108c(r30)
/* 80C06070  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80C06074  C0 1E 10 90 */	lfs f0, 0x1090(r30)
/* 80C06078  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0607C  C0 5E 10 94 */	lfs f2, 0x1094(r30)
/* 80C06080  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C06084  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C06088  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C0608C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C06090  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C06094  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C06098  C0 3E 10 98 */	lfs f1, 0x1098(r30)
/* 80C0609C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C060A0  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C060A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C060A8  7C 63 02 14 */	add r3, r3, r0
/* 80C060AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C060B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C060B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C060B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C060BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C060C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80C060C4  C0 3F 02 84 */	lfs f1, 0x284(r31)
/* 80C060C8  C0 5F 02 88 */	lfs f2, 0x288(r31)
/* 80C060CC  4B 66 A0 AC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C060D0  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C060D4  80 63 00 04 */	lwz r3, 4(r3)
/* 80C060D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C060DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C060E0  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 80C060E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C060E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C060EC  4B 74 03 C4 */	b PSMTXCopy
/* 80C060F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C060F4  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80C060F8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80C060FC  D0 1E 0A BC */	stfs f0, 0xabc(r30)
/* 80C06100  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80C06104  D0 1E 0A C0 */	stfs f0, 0xac0(r30)
/* 80C06108  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80C0610C  D0 1E 0A C4 */	stfs f0, 0xac4(r30)
/* 80C06110  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80C06114  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C06118  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C0611C  D0 1E 0A C0 */	stfs f0, 0xac0(r30)
/* 80C06120  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C06124  B0 1E 0A C8 */	sth r0, 0xac8(r30)
/* 80C06128  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C0612C  B0 1E 0A CA */	sth r0, 0xaca(r30)
/* 80C06130  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C06134  B0 1E 0A CC */	sth r0, 0xacc(r30)
/* 80C06138  A8 7E 0A CA */	lha r3, 0xaca(r30)
/* 80C0613C  38 03 80 00 */	addi r0, r3, -32768
/* 80C06140  B0 1E 0A CA */	sth r0, 0xaca(r30)
/* 80C06144  38 00 00 01 */	li r0, 1
/* 80C06148  98 1E 0A B8 */	stb r0, 0xab8(r30)
/* 80C0614C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C06150  80 63 00 04 */	lwz r3, 4(r3)
/* 80C06154  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C06158  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C0615C  38 63 04 50 */	addi r3, r3, 0x450
/* 80C06160  7F A4 EB 78 */	mr r4, r29
/* 80C06164  4B 74 03 4C */	b PSMTXCopy
/* 80C06168  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80C0616C  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
/* 80C06170  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80C06174  D0 1E 0B 1C */	stfs f0, 0xb1c(r30)
/* 80C06178  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80C0617C  D0 1E 0B 20 */	stfs f0, 0xb20(r30)
/* 80C06180  C0 3E 0B 1C */	lfs f1, 0xb1c(r30)
/* 80C06184  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C06188  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C0618C  D0 1E 0B 1C */	stfs f0, 0xb1c(r30)
/* 80C06190  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C06194  B0 1E 0B 24 */	sth r0, 0xb24(r30)
/* 80C06198  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C0619C  B0 1E 0B 26 */	sth r0, 0xb26(r30)
/* 80C061A0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C061A4  B0 1E 0B 28 */	sth r0, 0xb28(r30)
/* 80C061A8  A8 7E 0B 26 */	lha r3, 0xb26(r30)
/* 80C061AC  38 03 80 00 */	addi r0, r3, -32768
/* 80C061B0  B0 1E 0B 26 */	sth r0, 0xb26(r30)
/* 80C061B4  38 00 00 01 */	li r0, 1
/* 80C061B8  98 1E 0B 14 */	stb r0, 0xb14(r30)
/* 80C061BC  38 7F 00 00 */	addi r3, r31, 0
/* 80C061C0  A8 03 00 54 */	lha r0, 0x54(r3)
/* 80C061C4  90 1E 0A A4 */	stw r0, 0xaa4(r30)
/* 80C061C8  48 00 00 10 */	b lbl_80C061D8
lbl_80C061CC:
/* 80C061CC  38 7E 0A B0 */	addi r3, r30, 0xab0
/* 80C061D0  38 80 00 00 */	li r4, 0
/* 80C061D4  4B 54 76 48 */	b entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
lbl_80C061D8:
/* 80C061D8  38 60 00 01 */	li r3, 1
/* 80C061DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C061E0  4B 75 C0 48 */	b _restgpr_29
/* 80C061E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C061E8  7C 08 03 A6 */	mtlr r0
/* 80C061EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C061F0  4E 80 00 20 */	blr 
