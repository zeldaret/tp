lbl_80BFB410:
/* 80BFB410  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BFB414  7C 08 02 A6 */	mflr r0
/* 80BFB418  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BFB41C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BFB420  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BFB424  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFB428  4B 76 6D A8 */	b _savegpr_26
/* 80BFB42C  7C 7F 1B 78 */	mr r31, r3
/* 80BFB430  3C 60 80 C0 */	lis r3, lit_3686@ha
/* 80BFB434  3B A3 D3 2C */	addi r29, r3, lit_3686@l
/* 80BFB438  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BFB43C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BFB440  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80BFB444  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFB448  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB44C  3C 60 80 C0 */	lis r3, obj_size_maji@ha
/* 80BFB450  38 63 D4 5C */	addi r3, r3, obj_size_maji@l
/* 80BFB454  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFB458  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFB45C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFB460  4B 67 5A BC */	b MtxPush__Fv
/* 80BFB464  3B 40 00 00 */	li r26, 0
/* 80BFB468  3B C0 00 00 */	li r30, 0
/* 80BFB46C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB470  3B 83 07 68 */	addi r28, r3, calc_mtx@l
/* 80BFB474  C3 FD 00 1C */	lfs f31, 0x1c(r29)
/* 80BFB478  3C 60 80 C0 */	lis r3, obj_size@ha
/* 80BFB47C  3B A3 D3 E8 */	addi r29, r3, obj_size@l
lbl_80BFB480:
/* 80BFB480  80 7C 00 00 */	lwz r3, 0(r28)
/* 80BFB484  38 80 2A AA */	li r4, 0x2aaa
/* 80BFB488  4B 41 0F AC */	b mDoMtx_YrotM__FPA4_fs
/* 80BFB48C  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFB490  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB494  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80BFB498  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BFB49C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BFB4A0  38 61 00 08 */	addi r3, r1, 8
/* 80BFB4A4  7F 7F F2 14 */	add r27, r31, r30
/* 80BFB4A8  38 9B 06 84 */	addi r4, r27, 0x684
/* 80BFB4AC  4B 67 5A 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB4B0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFB4B4  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB4B8  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80BFB4BC  FC 00 00 50 */	fneg f0, f0
/* 80BFB4C0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BFB4C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BFB4C8  38 61 00 08 */	addi r3, r1, 8
/* 80BFB4CC  38 9B 06 CC */	addi r4, r27, 0x6cc
/* 80BFB4D0  4B 67 5A 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB4D4  3B 5A 00 01 */	addi r26, r26, 1
/* 80BFB4D8  2C 1A 00 06 */	cmpwi r26, 6
/* 80BFB4DC  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BFB4E0  41 80 FF A0 */	blt lbl_80BFB480
/* 80BFB4E4  4B 67 5A 74 */	b MtxPull__Fv
/* 80BFB4E8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BFB4EC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BFB4F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFB4F4  4B 76 6D 28 */	b _restgpr_26
/* 80BFB4F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BFB4FC  7C 08 03 A6 */	mtlr r0
/* 80BFB500  38 21 00 40 */	addi r1, r1, 0x40
/* 80BFB504  4E 80 00 20 */	blr 
