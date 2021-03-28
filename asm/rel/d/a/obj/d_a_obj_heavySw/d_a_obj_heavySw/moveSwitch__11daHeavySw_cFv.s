lbl_80C1D02C:
/* 80C1D02C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C1D030  7C 08 02 A6 */	mflr r0
/* 80C1D034  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C1D038  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C1D03C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C1D040  7C 7E 1B 78 */	mr r30, r3
/* 80C1D044  3C 60 80 C2 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C1D048  38 83 DA E8 */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80C1D04C  3C 60 80 C2 */	lis r3, lit_3647@ha
/* 80C1D050  3B E3 DA 94 */	addi r31, r3, lit_3647@l
/* 80C1D054  3C 60 80 C2 */	lis r3, data_80C1DC8C@ha
/* 80C1D058  38 C3 DC 8C */	addi r6, r3, data_80C1DC8C@l
/* 80C1D05C  88 06 00 00 */	lbz r0, 0(r6)
/* 80C1D060  7C 00 07 75 */	extsb. r0, r0
/* 80C1D064  40 82 00 88 */	bne lbl_80C1D0EC
/* 80C1D068  80 64 00 20 */	lwz r3, 0x20(r4)
/* 80C1D06C  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80C1D070  90 64 00 5C */	stw r3, 0x5c(r4)
/* 80C1D074  90 04 00 60 */	stw r0, 0x60(r4)
/* 80C1D078  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80C1D07C  90 04 00 64 */	stw r0, 0x64(r4)
/* 80C1D080  38 A4 00 5C */	addi r5, r4, 0x5c
/* 80C1D084  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 80C1D088  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80C1D08C  90 65 00 0C */	stw r3, 0xc(r5)
/* 80C1D090  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C1D094  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80C1D098  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C1D09C  80 64 00 38 */	lwz r3, 0x38(r4)
/* 80C1D0A0  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80C1D0A4  90 65 00 18 */	stw r3, 0x18(r5)
/* 80C1D0A8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C1D0AC  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80C1D0B0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C1D0B4  80 64 00 44 */	lwz r3, 0x44(r4)
/* 80C1D0B8  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80C1D0BC  90 65 00 24 */	stw r3, 0x24(r5)
/* 80C1D0C0  90 05 00 28 */	stw r0, 0x28(r5)
/* 80C1D0C4  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80C1D0C8  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80C1D0CC  80 64 00 50 */	lwz r3, 0x50(r4)
/* 80C1D0D0  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80C1D0D4  90 65 00 30 */	stw r3, 0x30(r5)
/* 80C1D0D8  90 05 00 34 */	stw r0, 0x34(r5)
/* 80C1D0DC  80 04 00 58 */	lwz r0, 0x58(r4)
/* 80C1D0E0  90 05 00 38 */	stw r0, 0x38(r5)
/* 80C1D0E4  38 00 00 01 */	li r0, 1
/* 80C1D0E8  98 06 00 00 */	stb r0, 0(r6)
lbl_80C1D0EC:
/* 80C1D0EC  7F C3 F3 78 */	mr r3, r30
/* 80C1D0F0  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C1D0F4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C1D0F8  39 84 00 5C */	addi r12, r4, 0x5c
/* 80C1D0FC  7D 8C 02 14 */	add r12, r12, r0
/* 80C1D100  4B 74 4F 84 */	b __ptmf_scall
/* 80C1D104  60 00 00 00 */	nop 
/* 80C1D108  88 1E 05 D8 */	lbz r0, 0x5d8(r30)
/* 80C1D10C  28 00 00 00 */	cmplwi r0, 0
/* 80C1D110  40 82 00 D4 */	bne lbl_80C1D1E4
/* 80C1D114  88 1E 05 C5 */	lbz r0, 0x5c5(r30)
/* 80C1D118  28 00 00 00 */	cmplwi r0, 0
/* 80C1D11C  40 82 00 C8 */	bne lbl_80C1D1E4
/* 80C1D120  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C1D124  28 00 00 00 */	cmplwi r0, 0
/* 80C1D128  41 82 00 1C */	beq lbl_80C1D144
/* 80C1D12C  7F C3 F3 78 */	mr r3, r30
/* 80C1D130  48 00 01 45 */	bl init_modeWait__11daHeavySw_cFv
/* 80C1D134  38 00 00 00 */	li r0, 0
/* 80C1D138  98 1E 07 FC */	stb r0, 0x7fc(r30)
/* 80C1D13C  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80C1D140  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
lbl_80C1D144:
/* 80C1D144  88 1E 07 FC */	lbz r0, 0x7fc(r30)
/* 80C1D148  28 00 00 00 */	cmplwi r0, 0
/* 80C1D14C  40 82 00 70 */	bne lbl_80C1D1BC
/* 80C1D150  C0 5E 05 BC */	lfs f2, 0x5bc(r30)
/* 80C1D154  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 80C1D158  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C1D15C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1D160  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C1D164  40 80 00 58 */	bge lbl_80C1D1BC
/* 80C1D168  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C1D16C  7C 03 07 74 */	extsb r3, r0
/* 80C1D170  4B 40 FE FC */	b dComIfGp_getReverb__Fi
/* 80C1D174  7C 67 1B 78 */	mr r7, r3
/* 80C1D178  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080128@ha */
/* 80C1D17C  38 03 01 28 */	addi r0, r3, 0x0128 /* 0x00080128@l */
/* 80C1D180  90 01 00 08 */	stw r0, 8(r1)
/* 80C1D184  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C1D188  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C1D18C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1D190  38 81 00 08 */	addi r4, r1, 8
/* 80C1D194  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1D198  38 C0 00 00 */	li r6, 0
/* 80C1D19C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C1D1A0  FC 40 08 90 */	fmr f2, f1
/* 80C1D1A4  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80C1D1A8  FC 80 18 90 */	fmr f4, f3
/* 80C1D1AC  39 00 00 00 */	li r8, 0
/* 80C1D1B0  4B 68 E7 D4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C1D1B4  38 00 00 01 */	li r0, 1
/* 80C1D1B8  98 1E 07 FC */	stb r0, 0x7fc(r30)
lbl_80C1D1BC:
/* 80C1D1BC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C1D1C0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C1D1C4  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80C1D1C8  4B 65 28 B8 */	b cLib_addCalc0__FPfff
/* 80C1D1CC  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 80C1D1D0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C1D1D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1D1D8  40 80 00 0C */	bge lbl_80C1D1E4
/* 80C1D1DC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C1D1E0  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
lbl_80C1D1E4:
/* 80C1D1E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C1D1E8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80C1D1EC  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 80C1D1F0  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 80C1D1F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1D1F8  7C 64 02 14 */	add r3, r4, r0
/* 80C1D1FC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C1D200  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C1D204  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1D208  FC 00 00 1E */	fctiwz f0, f0
/* 80C1D20C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C1D210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1D214  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 80C1D218  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 80C1D21C  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 80C1D220  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1D224  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C1D228  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C1D22C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1D230  FC 00 00 1E */	fctiwz f0, f0
/* 80C1D234  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C1D238  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C1D23C  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80C1D240  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C1D244  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C1D248  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80C1D24C  4B 65 28 34 */	b cLib_addCalc0__FPfff
/* 80C1D250  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80C1D254  38 03 00 01 */	addi r0, r3, 1
/* 80C1D258  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80C1D25C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C1D260  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C1D264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C1D268  7C 08 03 A6 */	mtlr r0
/* 80C1D26C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C1D270  4E 80 00 20 */	blr 
