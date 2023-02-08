lbl_805C8458:
/* 805C8458  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C845C  7C 08 02 A6 */	mflr r0
/* 805C8460  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C8464  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C8468  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C846C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805C8470  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805C8474  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C8478  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805C847C  7C 7E 1B 78 */	mr r30, r3
/* 805C8480  FF C0 08 90 */	fmr f30, f1
/* 805C8484  FF E0 10 90 */	fmr f31, f2
/* 805C8488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C848C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8490  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C8494  7C 00 07 74 */	extsb r0, r0
/* 805C8498  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C849C  7C 63 02 14 */	add r3, r3, r0
/* 805C84A0  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805C84A4  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 805C84A8  38 9E 05 D4 */	addi r4, r30, 0x5d4
/* 805C84AC  3C A0 80 5D */	lis r5, lit_3862@ha /* 0x805CAD60@ha */
/* 805C84B0  C0 65 AD 60 */	lfs f3, lit_3862@l(r5)  /* 0x805CAD60@l */
/* 805C84B4  4B CA 76 05 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805C84B8  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 805C84BC  38 9E 05 EC */	addi r4, r30, 0x5ec
/* 805C84C0  FC 20 F0 90 */	fmr f1, f30
/* 805C84C4  FC 40 F8 90 */	fmr f2, f31
/* 805C84C8  3C A0 80 5D */	lis r5, lit_3862@ha /* 0x805CAD60@ha */
/* 805C84CC  C0 65 AD 60 */	lfs f3, lit_3862@l(r5)  /* 0x805CAD60@l */
/* 805C84D0  4B CA 75 E9 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805C84D4  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 805C84D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C84DC  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 805C84E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C84E4  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 805C84E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C84EC  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 805C84F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C84F4  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 805C84F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C84FC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 805C8500  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C8504  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C8508  38 81 00 14 */	addi r4, r1, 0x14
/* 805C850C  38 A1 00 08 */	addi r5, r1, 8
/* 805C8510  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 805C8514  38 C0 00 00 */	li r6, 0
/* 805C8518  4B BB 85 C9 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805C851C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C8520  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C8524  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805C8528  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805C852C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C8530  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805C8534  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C8538  7C 08 03 A6 */	mtlr r0
/* 805C853C  38 21 00 50 */	addi r1, r1, 0x50
/* 805C8540  4E 80 00 20 */	blr 
