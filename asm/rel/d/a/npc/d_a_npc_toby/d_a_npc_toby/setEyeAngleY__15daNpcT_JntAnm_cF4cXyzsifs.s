lbl_80B24358:
/* 80B24358  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B2435C  7C 08 02 A6 */	mflr r0
/* 80B24360  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B24364  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B24368  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B2436C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B24370  4B 83 DE 68 */	b _savegpr_28
/* 80B24374  7C 7F 1B 78 */	mr r31, r3
/* 80B24378  7C 80 23 78 */	mr r0, r4
/* 80B2437C  7C BC 2B 78 */	mr r28, r5
/* 80B24380  7C DD 33 78 */	mr r29, r6
/* 80B24384  FF E0 08 90 */	fmr f31, f1
/* 80B24388  7C FE 3B 78 */	mr r30, r7
/* 80B2438C  38 A0 00 00 */	li r5, 0
/* 80B24390  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B24394  28 04 00 00 */	cmplwi r4, 0
/* 80B24398  41 82 00 44 */	beq lbl_80B243DC
/* 80B2439C  38 61 00 08 */	addi r3, r1, 8
/* 80B243A0  7C 05 03 78 */	mr r5, r0
/* 80B243A4  4B 74 27 90 */	b __mi__4cXyzCFRC3Vec
/* 80B243A8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B243AC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B243B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B243B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B243B8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B243BC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B243C0  4B 74 32 B4 */	b cM_atan2s__Fff
/* 80B243C4  7C BC 18 50 */	subf r5, r28, r3
/* 80B243C8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B243CC  7C 1C 00 50 */	subf r0, r28, r0
/* 80B243D0  7C 00 07 34 */	extsh r0, r0
/* 80B243D4  7C A0 28 50 */	subf r5, r0, r5
/* 80B243D8  7C A5 F2 14 */	add r5, r5, r30
lbl_80B243DC:
/* 80B243DC  2C 1D 00 00 */	cmpwi r29, 0
/* 80B243E0  41 82 00 0C */	beq lbl_80B243EC
/* 80B243E4  7C 05 00 D0 */	neg r0, r5
/* 80B243E8  7C 05 07 34 */	extsh r5, r0
lbl_80B243EC:
/* 80B243EC  3C 60 80 B2 */	lis r3, lit_4495@ha
/* 80B243F0  C0 63 4A C0 */	lfs f3, lit_4495@l(r3)
/* 80B243F4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B243F8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B243FC  3C 60 80 B2 */	lis r3, lit_4992@ha
/* 80B24400  C8 43 4A F4 */	lfd f2, lit_4992@l(r3)
/* 80B24404  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B24408  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B2440C  3C 60 43 30 */	lis r3, 0x4330
/* 80B24410  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B24414  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B24418  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B2441C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B24420  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B24424  7C A0 07 34 */	extsh r0, r5
/* 80B24428  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B2442C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B24430  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B24434  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B24438  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B2443C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B24440  EC 01 00 2A */	fadds f0, f1, f0
/* 80B24444  FC 00 00 1E */	fctiwz f0, f0
/* 80B24448  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B2444C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B24450  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B24454  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B24458  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B2445C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B24460  4B 83 DD C4 */	b _restgpr_28
/* 80B24464  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B24468  7C 08 03 A6 */	mtlr r0
/* 80B2446C  38 21 00 60 */	addi r1, r1, 0x60
/* 80B24470  4E 80 00 20 */	blr 
