lbl_80A632A0:
/* 80A632A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A632A4  7C 08 02 A6 */	mflr r0
/* 80A632A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A632AC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A632B0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A632B4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A632B8  4B 8F EF 21 */	bl _savegpr_28
/* 80A632BC  7C 7F 1B 78 */	mr r31, r3
/* 80A632C0  7C 80 23 78 */	mr r0, r4
/* 80A632C4  7C BC 2B 78 */	mr r28, r5
/* 80A632C8  7C DD 33 78 */	mr r29, r6
/* 80A632CC  FF E0 08 90 */	fmr f31, f1
/* 80A632D0  7C FE 3B 78 */	mr r30, r7
/* 80A632D4  38 A0 00 00 */	li r5, 0
/* 80A632D8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A632DC  28 04 00 00 */	cmplwi r4, 0
/* 80A632E0  41 82 00 44 */	beq lbl_80A63324
/* 80A632E4  38 61 00 08 */	addi r3, r1, 8
/* 80A632E8  7C 05 03 78 */	mr r5, r0
/* 80A632EC  4B 80 38 49 */	bl __mi__4cXyzCFRC3Vec
/* 80A632F0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A632F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A632F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A632FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A63300  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A63304  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A63308  4B 80 43 6D */	bl cM_atan2s__Fff
/* 80A6330C  7C BC 18 50 */	subf r5, r28, r3
/* 80A63310  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A63314  7C 1C 00 50 */	subf r0, r28, r0
/* 80A63318  7C 00 07 34 */	extsh r0, r0
/* 80A6331C  7C A0 28 50 */	subf r5, r0, r5
/* 80A63320  7C A5 F2 14 */	add r5, r5, r30
lbl_80A63324:
/* 80A63324  2C 1D 00 00 */	cmpwi r29, 0
/* 80A63328  41 82 00 0C */	beq lbl_80A63334
/* 80A6332C  7C 05 00 D0 */	neg r0, r5
/* 80A63330  7C 05 07 34 */	extsh r5, r0
lbl_80A63334:
/* 80A63334  3C 60 80 A6 */	lis r3, lit_4370@ha /* 0x80A63960@ha */
/* 80A63338  C0 63 39 60 */	lfs f3, lit_4370@l(r3)  /* 0x80A63960@l */
/* 80A6333C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A63340  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A63344  3C 60 80 A6 */	lis r3, lit_4740@ha /* 0x80A63984@ha */
/* 80A63348  C8 43 39 84 */	lfd f2, lit_4740@l(r3)  /* 0x80A63984@l */
/* 80A6334C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A63350  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A63354  3C 60 43 30 */	lis r3, 0x4330
/* 80A63358  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A6335C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A63360  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A63364  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A63368  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A6336C  7C A0 07 34 */	extsh r0, r5
/* 80A63370  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A63374  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A63378  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A6337C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A63380  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A63384  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A63388  EC 01 00 2A */	fadds f0, f1, f0
/* 80A6338C  FC 00 00 1E */	fctiwz f0, f0
/* 80A63390  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A63394  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A63398  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A6339C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A633A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A633A4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A633A8  4B 8F EE 7D */	bl _restgpr_28
/* 80A633AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A633B0  7C 08 03 A6 */	mtlr r0
/* 80A633B4  38 21 00 60 */	addi r1, r1, 0x60
/* 80A633B8  4E 80 00 20 */	blr 
