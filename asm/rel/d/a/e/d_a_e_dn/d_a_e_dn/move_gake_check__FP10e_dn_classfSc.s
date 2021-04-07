lbl_804E6340:
/* 804E6340  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804E6344  7C 08 02 A6 */	mflr r0
/* 804E6348  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804E634C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804E6350  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804E6354  39 61 00 90 */	addi r11, r1, 0x90
/* 804E6358  4B E7 BE 85 */	bl _savegpr_29
/* 804E635C  7C 7D 1B 78 */	mr r29, r3
/* 804E6360  FF E0 08 90 */	fmr f31, f1
/* 804E6364  7C 9E 23 78 */	mr r30, r4
/* 804E6368  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E636C  3B E3 E8 AC */	addi r31, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804E6370  38 61 00 20 */	addi r3, r1, 0x20
/* 804E6374  4B B9 12 09 */	bl __ct__11dBgS_GndChkFv
/* 804E6378  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804E637C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804E6380  80 63 00 00 */	lwz r3, 0(r3)
/* 804E6384  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804E6388  4B B2 60 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 804E638C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E6390  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E6394  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804E6398  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E639C  7F C0 07 75 */	extsb. r0, r30
/* 804E63A0  41 82 00 10 */	beq lbl_804E63B0
/* 804E63A4  FC 00 F8 50 */	fneg f0, f31
/* 804E63A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E63AC  48 00 00 08 */	b lbl_804E63B4
lbl_804E63B0:
/* 804E63B0  D3 E1 00 1C */	stfs f31, 0x1c(r1)
lbl_804E63B4:
/* 804E63B4  38 61 00 14 */	addi r3, r1, 0x14
/* 804E63B8  38 81 00 08 */	addi r4, r1, 8
/* 804E63BC  4B D8 AB 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804E63C0  38 61 00 08 */	addi r3, r1, 8
/* 804E63C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804E63C8  7C 65 1B 78 */	mr r5, r3
/* 804E63CC  4B E6 0C C5 */	bl PSVECAdd
/* 804E63D0  38 61 00 20 */	addi r3, r1, 0x20
/* 804E63D4  38 81 00 08 */	addi r4, r1, 8
/* 804E63D8  4B D8 19 51 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804E63DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E63E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E63E4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804E63E8  38 81 00 20 */	addi r4, r1, 0x20
/* 804E63EC  4B B8 E0 B5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804E63F0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804E63F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E63F8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804E63FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6400  40 81 00 18 */	ble lbl_804E6418
/* 804E6404  38 61 00 20 */	addi r3, r1, 0x20
/* 804E6408  38 80 FF FF */	li r4, -1
/* 804E640C  4B B9 11 E5 */	bl __dt__11dBgS_GndChkFv
/* 804E6410  38 60 00 01 */	li r3, 1
/* 804E6414  48 00 00 14 */	b lbl_804E6428
lbl_804E6418:
/* 804E6418  38 61 00 20 */	addi r3, r1, 0x20
/* 804E641C  38 80 FF FF */	li r4, -1
/* 804E6420  4B B9 11 D1 */	bl __dt__11dBgS_GndChkFv
/* 804E6424  38 60 00 00 */	li r3, 0
lbl_804E6428:
/* 804E6428  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 804E642C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 804E6430  39 61 00 90 */	addi r11, r1, 0x90
/* 804E6434  4B E7 BD F5 */	bl _restgpr_29
/* 804E6438  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804E643C  7C 08 03 A6 */	mtlr r0
/* 804E6440  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804E6444  4E 80 00 20 */	blr 
