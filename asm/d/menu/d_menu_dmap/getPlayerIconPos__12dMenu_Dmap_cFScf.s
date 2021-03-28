lbl_801BC788:
/* 801BC788  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BC78C  7C 08 02 A6 */	mflr r0
/* 801BC790  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BC794  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801BC798  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801BC79C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801BC7A0  7C 7F 1B 78 */	mr r31, r3
/* 801BC7A4  FF E0 08 90 */	fmr f31, f1
/* 801BC7A8  7C 83 07 74 */	extsb r3, r4
/* 801BC7AC  88 1F 01 72 */	lbz r0, 0x172(r31)
/* 801BC7B0  7C 00 07 74 */	extsb r0, r0
/* 801BC7B4  7C 03 00 00 */	cmpw r3, r0
/* 801BC7B8  40 82 00 74 */	bne lbl_801BC82C
/* 801BC7BC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BC7C0  38 81 00 10 */	addi r4, r1, 0x10
/* 801BC7C4  38 A1 00 0C */	addi r5, r1, 0xc
/* 801BC7C8  38 C1 00 08 */	addi r6, r1, 8
/* 801BC7CC  48 00 49 C9 */	bl getPlayerDrawInfo__20dMenu_StageMapCtrl_cCFPfPfPs
/* 801BC7D0  C0 42 A6 50 */	lfs f2, lit_5288(r2)
/* 801BC7D4  A8 01 00 08 */	lha r0, 8(r1)
/* 801BC7D8  C8 22 A5 F8 */	lfd f1, lit_4108(r2)
/* 801BC7DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BC7E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BC7E4  3C 00 43 30 */	lis r0, 0x4330
/* 801BC7E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BC7EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801BC7F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BC7F4  EC 82 00 32 */	fmuls f4, f2, f0
/* 801BC7F8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC7FC  38 63 00 04 */	addi r3, r3, 4
/* 801BC800  38 80 00 11 */	li r4, 0x11
/* 801BC804  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801BC808  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801BC80C  FC 60 F8 90 */	fmr f3, f31
/* 801BC810  C0 A2 A5 EC */	lfs f5, lit_3963(r2)
/* 801BC814  38 A0 00 01 */	li r5, 1
/* 801BC818  48 00 7B 91 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
/* 801BC81C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801BC820  D0 0D 8A F8 */	stfs f0, player_px(r13)
/* 801BC824  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801BC828  D0 0D 8A FC */	stfs f0, player_py(r13)
lbl_801BC82C:
/* 801BC82C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801BC830  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801BC834  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801BC838  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BC83C  7C 08 03 A6 */	mtlr r0
/* 801BC840  38 21 00 40 */	addi r1, r1, 0x40
/* 801BC844  4E 80 00 20 */	blr 
