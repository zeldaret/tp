lbl_8023B4AC:
/* 8023B4AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8023B4B0  7C 08 02 A6 */	mflr r0
/* 8023B4B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8023B4B8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8023B4BC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8023B4C0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8023B4C4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8023B4C8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8023B4CC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8023B4D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8023B4D4  48 12 6C FD */	bl _savegpr_26
/* 8023B4D8  7C 7C 1B 78 */	mr r28, r3
/* 8023B4DC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8023B4E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023B4E4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8023B4E8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8023B4EC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8023B4F0  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B4F4  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 8023B4F8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B4FC  EF E1 00 32 */	fmuls f31, f1, f0
/* 8023B500  38 60 00 00 */	li r3, 0
/* 8023B504  C0 02 B1 58 */	lfs f0, lit_3909(r2)
/* 8023B508  38 81 00 08 */	addi r4, r1, 8
/* 8023B50C  38 00 00 03 */	li r0, 3
/* 8023B510  7C 09 03 A6 */	mtctr r0
lbl_8023B514:
/* 8023B514  7C 04 1D 2E */	stfsx f0, r4, r3
/* 8023B518  38 63 00 04 */	addi r3, r3, 4
/* 8023B51C  42 00 FF F8 */	bdnz lbl_8023B514
/* 8023B520  C0 22 B1 60 */	lfs f1, lit_3911(r2)
/* 8023B524  C0 1C 01 04 */	lfs f0, 0x104(r28)
/* 8023B528  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8023B52C  40 82 00 70 */	bne lbl_8023B59C
/* 8023B530  3B 40 00 00 */	li r26, 0
/* 8023B534  3B 60 00 00 */	li r27, 0
/* 8023B538  3B A1 00 08 */	addi r29, r1, 8
/* 8023B53C  3B C0 00 01 */	li r30, 1
lbl_8023B540:
/* 8023B540  88 7C 01 14 */	lbz r3, 0x114(r28)
/* 8023B544  7F C0 D0 30 */	slw r0, r30, r26
/* 8023B548  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8023B54C  7C 60 00 39 */	and. r0, r3, r0
/* 8023B550  41 82 00 38 */	beq lbl_8023B588
/* 8023B554  7F FC DA 14 */	add r31, r28, r27
/* 8023B558  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8023B55C  C0 22 B1 58 */	lfs f1, lit_3909(r2)
/* 8023B560  7C 1D DC 2E */	lfsx f0, r29, r27
/* 8023B564  EF DF 00 2A */	fadds f30, f31, f0
/* 8023B568  FC 40 F0 90 */	fmr f2, f30
/* 8023B56C  48 01 90 45 */	bl paneTrans__8CPaneMgrFff
/* 8023B570  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8023B574  28 03 00 00 */	cmplwi r3, 0
/* 8023B578  41 82 00 10 */	beq lbl_8023B588
/* 8023B57C  C0 22 B1 58 */	lfs f1, lit_3909(r2)
/* 8023B580  FC 40 F0 90 */	fmr f2, f30
/* 8023B584  48 01 90 2D */	bl paneTrans__8CPaneMgrFff
lbl_8023B588:
/* 8023B588  3B 5A 00 01 */	addi r26, r26, 1
/* 8023B58C  2C 1A 00 03 */	cmpwi r26, 3
/* 8023B590  3B 7B 00 04 */	addi r27, r27, 4
/* 8023B594  41 80 FF AC */	blt lbl_8023B540
/* 8023B598  48 00 02 A8 */	b lbl_8023B840
lbl_8023B59C:
/* 8023B59C  3B A0 00 00 */	li r29, 0
/* 8023B5A0  3B 60 00 00 */	li r27, 0
lbl_8023B5A4:
/* 8023B5A4  88 7C 01 14 */	lbz r3, 0x114(r28)
/* 8023B5A8  38 00 00 01 */	li r0, 1
/* 8023B5AC  7C 00 E8 30 */	slw r0, r0, r29
/* 8023B5B0  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8023B5B4  7C 63 F8 38 */	and r3, r3, r31
/* 8023B5B8  30 03 FF FF */	addic r0, r3, -1
/* 8023B5BC  7C 00 19 11 */	subfe. r0, r0, r3
/* 8023B5C0  41 82 02 70 */	beq lbl_8023B830
/* 8023B5C4  7F DC DA 14 */	add r30, r28, r27
/* 8023B5C8  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 8023B5CC  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B5D0  C0 22 B1 60 */	lfs f1, lit_3911(r2)
/* 8023B5D4  C0 1C 01 04 */	lfs f0, 0x104(r28)
/* 8023B5D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023B5DC  EF C0 00 B2 */	fmuls f30, f0, f2
/* 8023B5E0  C0 02 B1 64 */	lfs f0, lit_4154(r2)
/* 8023B5E4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8023B5E8  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B5EC  48 01 8F C5 */	bl paneTrans__8CPaneMgrFff
/* 8023B5F0  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 8023B5F4  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B5F8  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B5FC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8023B600  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B604  EC 42 00 2A */	fadds f2, f2, f0
/* 8023B608  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8023B60C  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8023B610  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B614  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B618  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B61C  EC 02 18 28 */	fsubs f0, f2, f3
/* 8023B620  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B624  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B628  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B62C  48 01 8F 85 */	bl paneTrans__8CPaneMgrFff
/* 8023B630  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8023B634  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B638  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8023B63C  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 8023B640  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B644  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B648  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B64C  EC 03 10 28 */	fsubs f0, f3, f2
/* 8023B650  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B654  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8023B658  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B65C  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B660  48 01 8F 51 */	bl paneTrans__8CPaneMgrFff
/* 8023B664  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8023B668  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B66C  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B670  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8023B674  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B678  EC 42 00 2A */	fadds f2, f2, f0
/* 8023B67C  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8023B680  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8023B684  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B688  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B68C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B690  EC 02 18 28 */	fsubs f0, f2, f3
/* 8023B694  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B698  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B69C  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B6A0  48 01 8F 11 */	bl paneTrans__8CPaneMgrFff
/* 8023B6A4  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8023B6A8  C0 63 00 34 */	lfs f3, 0x34(r3)
/* 8023B6AC  80 7E 00 88 */	lwz r3, 0x88(r30)
/* 8023B6B0  C0 83 00 34 */	lfs f4, 0x34(r3)
/* 8023B6B4  C0 BC 01 04 */	lfs f5, 0x104(r28)
/* 8023B6B8  C0 42 B1 60 */	lfs f2, lit_3911(r2)
/* 8023B6BC  EC 22 28 28 */	fsubs f1, f2, f5
/* 8023B6C0  C0 02 B1 64 */	lfs f0, lit_4154(r2)
/* 8023B6C4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8023B6C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8023B6CC  EC 05 10 28 */	fsubs f0, f5, f2
/* 8023B6D0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8023B6D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8023B6D8  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B6DC  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B6E0  48 01 8E D1 */	bl paneTrans__8CPaneMgrFff
/* 8023B6E4  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8023B6E8  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B6EC  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B6F0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8023B6F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B6F8  EC 42 00 2A */	fadds f2, f2, f0
/* 8023B6FC  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8023B700  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8023B704  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B708  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B70C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B710  EC 02 18 28 */	fsubs f0, f2, f3
/* 8023B714  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B718  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B71C  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B720  48 01 8E 91 */	bl paneTrans__8CPaneMgrFff
/* 8023B724  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8023B728  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B72C  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B730  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8023B734  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B738  EC 42 00 2A */	fadds f2, f2, f0
/* 8023B73C  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8023B740  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8023B744  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B748  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B74C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B750  EC 02 18 28 */	fsubs f0, f2, f3
/* 8023B754  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B758  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B75C  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B760  48 01 8E 51 */	bl paneTrans__8CPaneMgrFff
/* 8023B764  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8023B768  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B76C  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B770  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8023B774  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B778  EC 42 00 2A */	fadds f2, f2, f0
/* 8023B77C  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8023B780  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8023B784  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B788  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B78C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B790  EC 02 18 28 */	fsubs f0, f2, f3
/* 8023B794  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B798  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B79C  38 81 00 08 */	addi r4, r1, 8
/* 8023B7A0  7C 04 DC 2E */	lfsx f0, r4, r27
/* 8023B7A4  EF BF 00 2A */	fadds f29, f31, f0
/* 8023B7A8  FC 40 E8 90 */	fmr f2, f29
/* 8023B7AC  48 01 8E 05 */	bl paneTrans__8CPaneMgrFff
/* 8023B7B0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8023B7B4  28 03 00 00 */	cmplwi r3, 0
/* 8023B7B8  41 82 00 40 */	beq lbl_8023B7F8
/* 8023B7BC  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8023B7C0  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 8023B7C4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8023B7C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B7CC  EC 42 00 2A */	fadds f2, f2, f0
/* 8023B7D0  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8023B7D4  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8023B7D8  C0 3C 01 04 */	lfs f1, 0x104(r28)
/* 8023B7DC  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B7E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B7E4  EC 02 18 28 */	fsubs f0, f2, f3
/* 8023B7E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B7EC  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B7F0  FC 40 E8 90 */	fmr f2, f29
/* 8023B7F4  48 01 8D BD */	bl paneTrans__8CPaneMgrFff
lbl_8023B7F8:
/* 8023B7F8  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8023B7FC  80 63 00 04 */	lwz r3, 4(r3)
/* 8023B800  48 0B B9 01 */	bl getBounds__7J2DPaneFv
/* 8023B804  C0 03 00 00 */	lfs f0, 0(r3)
/* 8023B808  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8023B80C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8023B810  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023B814  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8023B818  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8023B81C  C0 42 B1 58 */	lfs f2, lit_3909(r2)
/* 8023B820  48 01 8D 91 */	bl paneTrans__8CPaneMgrFff
/* 8023B824  88 1C 01 14 */	lbz r0, 0x114(r28)
/* 8023B828  7C 00 F8 78 */	andc r0, r0, r31
/* 8023B82C  98 1C 01 14 */	stb r0, 0x114(r28)
lbl_8023B830:
/* 8023B830  3B BD 00 01 */	addi r29, r29, 1
/* 8023B834  2C 1D 00 03 */	cmpwi r29, 3
/* 8023B838  3B 7B 00 04 */	addi r27, r27, 4
/* 8023B83C  41 80 FD 68 */	blt lbl_8023B5A4
lbl_8023B840:
/* 8023B840  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8023B844  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8023B848  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8023B84C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8023B850  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8023B854  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8023B858  39 61 00 30 */	addi r11, r1, 0x30
/* 8023B85C  48 12 69 C1 */	bl _restgpr_26
/* 8023B860  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8023B864  7C 08 03 A6 */	mtlr r0
/* 8023B868  38 21 00 60 */	addi r1, r1, 0x60
/* 8023B86C  4E 80 00 20 */	blr 
