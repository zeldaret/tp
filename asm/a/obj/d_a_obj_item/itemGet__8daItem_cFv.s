lbl_8015D0A8:
/* 8015D0A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015D0AC  7C 08 02 A6 */	mflr r0
/* 8015D0B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015D0B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015D0B8  7C 7F 1B 78 */	mr r31, r3
/* 8015D0BC  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 8015D0C0  2C 00 00 06 */	cmpwi r0, 6
/* 8015D0C4  41 82 01 DC */	beq lbl_8015D2A0
/* 8015D0C8  40 80 00 30 */	bge lbl_8015D0F8
/* 8015D0CC  2C 00 00 02 */	cmpwi r0, 2
/* 8015D0D0  41 82 00 D0 */	beq lbl_8015D1A0
/* 8015D0D4  40 80 00 14 */	bge lbl_8015D0E8
/* 8015D0D8  2C 00 00 00 */	cmpwi r0, 0
/* 8015D0DC  41 82 00 44 */	beq lbl_8015D120
/* 8015D0E0  40 80 00 80 */	bge lbl_8015D160
/* 8015D0E4  48 00 02 78 */	b lbl_8015D35C
lbl_8015D0E8:
/* 8015D0E8  2C 00 00 04 */	cmpwi r0, 4
/* 8015D0EC  41 82 01 34 */	beq lbl_8015D220
/* 8015D0F0  40 80 01 70 */	bge lbl_8015D260
/* 8015D0F4  48 00 00 EC */	b lbl_8015D1E0
lbl_8015D0F8:
/* 8015D0F8  2C 00 00 13 */	cmpwi r0, 0x13
/* 8015D0FC  40 80 00 18 */	bge lbl_8015D114
/* 8015D100  2C 00 00 0E */	cmpwi r0, 0xe
/* 8015D104  40 80 02 1C */	bge lbl_8015D320
/* 8015D108  2C 00 00 08 */	cmpwi r0, 8
/* 8015D10C  40 80 02 50 */	bge lbl_8015D35C
/* 8015D110  48 00 01 D0 */	b lbl_8015D2E0
lbl_8015D114:
/* 8015D114  2C 00 00 40 */	cmpwi r0, 0x40
/* 8015D118  41 82 02 44 */	beq lbl_8015D35C
/* 8015D11C  48 00 02 40 */	b lbl_8015D35C
lbl_8015D120:
/* 8015D120  38 00 00 17 */	li r0, 0x17
/* 8015D124  90 01 00 28 */	stw r0, 0x28(r1)
/* 8015D128  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D12C  38 81 00 28 */	addi r4, r1, 0x28
/* 8015D130  38 A0 00 00 */	li r5, 0
/* 8015D134  38 C0 00 00 */	li r6, 0
/* 8015D138  38 E0 00 00 */	li r7, 0
/* 8015D13C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D140  FC 40 08 90 */	fmr f2, f1
/* 8015D144  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D148  FC 80 18 90 */	fmr f4, f3
/* 8015D14C  39 00 00 00 */	li r8, 0
/* 8015D150  48 14 E8 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D154  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D158  4B F3 AD 35 */	bl execItemGet__FUc
/* 8015D15C  48 00 02 00 */	b lbl_8015D35C
lbl_8015D160:
/* 8015D160  38 00 00 70 */	li r0, 0x70
/* 8015D164  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D168  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D16C  38 81 00 24 */	addi r4, r1, 0x24
/* 8015D170  38 A0 00 00 */	li r5, 0
/* 8015D174  38 C0 00 00 */	li r6, 0
/* 8015D178  38 E0 00 00 */	li r7, 0
/* 8015D17C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D180  FC 40 08 90 */	fmr f2, f1
/* 8015D184  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D188  FC 80 18 90 */	fmr f4, f3
/* 8015D18C  39 00 00 00 */	li r8, 0
/* 8015D190  48 14 E7 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D194  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D198  4B F3 AC F5 */	bl execItemGet__FUc
/* 8015D19C  48 00 01 C0 */	b lbl_8015D35C
lbl_8015D1A0:
/* 8015D1A0  38 00 00 71 */	li r0, 0x71
/* 8015D1A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8015D1A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D1AC  38 81 00 20 */	addi r4, r1, 0x20
/* 8015D1B0  38 A0 00 00 */	li r5, 0
/* 8015D1B4  38 C0 00 00 */	li r6, 0
/* 8015D1B8  38 E0 00 00 */	li r7, 0
/* 8015D1BC  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D1C0  FC 40 08 90 */	fmr f2, f1
/* 8015D1C4  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D1C8  FC 80 18 90 */	fmr f4, f3
/* 8015D1CC  39 00 00 00 */	li r8, 0
/* 8015D1D0  48 14 E7 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D1D4  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D1D8  4B F3 AC B5 */	bl execItemGet__FUc
/* 8015D1DC  48 00 01 80 */	b lbl_8015D35C
lbl_8015D1E0:
/* 8015D1E0  38 00 00 71 */	li r0, 0x71
/* 8015D1E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015D1E8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D1EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8015D1F0  38 A0 00 00 */	li r5, 0
/* 8015D1F4  38 C0 00 00 */	li r6, 0
/* 8015D1F8  38 E0 00 00 */	li r7, 0
/* 8015D1FC  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D200  FC 40 08 90 */	fmr f2, f1
/* 8015D204  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D208  FC 80 18 90 */	fmr f4, f3
/* 8015D20C  39 00 00 00 */	li r8, 0
/* 8015D210  48 14 E7 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D214  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D218  4B F3 AC 75 */	bl execItemGet__FUc
/* 8015D21C  48 00 01 40 */	b lbl_8015D35C
lbl_8015D220:
/* 8015D220  38 00 00 72 */	li r0, 0x72
/* 8015D224  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015D228  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D22C  38 81 00 18 */	addi r4, r1, 0x18
/* 8015D230  38 A0 00 00 */	li r5, 0
/* 8015D234  38 C0 00 00 */	li r6, 0
/* 8015D238  38 E0 00 00 */	li r7, 0
/* 8015D23C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D240  FC 40 08 90 */	fmr f2, f1
/* 8015D244  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D248  FC 80 18 90 */	fmr f4, f3
/* 8015D24C  39 00 00 00 */	li r8, 0
/* 8015D250  48 14 E7 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D254  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D258  4B F3 AC 35 */	bl execItemGet__FUc
/* 8015D25C  48 00 01 00 */	b lbl_8015D35C
lbl_8015D260:
/* 8015D260  38 00 00 72 */	li r0, 0x72
/* 8015D264  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D268  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D26C  38 81 00 14 */	addi r4, r1, 0x14
/* 8015D270  38 A0 00 00 */	li r5, 0
/* 8015D274  38 C0 00 00 */	li r6, 0
/* 8015D278  38 E0 00 00 */	li r7, 0
/* 8015D27C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D280  FC 40 08 90 */	fmr f2, f1
/* 8015D284  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D288  FC 80 18 90 */	fmr f4, f3
/* 8015D28C  39 00 00 00 */	li r8, 0
/* 8015D290  48 14 E6 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D294  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D298  4B F3 AB F5 */	bl execItemGet__FUc
/* 8015D29C  48 00 00 C0 */	b lbl_8015D35C
lbl_8015D2A0:
/* 8015D2A0  38 00 00 72 */	li r0, 0x72
/* 8015D2A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015D2A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D2AC  38 81 00 10 */	addi r4, r1, 0x10
/* 8015D2B0  38 A0 00 00 */	li r5, 0
/* 8015D2B4  38 C0 00 00 */	li r6, 0
/* 8015D2B8  38 E0 00 00 */	li r7, 0
/* 8015D2BC  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D2C0  FC 40 08 90 */	fmr f2, f1
/* 8015D2C4  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D2C8  FC 80 18 90 */	fmr f4, f3
/* 8015D2CC  39 00 00 00 */	li r8, 0
/* 8015D2D0  48 14 E6 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D2D4  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D2D8  4B F3 AB B5 */	bl execItemGet__FUc
/* 8015D2DC  48 00 00 80 */	b lbl_8015D35C
lbl_8015D2E0:
/* 8015D2E0  38 00 00 72 */	li r0, 0x72
/* 8015D2E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015D2E8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D2EC  38 81 00 0C */	addi r4, r1, 0xc
/* 8015D2F0  38 A0 00 00 */	li r5, 0
/* 8015D2F4  38 C0 00 00 */	li r6, 0
/* 8015D2F8  38 E0 00 00 */	li r7, 0
/* 8015D2FC  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D300  FC 40 08 90 */	fmr f2, f1
/* 8015D304  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D308  FC 80 18 90 */	fmr f4, f3
/* 8015D30C  39 00 00 00 */	li r8, 0
/* 8015D310  48 14 E6 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D314  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D318  4B F3 AB 75 */	bl execItemGet__FUc
/* 8015D31C  48 00 00 40 */	b lbl_8015D35C
lbl_8015D320:
/* 8015D320  38 00 00 18 */	li r0, 0x18
/* 8015D324  90 01 00 08 */	stw r0, 8(r1)
/* 8015D328  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D32C  38 81 00 08 */	addi r4, r1, 8
/* 8015D330  38 A0 00 00 */	li r5, 0
/* 8015D334  38 C0 00 00 */	li r6, 0
/* 8015D338  38 E0 00 00 */	li r7, 0
/* 8015D33C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D340  FC 40 08 90 */	fmr f2, f1
/* 8015D344  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D348  FC 80 18 90 */	fmr f4, f3
/* 8015D34C  39 00 00 00 */	li r8, 0
/* 8015D350  48 14 E6 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D354  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D358  4B F3 AB 35 */	bl execItemGet__FUc
lbl_8015D35C:
/* 8015D35C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015D360  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015D364  7C 08 03 A6 */	mtlr r0
/* 8015D368  38 21 00 40 */	addi r1, r1, 0x40
/* 8015D36C  4E 80 00 20 */	blr 
