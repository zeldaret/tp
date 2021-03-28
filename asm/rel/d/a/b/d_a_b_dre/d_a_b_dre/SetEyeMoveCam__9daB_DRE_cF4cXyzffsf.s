lbl_805C824C:
/* 805C824C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C8250  7C 08 02 A6 */	mflr r0
/* 805C8254  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C8258  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C825C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C8260  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C8264  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C8268  7C 7E 1B 78 */	mr r30, r3
/* 805C826C  FF E0 18 90 */	fmr f31, f3
/* 805C8270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C8274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C8278  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C827C  7C 00 07 74 */	extsb r0, r0
/* 805C8280  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C8284  7C 63 02 14 */	add r3, r3, r0
/* 805C8288  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805C828C  3C 60 80 5D */	lis r3, lit_3862@ha
/* 805C8290  C0 03 AD 60 */	lfs f0, lit_3862@l(r3)
/* 805C8294  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C8298  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805C829C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805C82A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C82A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C82A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C82AC  38 61 00 20 */	addi r3, r1, 0x20
/* 805C82B0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805C82B4  4B CA 8B 0C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805C82B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C82BC  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 805C82C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C82C4  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 805C82C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C82CC  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 805C82D0  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 805C82D4  38 9E 05 EC */	addi r4, r30, 0x5ec
/* 805C82D8  FC 20 F8 90 */	fmr f1, f31
/* 805C82DC  4B CA 84 D0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 805C82E0  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 805C82E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C82E8  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 805C82EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C82F0  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 805C82F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C82F8  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 805C82FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C8300  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 805C8304  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C8308  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 805C830C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C8310  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C8314  38 81 00 14 */	addi r4, r1, 0x14
/* 805C8318  38 A1 00 08 */	addi r5, r1, 8
/* 805C831C  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 805C8320  38 C0 00 00 */	li r6, 0
/* 805C8324  4B BB 87 BC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805C8328  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C832C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C8330  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C8334  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C8338  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C833C  7C 08 03 A6 */	mtlr r0
/* 805C8340  38 21 00 50 */	addi r1, r1, 0x50
/* 805C8344  4E 80 00 20 */	blr 
