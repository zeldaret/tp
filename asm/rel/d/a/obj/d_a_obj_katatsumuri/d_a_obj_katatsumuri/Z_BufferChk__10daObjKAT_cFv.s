lbl_80C3B754:
/* 80C3B754  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C3B758  7C 08 02 A6 */	mflr r0
/* 80C3B75C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C3B760  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C3B764  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C3B768  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C3B76C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C3B770  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C3B774  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C3B778  7C 7E 1B 78 */	mr r30, r3
/* 80C3B77C  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C3B780  3B E3 C6 74 */	addi r31, r3, lit_3775@l
/* 80C3B784  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3B788  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C3B78C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C3B790  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C3B794  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C3B798  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3B79C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C3B7A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3B7A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C3B7A8  38 61 00 08 */	addi r3, r1, 8
/* 80C3B7AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80C3B7B0  4B 3D 9B 60 */	b mDoLib_project__FP3VecP3Vec
/* 80C3B7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3B7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3B7BC  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80C3B7C0  28 03 00 00 */	cmplwi r3, 0
/* 80C3B7C4  41 82 00 0C */	beq lbl_80C3B7D0
/* 80C3B7C8  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80C3B7CC  48 00 00 08 */	b lbl_80C3B7D4
lbl_80C3B7D0:
/* 80C3B7D0  C0 7F 00 58 */	lfs f3, 0x58(r31)
lbl_80C3B7D4:
/* 80C3B7D4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C3B7D8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3B7DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B7E0  40 81 00 5C */	ble lbl_80C3B83C
/* 80C3B7E4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80C3B7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B7EC  40 80 00 50 */	bge lbl_80C3B83C
/* 80C3B7F0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80C3B7F4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80C3B7F8  40 81 00 44 */	ble lbl_80C3B83C
/* 80C3B7FC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C3B800  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C3B804  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C3B808  40 80 00 34 */	bge lbl_80C3B83C
/* 80C3B80C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3B810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3B814  3C 63 00 02 */	addis r3, r3, 2
/* 80C3B818  FC 00 08 1E */	fctiwz f0, f1
/* 80C3B81C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C3B820  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C3B824  FC 00 10 1E */	fctiwz f0, f2
/* 80C3B828  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C3B82C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80C3B830  38 DE 08 04 */	addi r6, r30, 0x804
/* 80C3B834  38 63 C0 F4 */	addi r3, r3, -16140
/* 80C3B838  4B 41 A7 E0 */	b newData__13dDlst_peekZ_cFssPUl
lbl_80C3B83C:
/* 80C3B83C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3B840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3B844  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80C3B848  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80C3B84C  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80C3B850  38 61 00 08 */	addi r3, r1, 8
/* 80C3B854  38 81 00 14 */	addi r4, r1, 0x14
/* 80C3B858  4B 3D 9C 94 */	b mDoLib_pos2camera__FP3VecP3Vec
/* 80C3B85C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80C3B860  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C3B864  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3B868  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C3B86C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3B870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B874  40 81 00 08 */	ble lbl_80C3B87C
/* 80C3B878  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80C3B87C:
/* 80C3B87C  C0 7F 00 D4 */	lfs f3, 0xd4(r31)
/* 80C3B880  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80C3B884  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80C3B888  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C3B88C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C3B890  EC 3F 00 2A */	fadds f1, f31, f0
/* 80C3B894  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80C3B898  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C3B89C  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3B8A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C3B8A4  D0 1E 08 00 */	stfs f0, 0x800(r30)
/* 80C3B8A8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C3B8AC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C3B8B0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C3B8B4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C3B8B8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C3B8BC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C3B8C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C3B8C4  7C 08 03 A6 */	mtlr r0
/* 80C3B8C8  38 21 00 60 */	addi r1, r1, 0x60
/* 80C3B8CC  4E 80 00 20 */	blr 
