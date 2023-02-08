lbl_801C21AC:
/* 801C21AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C21B0  7C 08 02 A6 */	mflr r0
/* 801C21B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C21B8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801C21BC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801C21C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C21C4  7C 7F 1B 78 */	mr r31, r3
/* 801C21C8  88 63 00 F2 */	lbz r3, 0xf2(r3)
/* 801C21CC  88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 801C21D0  7C 00 07 74 */	extsb r0, r0
/* 801C21D4  7C 80 18 50 */	subf r4, r0, r3
/* 801C21D8  38 A0 00 04 */	li r5, 4
/* 801C21DC  4B E5 DF 85 */	bl fopMsgM_valueIncrease__FiiUc
/* 801C21E0  7F E3 FB 78 */	mr r3, r31
/* 801C21E4  C0 02 A6 98 */	lfs f0, lit_3946(r2)
/* 801C21E8  EF E0 08 28 */	fsubs f31, f0, f1
/* 801C21EC  FC 20 F8 90 */	fmr f1, f31
/* 801C21F0  4B FF FC 85 */	bl zoomCalcSet__20dMenu_StageMapCtrl_cFf
/* 801C21F4  D3 FF 00 D8 */	stfs f31, 0xd8(r31)
/* 801C21F8  88 7F 00 F4 */	lbz r3, 0xf4(r31)
/* 801C21FC  38 03 FF FF */	addi r0, r3, -1
/* 801C2200  98 1F 00 F4 */	stb r0, 0xf4(r31)
/* 801C2204  88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 801C2208  7C 00 07 75 */	extsb. r0, r0
/* 801C220C  40 80 00 0C */	bge lbl_801C2218
/* 801C2210  38 00 00 00 */	li r0, 0
/* 801C2214  98 1F 00 F5 */	stb r0, 0xf5(r31)
lbl_801C2218:
/* 801C2218  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801C221C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801C2220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C2228  7C 08 03 A6 */	mtlr r0
/* 801C222C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C2230  4E 80 00 20 */	blr 
