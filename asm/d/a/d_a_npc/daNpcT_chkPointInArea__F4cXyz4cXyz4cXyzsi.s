lbl_8014C384:
/* 8014C384  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8014C388  7C 08 02 A6 */	mflr r0
/* 8014C38C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8014C390  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8014C394  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8014C398  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8014C39C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8014C3A0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8014C3A4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8014C3A8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8014C3AC  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8014C3B0  39 61 00 40 */	addi r11, r1, 0x40
/* 8014C3B4  48 21 5E 25 */	bl _savegpr_28
/* 8014C3B8  7C 7C 1B 78 */	mr r28, r3
/* 8014C3BC  7C 9D 23 78 */	mr r29, r4
/* 8014C3C0  7C BE 2B 78 */	mr r30, r5
/* 8014C3C4  7C FF 3B 78 */	mr r31, r7
/* 8014C3C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014C3CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014C3D0  7C 06 00 D0 */	neg r0, r6
/* 8014C3D4  7C 04 07 34 */	extsh r4, r0
/* 8014C3D8  4B EC 00 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 8014C3DC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8014C3E0  FC 20 00 50 */	fneg f1, f0
/* 8014C3E4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8014C3E8  FC 40 00 50 */	fneg f2, f0
/* 8014C3EC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8014C3F0  FC 60 00 50 */	fneg f3, f0
/* 8014C3F4  4B EC 09 A9 */	bl transM__14mDoMtx_stack_cFfff
/* 8014C3F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014C3FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014C400  7F 84 E3 78 */	mr r4, r28
/* 8014C404  38 A1 00 20 */	addi r5, r1, 0x20
/* 8014C408  48 1F A9 65 */	bl PSMTXMultVec
/* 8014C40C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8014C410  FC 00 02 10 */	fabs f0, f0
/* 8014C414  FF E0 00 18 */	frsp f31, f0
/* 8014C418  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8014C41C  FC 00 02 10 */	fabs f0, f0
/* 8014C420  FF C0 00 18 */	frsp f30, f0
/* 8014C424  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014C428  FC 00 02 10 */	fabs f0, f0
/* 8014C42C  FF A0 00 18 */	frsp f29, f0
/* 8014C430  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014C434  FC 00 02 10 */	fabs f0, f0
/* 8014C438  FF 80 00 18 */	frsp f28, f0
/* 8014C43C  2C 1F 00 00 */	cmpwi r31, 0
/* 8014C440  41 82 00 50 */	beq lbl_8014C490
/* 8014C444  38 61 00 08 */	addi r3, r1, 8
/* 8014C448  7F 84 E3 78 */	mr r4, r28
/* 8014C44C  7F A5 EB 78 */	mr r5, r29
/* 8014C450  48 11 A6 E5 */	bl __mi__4cXyzCFRC3Vec
/* 8014C454  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014C458  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014C45C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8014C460  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8014C464  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8014C468  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014C46C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014C470  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8014C474  4C 40 13 82 */	cror 2, 0, 2
/* 8014C478  40 82 00 10 */	bne lbl_8014C488
/* 8014C47C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8014C480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014C484  41 80 00 0C */	blt lbl_8014C490
lbl_8014C488:
/* 8014C488  38 60 00 00 */	li r3, 0
/* 8014C48C  48 00 00 3C */	b lbl_8014C4C8
lbl_8014C490:
/* 8014C490  EC 3D 07 72 */	fmuls f1, f29, f29
/* 8014C494  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8014C498  EC 41 00 24 */	fdivs f2, f1, f0
/* 8014C49C  EC 3C 07 32 */	fmuls f1, f28, f28
/* 8014C4A0  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 8014C4A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8014C4A8  EC 22 00 2A */	fadds f1, f2, f0
/* 8014C4AC  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 8014C4B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014C4B4  4C 40 13 82 */	cror 2, 0, 2
/* 8014C4B8  40 82 00 0C */	bne lbl_8014C4C4
/* 8014C4BC  38 60 00 01 */	li r3, 1
/* 8014C4C0  48 00 00 08 */	b lbl_8014C4C8
lbl_8014C4C4:
/* 8014C4C4  38 60 00 00 */	li r3, 0
lbl_8014C4C8:
/* 8014C4C8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8014C4CC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8014C4D0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8014C4D4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8014C4D8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8014C4DC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8014C4E0  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8014C4E4  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8014C4E8  39 61 00 40 */	addi r11, r1, 0x40
/* 8014C4EC  48 21 5D 39 */	bl _restgpr_28
/* 8014C4F0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8014C4F4  7C 08 03 A6 */	mtlr r0
/* 8014C4F8  38 21 00 80 */	addi r1, r1, 0x80
/* 8014C4FC  4E 80 00 20 */	blr 
