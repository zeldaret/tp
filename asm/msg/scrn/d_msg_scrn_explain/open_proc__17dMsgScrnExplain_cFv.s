lbl_8023DC7C:
/* 8023DC7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023DC80  7C 08 02 A6 */	mflr r0
/* 8023DC84  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023DC88  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8023DC8C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8023DC90  39 61 00 20 */	addi r11, r1, 0x20
/* 8023DC94  48 12 45 49 */	bl _savegpr_29
/* 8023DC98  7C 7D 1B 78 */	mr r29, r3
/* 8023DC9C  A8 63 00 5A */	lha r3, 0x5a(r3)
/* 8023DCA0  38 03 00 01 */	addi r0, r3, 1
/* 8023DCA4  B0 1D 00 5A */	sth r0, 0x5a(r29)
/* 8023DCA8  A8 1D 00 5A */	lha r0, 0x5a(r29)
/* 8023DCAC  2C 00 00 05 */	cmpwi r0, 5
/* 8023DCB0  41 80 00 34 */	blt lbl_8023DCE4
/* 8023DCB4  38 00 00 05 */	li r0, 5
/* 8023DCB8  B0 1D 00 5A */	sth r0, 0x5a(r29)
/* 8023DCBC  88 1D 00 64 */	lbz r0, 0x64(r29)
/* 8023DCC0  28 00 00 01 */	cmplwi r0, 1
/* 8023DCC4  41 82 00 0C */	beq lbl_8023DCD0
/* 8023DCC8  28 00 00 02 */	cmplwi r0, 2
/* 8023DCCC  40 82 00 10 */	bne lbl_8023DCDC
lbl_8023DCD0:
/* 8023DCD0  38 00 00 04 */	li r0, 4
/* 8023DCD4  98 1D 00 60 */	stb r0, 0x60(r29)
/* 8023DCD8  48 00 00 0C */	b lbl_8023DCE4
lbl_8023DCDC:
/* 8023DCDC  38 00 00 03 */	li r0, 3
/* 8023DCE0  98 1D 00 60 */	stb r0, 0x60(r29)
lbl_8023DCE4:
/* 8023DCE4  7F A3 EB 78 */	mr r3, r29
/* 8023DCE8  48 00 08 E5 */	bl getAlphaRatio__17dMsgScrnExplain_cFv
/* 8023DCEC  C0 02 B1 B8 */	lfs f0, lit_3978(r2)
/* 8023DCF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023DCF4  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 8023DCF8  3B C0 00 00 */	li r30, 0
/* 8023DCFC  3B E0 00 00 */	li r31, 0
/* 8023DD00  C3 E2 B1 E0 */	lfs f31, lit_4211(r2)
lbl_8023DD04:
/* 8023DD04  7F A3 EB 78 */	mr r3, r29
/* 8023DD08  48 00 08 C5 */	bl getAlphaRatio__17dMsgScrnExplain_cFv
/* 8023DD0C  EC 3F 08 28 */	fsubs f1, f31, f1
/* 8023DD10  38 1F 00 20 */	addi r0, r31, 0x20
/* 8023DD14  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8023DD18  48 01 7A B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023DD1C  3B DE 00 01 */	addi r30, r30, 1
/* 8023DD20  2C 1E 00 02 */	cmpwi r30, 2
/* 8023DD24  3B FF 00 04 */	addi r31, r31, 4
/* 8023DD28  41 80 FF DC */	blt lbl_8023DD04
/* 8023DD2C  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 8023DD30  28 00 00 00 */	cmplwi r0, 0
/* 8023DD34  41 82 00 3C */	beq lbl_8023DD70
/* 8023DD38  7F A3 EB 78 */	mr r3, r29
/* 8023DD3C  48 00 08 91 */	bl getAlphaRatio__17dMsgScrnExplain_cFv
/* 8023DD40  C0 02 B1 E0 */	lfs f0, lit_4211(r2)
/* 8023DD44  EC 20 08 28 */	fsubs f1, f0, f1
/* 8023DD48  C0 02 B1 E4 */	lfs f0, lit_4230(r2)
/* 8023DD4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023DD50  FC 00 00 1E */	fctiwz f0, f0
/* 8023DD54  D8 01 00 08 */	stfd f0, 8(r1)
/* 8023DD58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8023DD5C  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 8023DD60  81 83 00 00 */	lwz r12, 0(r3)
/* 8023DD64  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8023DD68  7D 89 03 A6 */	mtctr r12
/* 8023DD6C  4E 80 04 21 */	bctrl 
lbl_8023DD70:
/* 8023DD70  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8023DD74  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8023DD78  39 61 00 20 */	addi r11, r1, 0x20
/* 8023DD7C  48 12 44 AD */	bl _restgpr_29
/* 8023DD80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023DD84  7C 08 03 A6 */	mtlr r0
/* 8023DD88  38 21 00 30 */	addi r1, r1, 0x30
/* 8023DD8C  4E 80 00 20 */	blr 
