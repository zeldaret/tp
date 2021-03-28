lbl_807501B0:
/* 807501B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807501B4  7C 08 02 A6 */	mflr r0
/* 807501B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 807501BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807501C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807501C4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 807501C8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 807501CC  39 61 00 40 */	addi r11, r1, 0x40
/* 807501D0  4B C1 20 0C */	b _savegpr_29
/* 807501D4  7C 7D 1B 78 */	mr r29, r3
/* 807501D8  FF C0 08 90 */	fmr f30, f1
/* 807501DC  FF E0 10 90 */	fmr f31, f2
/* 807501E0  3C 60 80 75 */	lis r3, lit_3917@ha
/* 807501E4  3B E3 76 FC */	addi r31, r3, lit_3917@l
/* 807501E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807501EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807501F0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 807501F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807501F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807501FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80750200  4B 8B C1 DC */	b mDoMtx_YrotS__FPA4_fs
/* 80750204  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80750208  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8075020C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80750210  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 80750214  38 61 00 20 */	addi r3, r1, 0x20
/* 80750218  38 81 00 14 */	addi r4, r1, 0x14
/* 8075021C  4B B2 0C D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80750220  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80750224  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80750228  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8075022C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80750230  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80750234  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80750238  38 7D 08 20 */	addi r3, r29, 0x820
/* 8075023C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80750240  FC 60 F8 90 */	fmr f3, f31
/* 80750244  4B B1 F7 F8 */	b cLib_addCalc2__FPffff
/* 80750248  38 7D 08 28 */	addi r3, r29, 0x828
/* 8075024C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80750250  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80750254  FC 60 F8 90 */	fmr f3, f31
/* 80750258  4B B1 F7 E4 */	b cLib_addCalc2__FPffff
/* 8075025C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80750260  C0 3D 09 28 */	lfs f1, 0x928(r29)
/* 80750264  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80750268  41 82 00 08 */	beq lbl_80750270
/* 8075026C  D0 3D 08 24 */	stfs f1, 0x824(r29)
lbl_80750270:
/* 80750270  38 61 00 14 */	addi r3, r1, 0x14
/* 80750274  38 9D 08 20 */	addi r4, r29, 0x820
/* 80750278  7C 65 1B 78 */	mr r5, r3
/* 8075027C  4B BF 6E 14 */	b PSVECAdd
/* 80750280  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80750284  D0 1D 08 2C */	stfs f0, 0x82c(r29)
/* 80750288  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8075028C  D0 1D 08 30 */	stfs f0, 0x830(r29)
/* 80750290  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80750294  D0 1D 08 34 */	stfs f0, 0x834(r29)
/* 80750298  38 61 00 08 */	addi r3, r1, 8
/* 8075029C  38 81 00 14 */	addi r4, r1, 0x14
/* 807502A0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807502A4  4B B1 68 90 */	b __mi__4cXyzCFRC3Vec
/* 807502A8  C0 01 00 08 */	lfs f0, 8(r1)
/* 807502AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807502B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807502B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807502B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807502BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807502C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807502C4  4B B1 6E 64 */	b atan2sX_Z__4cXyzCFv
/* 807502C8  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 807502CC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807502D0  38 9D 08 2C */	addi r4, r29, 0x82c
/* 807502D4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807502D8  C0 5D 07 D4 */	lfs f2, 0x7d4(r29)
/* 807502DC  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 807502E0  4B B1 F7 D8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 807502E4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807502E8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807502EC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 807502F0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 807502F4  39 61 00 40 */	addi r11, r1, 0x40
/* 807502F8  4B C1 1F 30 */	b _restgpr_29
/* 807502FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80750300  7C 08 03 A6 */	mtlr r0
/* 80750304  38 21 00 60 */	addi r1, r1, 0x60
/* 80750308  4E 80 00 20 */	blr 
