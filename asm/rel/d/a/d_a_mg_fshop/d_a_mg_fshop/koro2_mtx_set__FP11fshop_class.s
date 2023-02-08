lbl_8086D1EC:
/* 8086D1EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8086D1F0  7C 08 02 A6 */	mflr r0
/* 8086D1F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8086D1F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8086D1FC  4B AF 4F D5 */	bl _savegpr_26
/* 8086D200  7C 7F 1B 78 */	mr r31, r3
/* 8086D204  3C 60 80 87 */	lis r3, lit_3829@ha /* 0x80870094@ha */
/* 8086D208  3B A3 00 94 */	addi r29, r3, lit_3829@l /* 0x80870094@l */
/* 8086D20C  88 1F 40 0D */	lbz r0, 0x400d(r31)
/* 8086D210  28 00 00 00 */	cmplwi r0, 0
/* 8086D214  41 82 00 7C */	beq lbl_8086D290
/* 8086D218  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D21C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D220  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8086D224  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 8086D228  FC 60 08 90 */	fmr f3, f1
/* 8086D22C  4B AD 96 BD */	bl PSMTXTrans
/* 8086D230  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D234  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D238  38 9F 40 30 */	addi r4, r31, 0x4030
/* 8086D23C  4B AD 92 75 */	bl PSMTXCopy
/* 8086D240  80 7F 40 2C */	lwz r3, 0x402c(r31)
/* 8086D244  4B 80 E7 7D */	bl Move__4dBgWFv
/* 8086D248  3B 40 00 00 */	li r26, 0
/* 8086D24C  3B 60 00 00 */	li r27, 0
/* 8086D250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D254  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8086D258:
/* 8086D258  7F BF DA 14 */	add r29, r31, r27
/* 8086D25C  80 1D 42 90 */	lwz r0, 0x4290(r29)
/* 8086D260  28 00 00 00 */	cmplwi r0, 0
/* 8086D264  41 82 00 18 */	beq lbl_8086D27C
/* 8086D268  7F 83 E3 78 */	mr r3, r28
/* 8086D26C  38 9D 42 94 */	addi r4, r29, 0x4294
/* 8086D270  4B AD 92 41 */	bl PSMTXCopy
/* 8086D274  80 7D 42 F4 */	lwz r3, 0x42f4(r29)
/* 8086D278  4B 80 E7 49 */	bl Move__4dBgWFv
lbl_8086D27C:
/* 8086D27C  3B 5A 00 01 */	addi r26, r26, 1
/* 8086D280  2C 1A 00 64 */	cmpwi r26, 0x64
/* 8086D284  3B 7B 00 68 */	addi r27, r27, 0x68
/* 8086D288  41 80 FF D0 */	blt lbl_8086D258
/* 8086D28C  48 00 01 E8 */	b lbl_8086D474
lbl_8086D290:
/* 8086D290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D298  C0 3F 40 14 */	lfs f1, 0x4014(r31)
/* 8086D29C  C0 5F 40 18 */	lfs f2, 0x4018(r31)
/* 8086D2A0  C0 7F 40 1C */	lfs f3, 0x401c(r31)
/* 8086D2A4  4B AD 96 45 */	bl PSMTXTrans
/* 8086D2A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D2AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D2B0  A8 9F 40 22 */	lha r4, 0x4022(r31)
/* 8086D2B4  4B 79 F1 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 8086D2B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D2BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D2C0  A8 9F 40 20 */	lha r4, 0x4020(r31)
/* 8086D2C4  4B 79 F0 D9 */	bl mDoMtx_XrotM__FPA4_fs
/* 8086D2C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D2CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D2D0  A8 9F 40 24 */	lha r4, 0x4024(r31)
/* 8086D2D4  4B 79 F1 F9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086D2D8  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 8086D2DC  FC 40 08 90 */	fmr f2, f1
/* 8086D2E0  FC 60 08 90 */	fmr f3, f1
/* 8086D2E4  4B 79 FB 55 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086D2E8  4B 79 F9 E1 */	bl push__14mDoMtx_stack_cFv
/* 8086D2EC  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 8086D2F0  FC 40 08 90 */	fmr f2, f1
/* 8086D2F4  FC 60 08 90 */	fmr f3, f1
/* 8086D2F8  4B 79 FB 41 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086D2FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D304  80 9F 40 28 */	lwz r4, 0x4028(r31)
/* 8086D308  38 84 00 24 */	addi r4, r4, 0x24
/* 8086D30C  4B AD 91 A5 */	bl PSMTXCopy
/* 8086D310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D318  38 9F 40 30 */	addi r4, r31, 0x4030
/* 8086D31C  4B AD 91 95 */	bl PSMTXCopy
/* 8086D320  80 7F 40 2C */	lwz r3, 0x402c(r31)
/* 8086D324  4B 80 E6 9D */	bl Move__4dBgWFv
/* 8086D328  4B 79 F9 ED */	bl pop__14mDoMtx_stack_cFv
/* 8086D32C  3B 80 00 00 */	li r28, 0
/* 8086D330  3B 60 00 00 */	li r27, 0
/* 8086D334  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D338  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8086D33C:
/* 8086D33C  7F 5F DA 14 */	add r26, r31, r27
/* 8086D340  80 1A 42 90 */	lwz r0, 0x4290(r26)
/* 8086D344  28 00 00 00 */	cmplwi r0, 0
/* 8086D348  41 82 01 1C */	beq lbl_8086D464
/* 8086D34C  4B 79 F9 7D */	bl push__14mDoMtx_stack_cFv
/* 8086D350  C0 3A 42 C8 */	lfs f1, 0x42c8(r26)
/* 8086D354  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 8086D358  EC 21 00 2A */	fadds f1, f1, f0
/* 8086D35C  C0 5A 42 CC */	lfs f2, 0x42cc(r26)
/* 8086D360  C0 7A 42 D0 */	lfs f3, 0x42d0(r26)
/* 8086D364  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8086D368  EC 63 00 2A */	fadds f3, f3, f0
/* 8086D36C  4B 79 FA 31 */	bl transM__14mDoMtx_stack_cFfff
/* 8086D370  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D374  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D378  A8 9A 42 E0 */	lha r4, 0x42e0(r26)
/* 8086D37C  4B 79 F0 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8086D380  C0 3A 42 D4 */	lfs f1, 0x42d4(r26)
/* 8086D384  C0 5A 42 D8 */	lfs f2, 0x42d8(r26)
/* 8086D388  C0 7A 42 DC */	lfs f3, 0x42dc(r26)
/* 8086D38C  4B 79 FA AD */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086D390  4B 79 F9 39 */	bl push__14mDoMtx_stack_cFv
/* 8086D394  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 8086D398  FC 40 08 90 */	fmr f2, f1
/* 8086D39C  FC 60 08 90 */	fmr f3, f1
/* 8086D3A0  4B 79 FA 99 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086D3A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D3A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D3AC  80 9A 42 90 */	lwz r4, 0x4290(r26)
/* 8086D3B0  38 84 00 24 */	addi r4, r4, 0x24
/* 8086D3B4  4B AD 90 FD */	bl PSMTXCopy
/* 8086D3B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D3BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D3C0  38 9A 42 94 */	addi r4, r26, 0x4294
/* 8086D3C4  4B AD 90 ED */	bl PSMTXCopy
/* 8086D3C8  80 7A 42 F4 */	lwz r3, 0x42f4(r26)
/* 8086D3CC  4B 80 E5 F5 */	bl Move__4dBgWFv
/* 8086D3D0  4B 79 F9 45 */	bl pop__14mDoMtx_stack_cFv
/* 8086D3D4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8086D3D8  D0 1A 42 E4 */	stfs f0, 0x42e4(r26)
/* 8086D3DC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8086D3E0  D0 1A 42 E8 */	stfs f0, 0x42e8(r26)
/* 8086D3E4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8086D3E8  D0 1A 42 EC */	stfs f0, 0x42ec(r26)
/* 8086D3EC  88 1A 42 C4 */	lbz r0, 0x42c4(r26)
/* 8086D3F0  7C 00 07 74 */	extsb r0, r0
/* 8086D3F4  2C 00 00 06 */	cmpwi r0, 6
/* 8086D3F8  40 82 00 34 */	bne lbl_8086D42C
/* 8086D3FC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8086D400  D0 01 00 08 */	stfs f0, 8(r1)
/* 8086D404  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8086D408  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 8086D40C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8086D410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D418  38 81 00 08 */	addi r4, r1, 8
/* 8086D41C  3C A0 80 87 */	lis r5, BallStartPos@ha /* 0x808709A4@ha */
/* 8086D420  38 A5 09 A4 */	addi r5, r5, BallStartPos@l /* 0x808709A4@l */
/* 8086D424  4B AD 99 49 */	bl PSMTXMultVec
/* 8086D428  48 00 00 38 */	b lbl_8086D460
lbl_8086D42C:
/* 8086D42C  2C 00 00 07 */	cmpwi r0, 7
/* 8086D430  40 82 00 30 */	bne lbl_8086D460
/* 8086D434  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8086D438  D0 01 00 08 */	stfs f0, 8(r1)
/* 8086D43C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8086D440  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 8086D444  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8086D448  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086D44C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086D450  38 81 00 08 */	addi r4, r1, 8
/* 8086D454  3C A0 80 87 */	lis r5, BallEndPos@ha /* 0x808709BC@ha */
/* 8086D458  38 A5 09 BC */	addi r5, r5, BallEndPos@l /* 0x808709BC@l */
/* 8086D45C  4B AD 99 11 */	bl PSMTXMultVec
lbl_8086D460:
/* 8086D460  4B 79 F8 B5 */	bl pop__14mDoMtx_stack_cFv
lbl_8086D464:
/* 8086D464  3B 9C 00 01 */	addi r28, r28, 1
/* 8086D468  2C 1C 00 64 */	cmpwi r28, 0x64
/* 8086D46C  3B 7B 00 68 */	addi r27, r27, 0x68
/* 8086D470  41 80 FE CC */	blt lbl_8086D33C
lbl_8086D474:
/* 8086D474  39 61 00 30 */	addi r11, r1, 0x30
/* 8086D478  4B AF 4D A5 */	bl _restgpr_26
/* 8086D47C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8086D480  7C 08 03 A6 */	mtlr r0
/* 8086D484  38 21 00 30 */	addi r1, r1, 0x30
/* 8086D488  4E 80 00 20 */	blr 
