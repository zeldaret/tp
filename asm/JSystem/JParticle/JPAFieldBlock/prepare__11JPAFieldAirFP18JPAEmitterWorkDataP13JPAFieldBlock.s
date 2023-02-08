lbl_8027C07C:
/* 8027C07C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027C080  7C 08 02 A6 */	mflr r0
/* 8027C084  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027C088  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8027C08C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8027C090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027C094  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027C098  7C 7E 1B 78 */	mr r30, r3
/* 8027C09C  7C BF 2B 78 */	mr r31, r5
/* 8027C0A0  E0 3F 00 1C */	psq_l f1, 28(r31), 0, 0 /* qr0 */
/* 8027C0A4  10 21 00 72 */	ps_mul f1, f1, f1
/* 8027C0A8  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8027C0AC  10 A0 08 3A */	ps_madd f5, f0, f0, f1
/* 8027C0B0  10 A5 08 54 */	ps_sum0 f5, f5, f1, f1
/* 8027C0B4  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C0B8  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027C0BC  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027C0C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C0C4  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027C0C8  4C 40 13 82 */	cror 2, 0, 2
/* 8027C0CC  40 82 00 18 */	bne lbl_8027C0E4
/* 8027C0D0  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C0D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8027C0D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8027C0DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8027C0E0  48 00 00 5C */	b lbl_8027C13C
lbl_8027C0E4:
/* 8027C0E4  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C0E8  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027C0EC  4C 40 13 82 */	cror 2, 0, 2
/* 8027C0F0  40 82 00 0C */	bne lbl_8027C0FC
/* 8027C0F4  FC 60 28 90 */	fmr f3, f5
/* 8027C0F8  48 00 00 2C */	b lbl_8027C124
lbl_8027C0FC:
/* 8027C0FC  FC 80 28 34 */	frsqrte f4, f5
/* 8027C100  FC 80 20 18 */	frsp f4, f4
/* 8027C104  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C108  EC 40 01 32 */	fmuls f2, f0, f4
/* 8027C10C  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C110  EC 04 01 32 */	fmuls f0, f4, f4
/* 8027C114  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027C118  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C11C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027C120  FC 60 00 90 */	fmr f3, f0
lbl_8027C124:
/* 8027C124  E0 1F 00 1C */	psq_l f0, 28(r31), 0, 0 /* qr0 */
/* 8027C128  E0 3F 80 24 */	psq_l f1, 36(r31), 1, 0 /* qr0 */
/* 8027C12C  10 00 00 D8 */	ps_muls0 f0, f0, f3
/* 8027C130  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 8027C134  10 01 00 D8 */	ps_muls0 f0, f1, f3
/* 8027C138  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_8027C13C:
/* 8027C13C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027C140  80 03 00 08 */	lwz r0, 8(r3)
/* 8027C144  54 00 87 BD */	rlwinm. r0, r0, 0x10, 0x1e, 0x1e
/* 8027C148  41 82 00 24 */	beq lbl_8027C16C
/* 8027C14C  C0 DF 00 28 */	lfs f6, 0x28(r31)
/* 8027C150  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027C154  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 8027C158  10 00 01 98 */	ps_muls0 f0, f0, f6
/* 8027C15C  F0 1E 00 04 */	psq_st f0, 4(r30), 0, 0 /* qr0 */
/* 8027C160  10 01 01 98 */	ps_muls0 f0, f1, f6
/* 8027C164  F0 1E 80 0C */	psq_st f0, 12(r30), 1, 0 /* qr0 */
/* 8027C168  48 00 00 30 */	b lbl_8027C198
lbl_8027C16C:
/* 8027C16C  38 64 00 78 */	addi r3, r4, 0x78
/* 8027C170  38 81 00 08 */	addi r4, r1, 8
/* 8027C174  38 BE 00 04 */	addi r5, r30, 4
/* 8027C178  48 0C AC D5 */	bl PSMTXMultVecSR
/* 8027C17C  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 8027C180  E0 1E 00 04 */	psq_l f0, 4(r30), 0, 0 /* qr0 */
/* 8027C184  E0 3E 80 0C */	psq_l f1, 12(r30), 1, 0 /* qr0 */
/* 8027C188  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027C18C  F0 1E 00 04 */	psq_st f0, 4(r30), 0, 0 /* qr0 */
/* 8027C190  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027C194  F0 1E 80 0C */	psq_st f0, 12(r30), 1, 0 /* qr0 */
lbl_8027C198:
/* 8027C198  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8027C19C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8027C1A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027C1A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027C1A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027C1AC  7C 08 03 A6 */	mtlr r0
/* 8027C1B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8027C1B4  4E 80 00 20 */	blr 
