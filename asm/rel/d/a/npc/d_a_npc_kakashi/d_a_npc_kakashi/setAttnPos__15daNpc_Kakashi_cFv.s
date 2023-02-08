lbl_8054C2E0:
/* 8054C2E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8054C2E4  7C 08 02 A6 */	mflr r0
/* 8054C2E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8054C2EC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8054C2F0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8054C2F4  39 61 00 60 */	addi r11, r1, 0x60
/* 8054C2F8  4B E1 5E D5 */	bl _savegpr_25
/* 8054C2FC  7C 7C 1B 78 */	mr r28, r3
/* 8054C300  3C 60 80 55 */	lis r3, m__21daNpc_Kakashi_Param_c@ha /* 0x8054EAC4@ha */
/* 8054C304  3B E3 EA C4 */	addi r31, r3, m__21daNpc_Kakashi_Param_c@l /* 0x8054EAC4@l */
/* 8054C308  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8054C30C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8054C310  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8054C314  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8054C318  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8054C31C  88 1C 13 92 */	lbz r0, 0x1392(r28)
/* 8054C320  28 00 00 00 */	cmplwi r0, 0
/* 8054C324  40 82 00 14 */	bne lbl_8054C338
/* 8054C328  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C32C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C330  A8 9C 13 8C */	lha r4, 0x138c(r28)
/* 8054C334  4B AC 00 A9 */	bl mDoMtx_YrotS__FPA4_fs
lbl_8054C338:
/* 8054C338  3B A0 00 00 */	li r29, 0
/* 8054C33C  3B 60 00 00 */	li r27, 0
/* 8054C340  3B 40 00 00 */	li r26, 0
/* 8054C344  3B 20 00 00 */	li r25, 0
lbl_8054C348:
/* 8054C348  88 1C 13 92 */	lbz r0, 0x1392(r28)
/* 8054C34C  28 00 00 00 */	cmplwi r0, 0
/* 8054C350  41 82 00 A0 */	beq lbl_8054C3F0
/* 8054C354  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C358  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C35C  3B D9 13 84 */	addi r30, r25, 0x1384
/* 8054C360  7C 9C F2 AE */	lhax r4, r28, r30
/* 8054C364  4B AC 00 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 8054C368  38 1A 13 78 */	addi r0, r26, 0x1378
/* 8054C36C  7C 3C 04 2E */	lfsx f1, r28, r0
/* 8054C370  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8054C374  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8054C378  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8054C37C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8054C380  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C384  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C388  38 81 00 14 */	addi r4, r1, 0x14
/* 8054C38C  38 A1 00 08 */	addi r5, r1, 8
/* 8054C390  4B DF A9 DD */	bl PSMTXMultVec
/* 8054C394  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8054C398  FC 00 00 50 */	fneg f0, f0
/* 8054C39C  FC 00 00 1E */	fctiwz f0, f0
/* 8054C3A0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8054C3A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054C3A8  7C 7C DA 14 */	add r3, r28, r27
/* 8054C3AC  B0 03 13 64 */	sth r0, 0x1364(r3)
/* 8054C3B0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8054C3B4  FC 00 00 50 */	fneg f0, f0
/* 8054C3B8  FC 00 00 1E */	fctiwz f0, f0
/* 8054C3BC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8054C3C0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8054C3C4  B0 03 13 68 */	sth r0, 0x1368(r3)
/* 8054C3C8  2C 1D 00 02 */	cmpwi r29, 2
/* 8054C3CC  40 82 00 14 */	bne lbl_8054C3E0
/* 8054C3D0  7C 7C F2 AE */	lhax r3, r28, r30
/* 8054C3D4  38 03 20 00 */	addi r0, r3, 0x2000
/* 8054C3D8  7C 1C F3 2E */	sthx r0, r28, r30
/* 8054C3DC  48 00 00 9C */	b lbl_8054C478
lbl_8054C3E0:
/* 8054C3E0  7C 7C F2 AE */	lhax r3, r28, r30
/* 8054C3E4  38 03 E0 00 */	addi r0, r3, -8192
/* 8054C3E8  7C 1C F3 2E */	sthx r0, r28, r30
/* 8054C3EC  48 00 00 8C */	b lbl_8054C478
lbl_8054C3F0:
/* 8054C3F0  3B D9 13 84 */	addi r30, r25, 0x1384
/* 8054C3F4  7C 1C F2 AE */	lhax r0, r28, r30
/* 8054C3F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8054C3FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8054C400  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8054C404  7C 23 04 2E */	lfsx f1, r3, r0
/* 8054C408  38 1A 13 78 */	addi r0, r26, 0x1378
/* 8054C40C  7C 1C 04 2E */	lfsx f0, r28, r0
/* 8054C410  EC 20 00 72 */	fmuls f1, f0, f1
/* 8054C414  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8054C418  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8054C41C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8054C420  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8054C424  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C428  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C42C  38 81 00 14 */	addi r4, r1, 0x14
/* 8054C430  38 A1 00 08 */	addi r5, r1, 8
/* 8054C434  4B DF A9 39 */	bl PSMTXMultVec
/* 8054C438  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8054C43C  FC 00 00 50 */	fneg f0, f0
/* 8054C440  FC 00 00 1E */	fctiwz f0, f0
/* 8054C444  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8054C448  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8054C44C  7C 7C DA 14 */	add r3, r28, r27
/* 8054C450  B0 03 13 64 */	sth r0, 0x1364(r3)
/* 8054C454  C0 01 00 08 */	lfs f0, 8(r1)
/* 8054C458  FC 00 00 50 */	fneg f0, f0
/* 8054C45C  FC 00 00 1E */	fctiwz f0, f0
/* 8054C460  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8054C464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054C468  B0 03 13 68 */	sth r0, 0x1368(r3)
/* 8054C46C  7C 7C F2 AE */	lhax r3, r28, r30
/* 8054C470  38 03 20 00 */	addi r0, r3, 0x2000
/* 8054C474  7C 1C F3 2E */	sthx r0, r28, r30
lbl_8054C478:
/* 8054C478  3B BD 00 01 */	addi r29, r29, 1
/* 8054C47C  2C 1D 00 03 */	cmpwi r29, 3
/* 8054C480  3B 7B 00 06 */	addi r27, r27, 6
/* 8054C484  3B 5A 00 04 */	addi r26, r26, 4
/* 8054C488  3B 39 00 02 */	addi r25, r25, 2
/* 8054C48C  41 80 FE BC */	blt lbl_8054C348
/* 8054C490  38 7C 13 80 */	addi r3, r28, 0x1380
/* 8054C494  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8054C498  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8054C49C  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 8054C4A0  4B D2 35 9D */	bl cLib_addCalc2__FPffff
/* 8054C4A4  38 7C 13 78 */	addi r3, r28, 0x1378
/* 8054C4A8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8054C4AC  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 8054C4B0  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 8054C4B4  4B D2 35 89 */	bl cLib_addCalc2__FPffff
/* 8054C4B8  38 7C 13 7C */	addi r3, r28, 0x137c
/* 8054C4BC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8054C4C0  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 8054C4C4  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 8054C4C8  4B D2 35 75 */	bl cLib_addCalc2__FPffff
/* 8054C4CC  7F 83 E3 78 */	mr r3, r28
/* 8054C4D0  4B BF CC C1 */	bl setMtx__8daNpcT_cFv
/* 8054C4D4  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 8054C4D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8054C4DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8054C4E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8054C4E4  38 63 01 50 */	addi r3, r3, 0x150
/* 8054C4E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C4EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C4F0  4B DF 9F C1 */	bl PSMTXCopy
/* 8054C4F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C4F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C4FC  38 81 00 20 */	addi r4, r1, 0x20
/* 8054C500  38 BC 05 38 */	addi r5, r28, 0x538
/* 8054C504  4B DF A8 69 */	bl PSMTXMultVec
/* 8054C508  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 8054C50C  2C 00 00 00 */	cmpwi r0, 0
/* 8054C510  40 82 00 14 */	bne lbl_8054C524
/* 8054C514  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 8054C518  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8054C51C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8054C520  D0 1C 05 3C */	stfs f0, 0x53c(r28)
lbl_8054C524:
/* 8054C524  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8054C528  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 8054C52C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8054C530  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8054C534  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8054C538  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 8054C53C  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 8054C540  EC 00 F8 2A */	fadds f0, f0, f31
/* 8054C544  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8054C548  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 8054C54C  2C 00 00 02 */	cmpwi r0, 2
/* 8054C550  40 82 00 14 */	bne lbl_8054C564
/* 8054C554  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 8054C558  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8054C55C  EC 01 00 2A */	fadds f0, f1, f0
/* 8054C560  D0 1C 05 54 */	stfs f0, 0x554(r28)
lbl_8054C564:
/* 8054C564  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8054C568  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8054C56C  39 61 00 60 */	addi r11, r1, 0x60
/* 8054C570  4B E1 5C A9 */	bl _restgpr_25
/* 8054C574  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8054C578  7C 08 03 A6 */	mtlr r0
/* 8054C57C  38 21 00 70 */	addi r1, r1, 0x70
/* 8054C580  4E 80 00 20 */	blr 
