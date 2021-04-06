lbl_80A3C674:
/* 80A3C674  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A3C678  7C 08 02 A6 */	mflr r0
/* 80A3C67C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A3C680  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A3C684  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A3C688  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3C68C  4B 92 5B 4D */	bl _savegpr_28
/* 80A3C690  7C 7F 1B 78 */	mr r31, r3
/* 80A3C694  7C 80 23 78 */	mr r0, r4
/* 80A3C698  7C BC 2B 78 */	mr r28, r5
/* 80A3C69C  7C DD 33 78 */	mr r29, r6
/* 80A3C6A0  FF E0 08 90 */	fmr f31, f1
/* 80A3C6A4  7C FE 3B 78 */	mr r30, r7
/* 80A3C6A8  38 A0 00 00 */	li r5, 0
/* 80A3C6AC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A3C6B0  28 04 00 00 */	cmplwi r4, 0
/* 80A3C6B4  41 82 00 44 */	beq lbl_80A3C6F8
/* 80A3C6B8  38 61 00 08 */	addi r3, r1, 8
/* 80A3C6BC  7C 05 03 78 */	mr r5, r0
/* 80A3C6C0  4B 82 A4 75 */	bl __mi__4cXyzCFRC3Vec
/* 80A3C6C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A3C6C8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A3C6CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A3C6D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3C6D4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A3C6D8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A3C6DC  4B 82 AF 99 */	bl cM_atan2s__Fff
/* 80A3C6E0  7C BC 18 50 */	subf r5, r28, r3
/* 80A3C6E4  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A3C6E8  7C 1C 00 50 */	subf r0, r28, r0
/* 80A3C6EC  7C 00 07 34 */	extsh r0, r0
/* 80A3C6F0  7C A0 28 50 */	subf r5, r0, r5
/* 80A3C6F4  7C A5 F2 14 */	add r5, r5, r30
lbl_80A3C6F8:
/* 80A3C6F8  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3C6FC  41 82 00 0C */	beq lbl_80A3C708
/* 80A3C700  7C 05 00 D0 */	neg r0, r5
/* 80A3C704  7C 05 07 34 */	extsh r5, r0
lbl_80A3C708:
/* 80A3C708  3C 60 80 A4 */	lis r3, lit_4327@ha /* 0x80A4090C@ha */
/* 80A3C70C  C0 63 09 0C */	lfs f3, lit_4327@l(r3)  /* 0x80A4090C@l */
/* 80A3C710  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A3C714  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A3C718  3C 60 80 A4 */	lis r3, lit_4095@ha /* 0x80A408F8@ha */
/* 80A3C71C  C8 43 08 F8 */	lfd f2, lit_4095@l(r3)  /* 0x80A408F8@l */
/* 80A3C720  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3C724  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3C728  3C 60 43 30 */	lis r3, 0x4330
/* 80A3C72C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A3C730  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A3C734  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A3C738  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A3C73C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A3C740  7C A0 07 34 */	extsh r0, r5
/* 80A3C744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3C748  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A3C74C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A3C750  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A3C754  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3C758  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A3C75C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3C760  FC 00 00 1E */	fctiwz f0, f0
/* 80A3C764  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A3C768  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3C76C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A3C770  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A3C774  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A3C778  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3C77C  4B 92 5A A9 */	bl _restgpr_28
/* 80A3C780  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A3C784  7C 08 03 A6 */	mtlr r0
/* 80A3C788  38 21 00 60 */	addi r1, r1, 0x60
/* 80A3C78C  4E 80 00 20 */	blr 
