lbl_80C9C00C:
/* 80C9C00C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C9C010  7C 08 02 A6 */	mflr r0
/* 80C9C014  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C9C018  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C9C01C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C9C020  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80C9C024  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80C9C028  39 61 00 70 */	addi r11, r1, 0x70
/* 80C9C02C  4B 6C 61 8D */	bl _savegpr_20
/* 80C9C030  7C 74 1B 78 */	mr r20, r3
/* 80C9C034  7C 9B 23 78 */	mr r27, r4
/* 80C9C038  3C 60 80 CA */	lis r3, lit_3863@ha /* 0x80C9CD4C@ha */
/* 80C9C03C  3B C3 CD 4C */	addi r30, r3, lit_3863@l /* 0x80C9CD4C@l */
/* 80C9C040  3B A0 00 00 */	li r29, 0
/* 80C9C044  A8 64 00 90 */	lha r3, 0x90(r4)
/* 80C9C048  38 03 00 01 */	addi r0, r3, 1
/* 80C9C04C  B0 04 00 90 */	sth r0, 0x90(r4)
/* 80C9C050  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80C9C054  3C 60 80 CA */	lis r3, chain_p2@ha /* 0x80C9CF70@ha */
/* 80C9C058  38 63 CF 70 */	addi r3, r3, chain_p2@l /* 0x80C9CF70@l */
/* 80C9C05C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C9C060  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C9C064  7C 63 02 14 */	add r3, r3, r0
/* 80C9C068  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C9C06C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C9C070  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C9C074  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9C078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9C07C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9C080  A8 94 04 E6 */	lha r4, 0x4e6(r20)
/* 80C9C084  4B 37 03 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C9C088  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9C08C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9C090  38 81 00 08 */	addi r4, r1, 8
/* 80C9C094  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C9C098  4B 6A AC D5 */	bl PSMTXMultVec
/* 80C9C09C  A8 14 05 82 */	lha r0, 0x582(r20)
/* 80C9C0A0  2C 00 00 03 */	cmpwi r0, 3
/* 80C9C0A4  40 82 00 14 */	bne lbl_80C9C0B8
/* 80C9C0A8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80C9C0AC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80C9C0B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9C0B4  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80C9C0B8:
/* 80C9C0B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9C0BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9C0C0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C9C0C4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80C9C0C8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80C9C0CC  4B 6A A8 1D */	bl PSMTXTrans
/* 80C9C0D0  C3 DE 00 00 */	lfs f30, 0(r30)
/* 80C9C0D4  3B 80 00 00 */	li r28, 0
/* 80C9C0D8  3B 40 00 00 */	li r26, 0
/* 80C9C0DC  3B 20 00 00 */	li r25, 0
/* 80C9C0E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C9C0E4  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C9C0E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9C0EC  3A A3 D4 70 */	addi r21, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9C0F0  C3 FE 00 74 */	lfs f31, 0x74(r30)
/* 80C9C0F4  7E B6 AB 78 */	mr r22, r21
/* 80C9C0F8  7E B7 AB 78 */	mr r23, r21
/* 80C9C0FC  7E B8 AB 78 */	mr r24, r21
lbl_80C9C100:
/* 80C9C100  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C9C104  4B 5C BA 01 */	bl cM_rndFX2__Ff
/* 80C9C108  FC 00 08 1E */	fctiwz f0, f1
/* 80C9C10C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C9C110  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80C9C114  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C9C118  7C 00 07 34 */	extsh r0, r0
/* 80C9C11C  7F BD 02 14 */	add r29, r29, r0
/* 80C9C120  2C 1C 00 05 */	cmpwi r28, 5
/* 80C9C124  40 81 00 34 */	ble lbl_80C9C158
/* 80C9C128  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80C9C12C  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80C9C130  38 1C FF FB */	addi r0, r28, -5
/* 80C9C134  C8 3E 00 58 */	lfd f1, 0x58(r30)
/* 80C9C138  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C9C13C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C9C140  3C 00 43 30 */	lis r0, 0x4330
/* 80C9C144  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C9C148  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C9C14C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C9C150  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C9C154  EF C3 00 2A */	fadds f30, f3, f0
lbl_80C9C158:
/* 80C9C158  A8 7B 00 90 */	lha r3, 0x90(r27)
/* 80C9C15C  1C 03 07 D0 */	mulli r0, r3, 0x7d0
/* 80C9C160  7C 00 CA 14 */	add r0, r0, r25
/* 80C9C164  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9C168  7C 3F 04 2E */	lfsx f1, r31, r0
/* 80C9C16C  1C 03 08 98 */	mulli r0, r3, 0x898
/* 80C9C170  7C 00 CA 14 */	add r0, r0, r25
/* 80C9C174  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9C178  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80C9C17C  C0 5B 00 8C */	lfs f2, 0x8c(r27)
/* 80C9C180  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C9C184  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C9C188  FC 00 00 1E */	fctiwz f0, f0
/* 80C9C18C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C9C190  82 81 00 34 */	lwz r20, 0x34(r1)
/* 80C9C194  7E A3 AB 78 */	mr r3, r21
/* 80C9C198  EC 02 00 72 */	fmuls f0, f2, f1
/* 80C9C19C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C9C1A0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80C9C1A4  FC 00 00 1E */	fctiwz f0, f0
/* 80C9C1A8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C9C1AC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80C9C1B0  4B 37 01 ED */	bl mDoMtx_XrotM__FPA4_fs
/* 80C9C1B4  7E A3 AB 78 */	mr r3, r21
/* 80C9C1B8  7E 84 A3 78 */	mr r4, r20
/* 80C9C1BC  4B 37 03 11 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C9C1C0  4B 37 0B 09 */	bl push__14mDoMtx_stack_cFv
/* 80C9C1C4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80C9C1C8  FC 40 08 90 */	fmr f2, f1
/* 80C9C1CC  FC 60 08 90 */	fmr f3, f1
/* 80C9C1D0  4B 37 0C 69 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C9C1D4  7E C3 B3 78 */	mr r3, r22
/* 80C9C1D8  38 80 40 00 */	li r4, 0x4000
/* 80C9C1DC  4B 37 01 C1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C9C1E0  7E E3 BB 78 */	mr r3, r23
/* 80C9C1E4  7F A4 EB 78 */	mr r4, r29
/* 80C9C1E8  4B 37 02 E5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C9C1EC  7F 03 C3 78 */	mr r3, r24
/* 80C9C1F0  7C 9B D0 2E */	lwzx r4, r27, r26
/* 80C9C1F4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9C1F8  4B 6A A2 B9 */	bl PSMTXCopy
/* 80C9C1FC  4B 37 0B 19 */	bl pop__14mDoMtx_stack_cFv
/* 80C9C200  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C9C204  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80C9C208  FC 60 08 90 */	fmr f3, f1
/* 80C9C20C  4B 37 0B 91 */	bl transM__14mDoMtx_stack_cFfff
/* 80C9C210  3B 9C 00 01 */	addi r28, r28, 1
/* 80C9C214  2C 1C 00 23 */	cmpwi r28, 0x23
/* 80C9C218  3B 5A 00 04 */	addi r26, r26, 4
/* 80C9C21C  3B 39 FB 50 */	addi r25, r25, -1200
/* 80C9C220  41 80 FE E0 */	blt lbl_80C9C100
/* 80C9C224  38 7B 00 8C */	addi r3, r27, 0x8c
/* 80C9C228  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80C9C22C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80C9C230  4B 5D 38 51 */	bl cLib_addCalc0__FPfff
/* 80C9C234  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C9C238  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C9C23C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80C9C240  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80C9C244  39 61 00 70 */	addi r11, r1, 0x70
/* 80C9C248  4B 6C 5F BD */	bl _restgpr_20
/* 80C9C24C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C9C250  7C 08 03 A6 */	mtlr r0
/* 80C9C254  38 21 00 90 */	addi r1, r1, 0x90
/* 80C9C258  4E 80 00 20 */	blr 
