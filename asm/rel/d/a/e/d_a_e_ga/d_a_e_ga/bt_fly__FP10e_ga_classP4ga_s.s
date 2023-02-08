lbl_804FB3A8:
/* 804FB3A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804FB3AC  7C 08 02 A6 */	mflr r0
/* 804FB3B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804FB3B4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804FB3B8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804FB3BC  39 61 00 50 */	addi r11, r1, 0x50
/* 804FB3C0  4B E6 6E 1D */	bl _savegpr_29
/* 804FB3C4  7C 7D 1B 78 */	mr r29, r3
/* 804FB3C8  7C 9F 23 78 */	mr r31, r4
/* 804FB3CC  3C 60 80 50 */	lis r3, lit_3646@ha /* 0x804FBB90@ha */
/* 804FB3D0  3B C3 BB 90 */	addi r30, r3, lit_3646@l /* 0x804FBB90@l */
/* 804FB3D4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 804FB3D8  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 804FB3DC  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 804FB3E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB3E4  3C 00 43 30 */	lis r0, 0x4330
/* 804FB3E8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804FB3EC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804FB3F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FB3F4  EF E2 00 32 */	fmuls f31, f2, f0
/* 804FB3F8  88 04 00 46 */	lbz r0, 0x46(r4)
/* 804FB3FC  28 00 00 00 */	cmplwi r0, 0
/* 804FB400  40 82 00 C0 */	bne lbl_804FB4C0
/* 804FB404  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 804FB408  4B D6 C5 4D */	bl cM_rndF__Ff
/* 804FB40C  FC 00 08 1E */	fctiwz f0, f1
/* 804FB410  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804FB414  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB418  98 1F 00 46 */	stb r0, 0x46(r31)
/* 804FB41C  FC 20 F8 90 */	fmr f1, f31
/* 804FB420  4B D6 C5 6D */	bl cM_rndFX__Ff
/* 804FB424  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 804FB428  EC 00 08 2A */	fadds f0, f0, f1
/* 804FB42C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 804FB430  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804FB434  4B D6 C5 21 */	bl cM_rndF__Ff
/* 804FB438  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 804FB43C  EC 00 08 2A */	fadds f0, f0, f1
/* 804FB440  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804FB444  FC 20 F8 90 */	fmr f1, f31
/* 804FB448  4B D6 C5 45 */	bl cM_rndFX__Ff
/* 804FB44C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 804FB450  EC 00 08 2A */	fadds f0, f0, f1
/* 804FB454  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804FB458  38 61 00 08 */	addi r3, r1, 8
/* 804FB45C  38 9F 00 10 */	addi r4, r31, 0x10
/* 804FB460  38 BF 00 04 */	addi r5, r31, 4
/* 804FB464  4B D6 B6 D1 */	bl __mi__4cXyzCFRC3Vec
/* 804FB468  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FB46C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804FB470  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804FB474  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FB478  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804FB47C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804FB480  4B D6 C1 F5 */	bl cM_atan2s__Fff
/* 804FB484  B0 7F 00 30 */	sth r3, 0x30(r31)
/* 804FB488  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804FB48C  EC 20 00 32 */	fmuls f1, f0, f0
/* 804FB490  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804FB494  EC 00 00 32 */	fmuls f0, f0, f0
/* 804FB498  EC 41 00 2A */	fadds f2, f1, f0
/* 804FB49C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804FB4A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804FB4A4  40 81 00 0C */	ble lbl_804FB4B0
/* 804FB4A8  FC 00 10 34 */	frsqrte f0, f2
/* 804FB4AC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804FB4B0:
/* 804FB4B0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804FB4B4  4B D6 C1 C1 */	bl cM_atan2s__Fff
/* 804FB4B8  7C 03 00 D0 */	neg r0, r3
/* 804FB4BC  B0 1F 00 2E */	sth r0, 0x2e(r31)
lbl_804FB4C0:
/* 804FB4C0  38 7F 00 2A */	addi r3, r31, 0x2a
/* 804FB4C4  A8 9F 00 30 */	lha r4, 0x30(r31)
/* 804FB4C8  38 A0 00 02 */	li r5, 2
/* 804FB4CC  38 C0 08 00 */	li r6, 0x800
/* 804FB4D0  4B D7 51 39 */	bl cLib_addCalcAngleS2__FPssss
/* 804FB4D4  38 7F 00 28 */	addi r3, r31, 0x28
/* 804FB4D8  A8 9F 00 2E */	lha r4, 0x2e(r31)
/* 804FB4DC  38 A0 00 02 */	li r5, 2
/* 804FB4E0  38 C0 08 00 */	li r6, 0x800
/* 804FB4E4  4B D7 51 25 */	bl cLib_addCalcAngleS2__FPssss
/* 804FB4E8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804FB4EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FB4F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FB4F4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 804FB4F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FB4FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FB500  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FB504  80 63 00 00 */	lwz r3, 0(r3)
/* 804FB508  A8 9F 00 2A */	lha r4, 0x2a(r31)
/* 804FB50C  4B B1 0E D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FB510  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FB514  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FB518  80 63 00 00 */	lwz r3, 0(r3)
/* 804FB51C  A8 9F 00 28 */	lha r4, 0x28(r31)
/* 804FB520  4B B1 0E 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 804FB524  38 61 00 20 */	addi r3, r1, 0x20
/* 804FB528  38 81 00 14 */	addi r4, r1, 0x14
/* 804FB52C  4B D7 59 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FB530  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804FB534  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804FB538  EC 01 00 2A */	fadds f0, f1, f0
/* 804FB53C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 804FB540  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FB544  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FB548  EC 01 00 2A */	fadds f0, f1, f0
/* 804FB54C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804FB550  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804FB554  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804FB558  EC 01 00 2A */	fadds f0, f1, f0
/* 804FB55C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 804FB560  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804FB564  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 804FB568  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804FB56C  40 80 00 10 */	bge lbl_804FB57C
/* 804FB570  D0 3F 00 08 */	stfs f1, 8(r31)
/* 804FB574  38 00 00 00 */	li r0, 0
/* 804FB578  98 1F 00 46 */	stb r0, 0x46(r31)
lbl_804FB57C:
/* 804FB57C  A8 7F 00 44 */	lha r3, 0x44(r31)
/* 804FB580  38 03 2E 00 */	addi r0, r3, 0x2e00
/* 804FB584  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 804FB588  A8 1F 00 44 */	lha r0, 0x44(r31)
/* 804FB58C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FB590  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804FB594  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804FB598  7C 03 04 2E */	lfsx f0, r3, r0
/* 804FB59C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 804FB5A0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804FB5A4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804FB5A8  39 61 00 50 */	addi r11, r1, 0x50
/* 804FB5AC  4B E6 6C 7D */	bl _restgpr_29
/* 804FB5B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804FB5B4  7C 08 03 A6 */	mtlr r0
/* 804FB5B8  38 21 00 60 */	addi r1, r1, 0x60
/* 804FB5BC  4E 80 00 20 */	blr 
