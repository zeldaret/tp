lbl_80505CD4:
/* 80505CD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80505CD8  7C 08 02 A6 */	mflr r0
/* 80505CDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80505CE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80505CE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80505CE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80505CEC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80505CF0  7C 7E 1B 78 */	mr r30, r3
/* 80505CF4  FF E0 08 90 */	fmr f31, f1
/* 80505CF8  4B FF EE 29 */	bl get_pla__FP10fopAc_ac_c
/* 80505CFC  7C 7F 1B 78 */	mr r31, r3
/* 80505D00  38 61 00 08 */	addi r3, r1, 8
/* 80505D04  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80505D08  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80505D0C  4B D6 0E 29 */	bl __mi__4cXyzCFRC3Vec
/* 80505D10  C0 01 00 08 */	lfs f0, 8(r1)
/* 80505D14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80505D18  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80505D1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80505D20  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80505D24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80505D28  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80505D2C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80505D30  80 63 00 00 */	lwz r3, 0(r3)
/* 80505D34  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80505D38  7C 00 00 D0 */	neg r0, r0
/* 80505D3C  7C 04 07 34 */	extsh r4, r0
/* 80505D40  4B B0 66 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 80505D44  38 61 00 20 */	addi r3, r1, 0x20
/* 80505D48  38 81 00 14 */	addi r4, r1, 0x14
/* 80505D4C  4B D6 B1 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80505D50  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80505D54  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80505D58  7C 00 00 26 */	mfcr r0
/* 80505D5C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80505D60  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80505D64  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80505D68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80505D6C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80505D70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80505D74  7C 08 03 A6 */	mtlr r0
/* 80505D78  38 21 00 50 */	addi r1, r1, 0x50
/* 80505D7C  4E 80 00 20 */	blr 
