lbl_80C440C8:
/* 80C440C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C440CC  7C 08 02 A6 */	mflr r0
/* 80C440D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C440D4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80C440D8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80C440DC  7C 7F 1B 78 */	mr r31, r3
/* 80C440E0  A8 63 05 78 */	lha r3, 0x578(r3)
/* 80C440E4  38 03 00 01 */	addi r0, r3, 1
/* 80C440E8  B0 1F 05 78 */	sth r0, 0x578(r31)
/* 80C440EC  38 60 00 00 */	li r3, 0
/* 80C440F0  38 00 00 04 */	li r0, 4
/* 80C440F4  7C 09 03 A6 */	mtctr r0
lbl_80C440F8:
/* 80C440F8  38 A3 05 84 */	addi r5, r3, 0x584
/* 80C440FC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80C44100  2C 04 00 00 */	cmpwi r4, 0
/* 80C44104  41 82 00 0C */	beq lbl_80C44110
/* 80C44108  38 04 FF FF */	addi r0, r4, -1
/* 80C4410C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80C44110:
/* 80C44110  38 63 00 02 */	addi r3, r3, 2
/* 80C44114  42 00 FF E4 */	bdnz lbl_80C440F8
/* 80C44118  7F E3 FB 78 */	mr r3, r31
/* 80C4411C  4B FF FF 65 */	bl action__FP12obj_ki_class
/* 80C44120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C44124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C44128  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C4412C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C44130  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C44134  4B 70 27 B5 */	bl PSMTXTrans
/* 80C44138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4413C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C44140  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C44144  4B 3C 82 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C44148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4414C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C44150  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C44154  4B 3C 82 49 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C44158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4415C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C44160  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C44164  4B 3C 83 69 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C44168  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80C4416C  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80C44170  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80C44174  4B 3C 8C C5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C44178  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C4417C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C44180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C44184  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C44188  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4418C  4B 70 23 25 */	bl PSMTXCopy
/* 80C44190  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C44194  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C44198  38 9F 06 38 */	addi r4, r31, 0x638
/* 80C4419C  4B 70 23 15 */	bl PSMTXCopy
/* 80C441A0  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 80C441A4  4B 43 78 1D */	bl Move__4dBgWFv
/* 80C441A8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C441AC  4B 3C C5 01 */	bl modelCalc__14mDoExt_McaMorfFv
/* 80C441B0  38 80 00 00 */	li r4, 0
/* 80C441B4  38 A0 00 00 */	li r5, 0
/* 80C441B8  38 C0 00 00 */	li r6, 0
/* 80C441BC  38 E0 00 00 */	li r7, 0
/* 80C441C0  39 00 00 00 */	li r8, 0
/* 80C441C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C441C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C441CC  3D 20 80 C4 */	lis r9, lit_3793@ha /* 0x80C44B48@ha */
/* 80C441D0  C8 69 4B 48 */	lfd f3, lit_3793@l(r9)  /* 0x80C44B48@l */
/* 80C441D4  3D 40 43 30 */	lis r10, 0x4330
/* 80C441D8  3D 20 80 C4 */	lis r9, lit_3791@ha /* 0x80C44B44@ha */
/* 80C441DC  C0 49 4B 44 */	lfs f2, lit_3791@l(r9)  /* 0x80C44B44@l */
/* 80C441E0  38 00 00 03 */	li r0, 3
/* 80C441E4  7C 09 03 A6 */	mtctr r0
lbl_80C441E8:
/* 80C441E8  38 00 00 00 */	li r0, 0
/* 80C441EC  B0 01 00 08 */	sth r0, 8(r1)
/* 80C441F0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C441F4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C441F8  39 68 05 9E */	addi r11, r8, 0x59e
/* 80C441FC  7D 3F 5A AE */	lhax r9, r31, r11
/* 80C44200  2C 09 00 00 */	cmpwi r9, 0
/* 80C44204  41 82 00 D8 */	beq lbl_80C442DC
/* 80C44208  38 09 FF FF */	addi r0, r9, -1
/* 80C4420C  7C 1F 5B 2E */	sthx r0, r31, r11
/* 80C44210  7F DF 5A AE */	lhax r30, r31, r11
/* 80C44214  1C 1E 27 10 */	mulli r0, r30, 0x2710
/* 80C44218  7C 00 3A 14 */	add r0, r0, r7
/* 80C4421C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C44220  3D 20 80 44 */	lis r9, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C44224  39 89 9A 20 */	addi r12, r9, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C44228  7C AC 04 2E */	lfsx f5, r12, r0
/* 80C4422C  3D 20 80 C4 */	lis r9, lit_3790@ha /* 0x80C44B40@ha */
/* 80C44230  C0 89 4B 40 */	lfs f4, lit_3790@l(r9)  /* 0x80C44B40@l */
/* 80C44234  3D 20 80 C4 */	lis r9, lit_3793@ha /* 0x80C44B48@ha */
/* 80C44238  C8 29 4B 48 */	lfd f1, lit_3793@l(r9)  /* 0x80C44B48@l */
/* 80C4423C  6F CB 80 00 */	xoris r11, r30, 0x8000
/* 80C44240  91 61 00 14 */	stw r11, 0x14(r1)
/* 80C44244  3D 20 43 30 */	lis r9, 0x4330
/* 80C44248  91 21 00 10 */	stw r9, 0x10(r1)
/* 80C4424C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C44250  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C44254  EC 00 01 72 */	fmuls f0, f0, f5
/* 80C44258  EC 04 00 32 */	fmuls f0, f4, f0
/* 80C4425C  FC 00 00 1E */	fctiwz f0, f0
/* 80C44260  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C44264  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C44268  B0 01 00 08 */	sth r0, 8(r1)
/* 80C4426C  1C 1E 2E E0 */	mulli r0, r30, 0x2ee0
/* 80C44270  7C 00 32 14 */	add r0, r0, r6
/* 80C44274  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C44278  7C AC 04 2E */	lfsx f5, r12, r0
/* 80C4427C  91 61 00 24 */	stw r11, 0x24(r1)
/* 80C44280  91 21 00 20 */	stw r9, 0x20(r1)
/* 80C44284  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C44288  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C4428C  EC 00 01 72 */	fmuls f0, f0, f5
/* 80C44290  EC 04 00 32 */	fmuls f0, f4, f0
/* 80C44294  FC 00 00 1E */	fctiwz f0, f0
/* 80C44298  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C4429C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C442A0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C442A4  1C 1E 36 B0 */	mulli r0, r30, 0x36b0
/* 80C442A8  7C 00 2A 14 */	add r0, r0, r5
/* 80C442AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C442B0  7C AC 04 2E */	lfsx f5, r12, r0
/* 80C442B4  91 61 00 34 */	stw r11, 0x34(r1)
/* 80C442B8  91 21 00 30 */	stw r9, 0x30(r1)
/* 80C442BC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C442C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C442C4  EC 00 01 72 */	fmuls f0, f0, f5
/* 80C442C8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80C442CC  FC 00 00 1E */	fctiwz f0, f0
/* 80C442D0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C442D4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C442D8  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_80C442DC:
/* 80C442DC  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 80C442E0  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 80C442E4  7C 00 3A 14 */	add r0, r0, r7
/* 80C442E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C442EC  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C442F0  A8 01 00 08 */	lha r0, 8(r1)
/* 80C442F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C442F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C442FC  91 41 00 38 */	stw r10, 0x38(r1)
/* 80C44300  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C44304  EC 20 18 28 */	fsubs f1, f0, f3
/* 80C44308  EC 02 01 32 */	fmuls f0, f2, f4
/* 80C4430C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C44310  FC 00 00 1E */	fctiwz f0, f0
/* 80C44314  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C44318  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4431C  7D 3F 22 14 */	add r9, r31, r4
/* 80C44320  B0 09 05 8C */	sth r0, 0x58c(r9)
/* 80C44324  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 80C44328  1C 00 01 90 */	mulli r0, r0, 0x190
/* 80C4432C  7C 00 32 14 */	add r0, r0, r6
/* 80C44330  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C44334  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C44338  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80C4433C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C44340  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C44344  91 41 00 28 */	stw r10, 0x28(r1)
/* 80C44348  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C4434C  EC 20 18 28 */	fsubs f1, f0, f3
/* 80C44350  EC 02 01 32 */	fmuls f0, f2, f4
/* 80C44354  EC 01 00 2A */	fadds f0, f1, f0
/* 80C44358  FC 00 00 1E */	fctiwz f0, f0
/* 80C4435C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C44360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C44364  B0 09 05 8E */	sth r0, 0x58e(r9)
/* 80C44368  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 80C4436C  1C 00 02 58 */	mulli r0, r0, 0x258
/* 80C44370  7C 00 2A 14 */	add r0, r0, r5
/* 80C44374  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C44378  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C4437C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80C44380  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C44384  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C44388  91 41 00 18 */	stw r10, 0x18(r1)
/* 80C4438C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C44390  EC 20 18 28 */	fsubs f1, f0, f3
/* 80C44394  EC 02 01 32 */	fmuls f0, f2, f4
/* 80C44398  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4439C  FC 00 00 1E */	fctiwz f0, f0
/* 80C443A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C443A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C443A8  B0 09 05 90 */	sth r0, 0x590(r9)
/* 80C443AC  38 84 00 06 */	addi r4, r4, 6
/* 80C443B0  38 A5 13 88 */	addi r5, r5, 0x1388
/* 80C443B4  38 C6 1F 40 */	addi r6, r6, 0x1f40
/* 80C443B8  38 E7 1B 58 */	addi r7, r7, 0x1b58
/* 80C443BC  39 08 00 02 */	addi r8, r8, 2
/* 80C443C0  42 00 FE 28 */	bdnz lbl_80C441E8
/* 80C443C4  38 60 00 01 */	li r3, 1
/* 80C443C8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80C443CC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80C443D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C443D4  7C 08 03 A6 */	mtlr r0
/* 80C443D8  38 21 00 50 */	addi r1, r1, 0x50
/* 80C443DC  4E 80 00 20 */	blr 
