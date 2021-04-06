lbl_807D4BDC:
/* 807D4BDC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807D4BE0  7C 08 02 A6 */	mflr r0
/* 807D4BE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807D4BE8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807D4BEC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807D4BF0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807D4BF4  7C 64 1B 78 */	mr r4, r3
/* 807D4BF8  FF E0 08 90 */	fmr f31, f1
/* 807D4BFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D4C00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D4C04  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 807D4C08  38 61 00 08 */	addi r3, r1, 8
/* 807D4C0C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807D4C10  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807D4C14  4B A9 1F 21 */	bl __mi__4cXyzCFRC3Vec
/* 807D4C18  C0 01 00 08 */	lfs f0, 8(r1)
/* 807D4C1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D4C20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807D4C24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D4C28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807D4C2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D4C30  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D4C34  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D4C38  80 63 00 00 */	lwz r3, 0(r3)
/* 807D4C3C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807D4C40  7C 00 00 D0 */	neg r0, r0
/* 807D4C44  7C 04 07 34 */	extsh r4, r0
/* 807D4C48  4B 83 77 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 807D4C4C  38 61 00 20 */	addi r3, r1, 0x20
/* 807D4C50  38 81 00 14 */	addi r4, r1, 0x14
/* 807D4C54  4B A9 C2 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D4C58  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D4C5C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 807D4C60  7C 00 00 26 */	mfcr r0
/* 807D4C64  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 807D4C68  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807D4C6C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807D4C70  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807D4C74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807D4C78  7C 08 03 A6 */	mtlr r0
/* 807D4C7C  38 21 00 50 */	addi r1, r1, 0x50
/* 807D4C80  4E 80 00 20 */	blr 
