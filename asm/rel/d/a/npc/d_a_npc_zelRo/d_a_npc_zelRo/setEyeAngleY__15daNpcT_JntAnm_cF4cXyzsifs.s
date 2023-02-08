lbl_80B74684:
/* 80B74684  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B74688  7C 08 02 A6 */	mflr r0
/* 80B7468C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B74690  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B74694  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B74698  39 61 00 50 */	addi r11, r1, 0x50
/* 80B7469C  4B 7E DB 3D */	bl _savegpr_28
/* 80B746A0  7C 7F 1B 78 */	mr r31, r3
/* 80B746A4  7C 80 23 78 */	mr r0, r4
/* 80B746A8  7C BC 2B 78 */	mr r28, r5
/* 80B746AC  7C DD 33 78 */	mr r29, r6
/* 80B746B0  FF E0 08 90 */	fmr f31, f1
/* 80B746B4  7C FE 3B 78 */	mr r30, r7
/* 80B746B8  38 A0 00 00 */	li r5, 0
/* 80B746BC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B746C0  28 04 00 00 */	cmplwi r4, 0
/* 80B746C4  41 82 00 44 */	beq lbl_80B74708
/* 80B746C8  38 61 00 08 */	addi r3, r1, 8
/* 80B746CC  7C 05 03 78 */	mr r5, r0
/* 80B746D0  4B 6F 24 65 */	bl __mi__4cXyzCFRC3Vec
/* 80B746D4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B746D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B746DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B746E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B746E4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B746E8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B746EC  4B 6F 2F 89 */	bl cM_atan2s__Fff
/* 80B746F0  7C BC 18 50 */	subf r5, r28, r3
/* 80B746F4  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B746F8  7C 1C 00 50 */	subf r0, r28, r0
/* 80B746FC  7C 00 07 34 */	extsh r0, r0
/* 80B74700  7C A0 28 50 */	subf r5, r0, r5
/* 80B74704  7C A5 F2 14 */	add r5, r5, r30
lbl_80B74708:
/* 80B74708  2C 1D 00 00 */	cmpwi r29, 0
/* 80B7470C  41 82 00 0C */	beq lbl_80B74718
/* 80B74710  7C 05 00 D0 */	neg r0, r5
/* 80B74714  7C 05 07 34 */	extsh r5, r0
lbl_80B74718:
/* 80B74718  3C 60 80 B7 */	lis r3, lit_4339@ha /* 0x80B74D04@ha */
/* 80B7471C  C0 63 4D 04 */	lfs f3, lit_4339@l(r3)  /* 0x80B74D04@l */
/* 80B74720  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B74724  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B74728  3C 60 80 B7 */	lis r3, lit_4732@ha /* 0x80B74D1C@ha */
/* 80B7472C  C8 43 4D 1C */	lfd f2, lit_4732@l(r3)  /* 0x80B74D1C@l */
/* 80B74730  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B74734  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B74738  3C 60 43 30 */	lis r3, 0x4330
/* 80B7473C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B74740  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B74744  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B74748  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B7474C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B74750  7C A0 07 34 */	extsh r0, r5
/* 80B74754  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B74758  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B7475C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B74760  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B74764  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B74768  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B7476C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B74770  FC 00 00 1E */	fctiwz f0, f0
/* 80B74774  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B74778  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7477C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B74780  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B74784  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B74788  39 61 00 50 */	addi r11, r1, 0x50
/* 80B7478C  4B 7E DA 99 */	bl _restgpr_28
/* 80B74790  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B74794  7C 08 03 A6 */	mtlr r0
/* 80B74798  38 21 00 60 */	addi r1, r1, 0x60
/* 80B7479C  4E 80 00 20 */	blr 
