lbl_805C8348:
/* 805C8348  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C834C  7C 08 02 A6 */	mflr r0
/* 805C8350  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C8354  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805C8358  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805C835C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805C8360  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805C8364  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C8368  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C836C  7C 7E 1B 78 */	mr r30, r3
/* 805C8370  FF C0 18 90 */	fmr f30, f3
/* 805C8374  FF E0 20 90 */	fmr f31, f4
/* 805C8378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C837C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8380  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C8384  7C 00 07 74 */	extsb r0, r0
/* 805C8388  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C838C  7C 63 02 14 */	add r3, r3, r0
/* 805C8390  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805C8394  3C 60 80 5D */	lis r3, lit_3862@ha /* 0x805CAD60@ha */
/* 805C8398  C0 03 AD 60 */	lfs f0, lit_3862@l(r3)  /* 0x805CAD60@l */
/* 805C839C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C83A0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805C83A4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805C83A8  38 61 00 20 */	addi r3, r1, 0x20
/* 805C83AC  7C 66 1B 78 */	mr r6, r3
/* 805C83B0  4B CA 8A 11 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805C83B4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C83B8  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 805C83BC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C83C0  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 805C83C4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C83C8  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 805C83CC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 805C83D0  38 9E 05 EC */	addi r4, r30, 0x5ec
/* 805C83D4  FC 20 F0 90 */	fmr f1, f30
/* 805C83D8  FC 40 F8 90 */	fmr f2, f31
/* 805C83DC  3C A0 80 5D */	lis r5, lit_3862@ha /* 0x805CAD60@ha */
/* 805C83E0  C0 65 AD 60 */	lfs f3, lit_3862@l(r5)  /* 0x805CAD60@l */
/* 805C83E4  4B CA 76 D5 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805C83E8  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 805C83EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C83F0  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 805C83F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C83F8  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 805C83FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C8400  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 805C8404  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C8408  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 805C840C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C8410  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 805C8414  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C8418  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C841C  38 81 00 14 */	addi r4, r1, 0x14
/* 805C8420  38 A1 00 08 */	addi r5, r1, 8
/* 805C8424  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 805C8428  38 C0 00 00 */	li r6, 0
/* 805C842C  4B BB 86 B5 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805C8430  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805C8434  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805C8438  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805C843C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805C8440  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C8444  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C8448  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C844C  7C 08 03 A6 */	mtlr r0
/* 805C8450  38 21 00 60 */	addi r1, r1, 0x60
/* 805C8454  4E 80 00 20 */	blr 
