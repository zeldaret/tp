lbl_80B25FE0:
/* 80B25FE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B25FE4  7C 08 02 A6 */	mflr r0
/* 80B25FE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B25FEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B25FF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B25FF4  7C 7E 1B 78 */	mr r30, r3
/* 80B25FF8  3C 80 80 B2 */	lis r4, lit_3768@ha /* 0x80B2657C@ha */
/* 80B25FFC  3B E4 65 7C */	addi r31, r4, lit_3768@l /* 0x80B2657C@l */
/* 80B26000  A8 03 05 BE */	lha r0, 0x5be(r3)
/* 80B26004  2C 00 00 00 */	cmpwi r0, 0
/* 80B26008  41 82 00 08 */	beq lbl_80B26010
/* 80B2600C  48 00 00 08 */	b lbl_80B26014
lbl_80B26010:
/* 80B26010  4B FF FB CD */	bl npc_tr_move__FP12npc_tr_class
lbl_80B26014:
/* 80B26014  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B26018  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80B2601C  38 A0 00 04 */	li r5, 4
/* 80B26020  38 C0 20 00 */	li r6, 0x2000
/* 80B26024  4B 74 A5 E5 */	bl cLib_addCalcAngleS2__FPssss
/* 80B26028  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B2602C  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80B26030  38 A0 00 04 */	li r5, 4
/* 80B26034  38 C0 20 00 */	li r6, 0x2000
/* 80B26038  4B 74 A5 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 80B2603C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B26040  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B26044  80 63 00 00 */	lwz r3, 0(r3)
/* 80B26048  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80B2604C  4B 4E 63 91 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B26050  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B26054  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B26058  80 63 00 00 */	lwz r3, 0(r3)
/* 80B2605C  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80B26060  4B 4E 63 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 80B26064  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80B26068  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B2606C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B26070  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80B26074  3C 60 80 B2 */	lis r3, l_HIO@ha /* 0x80B26688@ha */
/* 80B26078  38 63 66 88 */	addi r3, r3, l_HIO@l /* 0x80B26688@l */
/* 80B2607C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B26080  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B26084  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B26088  38 61 00 14 */	addi r3, r1, 0x14
/* 80B2608C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80B26090  4B 74 AE 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80B26094  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B26098  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80B2609C  7C 65 1B 78 */	mr r5, r3
/* 80B260A0  4B 82 0F F1 */	bl PSVECAdd
/* 80B260A4  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80B260A8  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80B260AC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80B260B0  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80B260B4  4B 74 99 89 */	bl cLib_addCalc2__FPffff
/* 80B260B8  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 80B260BC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80B260C0  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80B260C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B260C8  EC 21 00 2A */	fadds f1, f1, f0
/* 80B260CC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80B260D0  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80B260D4  4B 74 99 69 */	bl cLib_addCalc2__FPffff
/* 80B260D8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80B260DC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B260E0  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80B260E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B260E8  EC 02 00 2A */	fadds f0, f2, f0
/* 80B260EC  FC 00 00 1E */	fctiwz f0, f0
/* 80B260F0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B260F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B260F8  B0 1E 05 EE */	sth r0, 0x5ee(r30)
/* 80B260FC  A8 7E 05 EC */	lha r3, 0x5ec(r30)
/* 80B26100  A8 1E 05 EE */	lha r0, 0x5ee(r30)
/* 80B26104  7C 03 02 14 */	add r0, r3, r0
/* 80B26108  B0 1E 05 EC */	sth r0, 0x5ec(r30)
/* 80B2610C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80B26110  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80B26114  90 61 00 08 */	stw r3, 8(r1)
/* 80B26118  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B2611C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80B26120  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B26124  38 60 00 00 */	li r3, 0
/* 80B26128  38 80 00 00 */	li r4, 0
/* 80B2612C  38 A0 00 00 */	li r5, 0
/* 80B26130  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B26134  39 06 9A 20 */	addi r8, r6, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B26138  38 E1 00 08 */	addi r7, r1, 8
/* 80B2613C  38 00 00 03 */	li r0, 3
/* 80B26140  7C 09 03 A6 */	mtctr r0
lbl_80B26144:
/* 80B26144  A8 1E 05 EC */	lha r0, 0x5ec(r30)
/* 80B26148  7C 00 2A 14 */	add r0, r0, r5
/* 80B2614C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B26150  7C 48 04 2E */	lfsx f2, r8, r0
/* 80B26154  7C 27 24 2E */	lfsx f1, r7, r4
/* 80B26158  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80B2615C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B26160  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B26164  FC 00 00 1E */	fctiwz f0, f0
/* 80B26168  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B2616C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80B26170  38 03 05 F2 */	addi r0, r3, 0x5f2
/* 80B26174  7C DE 03 2E */	sthx r6, r30, r0
/* 80B26178  38 63 00 02 */	addi r3, r3, 2
/* 80B2617C  38 84 00 04 */	addi r4, r4, 4
/* 80B26180  38 A5 C5 68 */	addi r5, r5, -15000
/* 80B26184  42 00 FF C0 */	bdnz lbl_80B26144
/* 80B26188  A8 7E 05 EC */	lha r3, 0x5ec(r30)
/* 80B2618C  38 03 E4 A8 */	addi r0, r3, -7000
/* 80B26190  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B26194  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B26198  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B2619C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80B261A0  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80B261A4  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80B261A8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B261AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B261B0  FC 00 00 1E */	fctiwz f0, f0
/* 80B261B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B261B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B261BC  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80B261C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B261C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B261C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B261CC  7C 08 03 A6 */	mtlr r0
/* 80B261D0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B261D4  4E 80 00 20 */	blr 
