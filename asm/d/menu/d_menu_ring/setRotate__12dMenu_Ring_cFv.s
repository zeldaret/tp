lbl_801EB960:
/* 801EB960  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801EB964  7C 08 02 A6 */	mflr r0
/* 801EB968  90 01 00 44 */	stw r0, 0x44(r1)
/* 801EB96C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801EB970  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801EB974  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801EB978  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801EB97C  39 61 00 20 */	addi r11, r1, 0x20
/* 801EB980  48 17 68 55 */	bl _savegpr_27
/* 801EB984  7C 7B 1B 78 */	mr r27, r3
/* 801EB988  88 83 06 AE */	lbz r4, 0x6ae(r3)
/* 801EB98C  C0 22 A9 D4 */	lfs f1, lit_4810(r2)
/* 801EB990  3C A0 80 43 */	lis r5, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EB994  3B A5 FA FC */	addi r29, r5, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EB998  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 801EB99C  EC 21 00 2A */	fadds f1, f1, f0
/* 801EB9A0  C0 42 A9 D8 */	lfs f2, lit_4811(r2)
/* 801EB9A4  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 801EB9A8  EC 42 00 2A */	fadds f2, f2, f0
/* 801EB9AC  48 00 37 F5 */	bl clacEllipsePlotAverage__12dMenu_Ring_cFiff
/* 801EB9B0  3B 80 00 00 */	li r28, 0
/* 801EB9B4  3B E0 00 00 */	li r31, 0
/* 801EB9B8  3B C0 00 00 */	li r30, 0
/* 801EB9BC  C3 C2 A9 D4 */	lfs f30, lit_4810(r2)
/* 801EB9C0  C3 E2 A9 D8 */	lfs f31, lit_4811(r2)
/* 801EB9C4  48 00 00 40 */	b lbl_801EBA04
lbl_801EB9C8:
/* 801EB9C8  7C 7B F2 14 */	add r3, r27, r30
/* 801EB9CC  C0 23 03 8C */	lfs f1, 0x38c(r3)
/* 801EB9D0  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 801EB9D4  EC 1E 00 2A */	fadds f0, f30, f0
/* 801EB9D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 801EB9DC  C0 43 03 EC */	lfs f2, 0x3ec(r3)
/* 801EB9E0  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 801EB9E4  EC 1F 00 2A */	fadds f0, f31, f0
/* 801EB9E8  EC 42 00 28 */	fsubs f2, f2, f0
/* 801EB9EC  48 07 BC 89 */	bl cM_atan2s__Fff
/* 801EB9F0  38 1F 06 3E */	addi r0, r31, 0x63e
/* 801EB9F4  7C 7B 03 2E */	sthx r3, r27, r0
/* 801EB9F8  3B 9C 00 01 */	addi r28, r28, 1
/* 801EB9FC  3B FF 00 02 */	addi r31, r31, 2
/* 801EBA00  3B DE 00 04 */	addi r30, r30, 4
lbl_801EBA04:
/* 801EBA04  88 1B 06 AE */	lbz r0, 0x6ae(r27)
/* 801EBA08  7C 1C 00 00 */	cmpw r28, r0
/* 801EBA0C  41 80 FF BC */	blt lbl_801EB9C8
/* 801EBA10  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801EBA14  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801EBA18  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801EBA1C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801EBA20  39 61 00 20 */	addi r11, r1, 0x20
/* 801EBA24  48 17 67 FD */	bl _restgpr_27
/* 801EBA28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801EBA2C  7C 08 03 A6 */	mtlr r0
/* 801EBA30  38 21 00 40 */	addi r1, r1, 0x40
/* 801EBA34  4E 80 00 20 */	blr 
