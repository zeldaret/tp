lbl_80AEEAC4:
/* 80AEEAC4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AEEAC8  7C 08 02 A6 */	mflr r0
/* 80AEEACC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AEEAD0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AEEAD4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AEEAD8  39 61 00 50 */	addi r11, r1, 0x50
/* 80AEEADC  4B 87 36 FD */	bl _savegpr_28
/* 80AEEAE0  7C 7F 1B 78 */	mr r31, r3
/* 80AEEAE4  7C 80 23 78 */	mr r0, r4
/* 80AEEAE8  7C BC 2B 78 */	mr r28, r5
/* 80AEEAEC  7C DD 33 78 */	mr r29, r6
/* 80AEEAF0  FF E0 08 90 */	fmr f31, f1
/* 80AEEAF4  7C FE 3B 78 */	mr r30, r7
/* 80AEEAF8  38 A0 00 00 */	li r5, 0
/* 80AEEAFC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AEEB00  28 04 00 00 */	cmplwi r4, 0
/* 80AEEB04  41 82 00 44 */	beq lbl_80AEEB48
/* 80AEEB08  38 61 00 08 */	addi r3, r1, 8
/* 80AEEB0C  7C 05 03 78 */	mr r5, r0
/* 80AEEB10  4B 77 80 25 */	bl __mi__4cXyzCFRC3Vec
/* 80AEEB14  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AEEB18  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AEEB1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AEEB20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AEEB24  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AEEB28  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AEEB2C  4B 77 8B 49 */	bl cM_atan2s__Fff
/* 80AEEB30  7C BC 18 50 */	subf r5, r28, r3
/* 80AEEB34  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AEEB38  7C 1C 00 50 */	subf r0, r28, r0
/* 80AEEB3C  7C 00 07 34 */	extsh r0, r0
/* 80AEEB40  7C A0 28 50 */	subf r5, r0, r5
/* 80AEEB44  7C A5 F2 14 */	add r5, r5, r30
lbl_80AEEB48:
/* 80AEEB48  2C 1D 00 00 */	cmpwi r29, 0
/* 80AEEB4C  41 82 00 0C */	beq lbl_80AEEB58
/* 80AEEB50  7C 05 00 D0 */	neg r0, r5
/* 80AEEB54  7C 05 07 34 */	extsh r5, r0
lbl_80AEEB58:
/* 80AEEB58  3C 60 80 AF */	lis r3, lit_4436@ha /* 0x80AEF1A8@ha */
/* 80AEEB5C  C0 63 F1 A8 */	lfs f3, lit_4436@l(r3)  /* 0x80AEF1A8@l */
/* 80AEEB60  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AEEB64  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AEEB68  3C 60 80 AF */	lis r3, lit_4686@ha /* 0x80AEF1C0@ha */
/* 80AEEB6C  C8 43 F1 C0 */	lfd f2, lit_4686@l(r3)  /* 0x80AEF1C0@l */
/* 80AEEB70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AEEB74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEEB78  3C 60 43 30 */	lis r3, 0x4330
/* 80AEEB7C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AEEB80  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AEEB84  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AEEB88  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AEEB8C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AEEB90  7C A0 07 34 */	extsh r0, r5
/* 80AEEB94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AEEB98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AEEB9C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AEEBA0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AEEBA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AEEBA8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AEEBAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80AEEBB0  FC 00 00 1E */	fctiwz f0, f0
/* 80AEEBB4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AEEBB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AEEBBC  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AEEBC0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AEEBC4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AEEBC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80AEEBCC  4B 87 36 59 */	bl _restgpr_28
/* 80AEEBD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AEEBD4  7C 08 03 A6 */	mtlr r0
/* 80AEEBD8  38 21 00 60 */	addi r1, r1, 0x60
/* 80AEEBDC  4E 80 00 20 */	blr 
