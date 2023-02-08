lbl_80A6F6E4:
/* 80A6F6E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A6F6E8  7C 08 02 A6 */	mflr r0
/* 80A6F6EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A6F6F0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A6F6F4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A6F6F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A6F6FC  4B 8F 2A DD */	bl _savegpr_28
/* 80A6F700  7C 7F 1B 78 */	mr r31, r3
/* 80A6F704  7C 80 23 78 */	mr r0, r4
/* 80A6F708  7C BC 2B 78 */	mr r28, r5
/* 80A6F70C  7C DD 33 78 */	mr r29, r6
/* 80A6F710  FF E0 08 90 */	fmr f31, f1
/* 80A6F714  7C FE 3B 78 */	mr r30, r7
/* 80A6F718  38 A0 00 00 */	li r5, 0
/* 80A6F71C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A6F720  28 04 00 00 */	cmplwi r4, 0
/* 80A6F724  41 82 00 44 */	beq lbl_80A6F768
/* 80A6F728  38 61 00 08 */	addi r3, r1, 8
/* 80A6F72C  7C 05 03 78 */	mr r5, r0
/* 80A6F730  4B 7F 74 05 */	bl __mi__4cXyzCFRC3Vec
/* 80A6F734  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A6F738  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A6F73C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A6F740  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A6F744  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A6F748  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A6F74C  4B 7F 7F 29 */	bl cM_atan2s__Fff
/* 80A6F750  7C BC 18 50 */	subf r5, r28, r3
/* 80A6F754  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A6F758  7C 1C 00 50 */	subf r0, r28, r0
/* 80A6F75C  7C 00 07 34 */	extsh r0, r0
/* 80A6F760  7C A0 28 50 */	subf r5, r0, r5
/* 80A6F764  7C A5 F2 14 */	add r5, r5, r30
lbl_80A6F768:
/* 80A6F768  2C 1D 00 00 */	cmpwi r29, 0
/* 80A6F76C  41 82 00 0C */	beq lbl_80A6F778
/* 80A6F770  7C 05 00 D0 */	neg r0, r5
/* 80A6F774  7C 05 07 34 */	extsh r5, r0
lbl_80A6F778:
/* 80A6F778  3C 60 80 A7 */	lis r3, lit_4421@ha /* 0x80A6FE50@ha */
/* 80A6F77C  C0 63 FE 50 */	lfs f3, lit_4421@l(r3)  /* 0x80A6FE50@l */
/* 80A6F780  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A6F784  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A6F788  3C 60 80 A7 */	lis r3, lit_4934@ha /* 0x80A6FE7C@ha */
/* 80A6F78C  C8 43 FE 7C */	lfd f2, lit_4934@l(r3)  /* 0x80A6FE7C@l */
/* 80A6F790  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6F794  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6F798  3C 60 43 30 */	lis r3, 0x4330
/* 80A6F79C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A6F7A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A6F7A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A6F7A8  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A6F7AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A6F7B0  7C A0 07 34 */	extsh r0, r5
/* 80A6F7B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6F7B8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A6F7BC  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A6F7C0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A6F7C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A6F7C8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A6F7CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A6F7D0  FC 00 00 1E */	fctiwz f0, f0
/* 80A6F7D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A6F7D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6F7DC  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A6F7E0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A6F7E4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A6F7E8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A6F7EC  4B 8F 2A 39 */	bl _restgpr_28
/* 80A6F7F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A6F7F4  7C 08 03 A6 */	mtlr r0
/* 80A6F7F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80A6F7FC  4E 80 00 20 */	blr 
