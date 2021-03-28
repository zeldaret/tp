lbl_802BE144:
/* 802BE144  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BE148  7C 08 02 A6 */	mflr r0
/* 802BE14C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BE150  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802BE154  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802BE158  39 61 00 40 */	addi r11, r1, 0x40
/* 802BE15C  48 0A 40 7D */	bl _savegpr_28
/* 802BE160  7C 7D 1B 78 */	mr r29, r3
/* 802BE164  7C 9E 23 78 */	mr r30, r4
/* 802BE168  7C BF 2B 78 */	mr r31, r5
/* 802BE16C  7C DC 33 78 */	mr r28, r6
/* 802BE170  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802BE174  28 00 00 00 */	cmplwi r0, 0
/* 802BE178  40 82 00 0C */	bne lbl_802BE184
/* 802BE17C  38 60 00 00 */	li r3, 0
/* 802BE180  48 00 01 34 */	b lbl_802BE2B4
lbl_802BE184:
/* 802BE184  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BE188  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BE18C  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802BE190  38 81 00 18 */	addi r4, r1, 0x18
/* 802BE194  4B FF 04 1D */	bl isSoundCulling__7Z2SeMgrF10JAISoundID
/* 802BE198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BE19C  41 82 00 0C */	beq lbl_802BE1A8
/* 802BE1A0  38 60 00 00 */	li r3, 0
/* 802BE1A4  48 00 01 10 */	b lbl_802BE2B4
lbl_802BE1A8:
/* 802BE1A8  28 1F 00 00 */	cmplwi r31, 0
/* 802BE1AC  40 82 00 08 */	bne lbl_802BE1B4
/* 802BE1B0  A3 FD 00 1C */	lhz r31, 0x1c(r29)
lbl_802BE1B4:
/* 802BE1B4  7F 80 07 75 */	extsb. r0, r28
/* 802BE1B8  40 80 00 08 */	bge lbl_802BE1C0
/* 802BE1BC  8B 9D 00 1E */	lbz r28, 0x1e(r29)
lbl_802BE1C0:
/* 802BE1C0  7F 80 07 74 */	extsb r0, r28
/* 802BE1C4  C8 22 C1 48 */	lfd f1, lit_3564(r2)
/* 802BE1C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BE1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE1D0  3C 00 43 30 */	lis r0, 0x4330
/* 802BE1D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BE1D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BE1DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BE1E0  C0 02 C1 38 */	lfs f0, lit_3559(r2)
/* 802BE1E4  EF E1 00 24 */	fdivs f31, f1, f0
/* 802BE1E8  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BE1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE1F0  7F A3 EB 78 */	mr r3, r29
/* 802BE1F4  38 81 00 14 */	addi r4, r1, 0x14
/* 802BE1F8  4B FE D0 5D */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802BE1FC  7C 7C 1B 79 */	or. r28, r3, r3
/* 802BE200  41 82 00 30 */	beq lbl_802BE230
/* 802BE204  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BE208  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BE20C  80 6D 85 CC */	lwz r3, data_80450B4C(r13)
/* 802BE210  38 81 00 10 */	addi r4, r1, 0x10
/* 802BE214  4B FF D8 B5 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BE218  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 802BE21C  41 82 00 0C */	beq lbl_802BE228
/* 802BE220  3B 80 00 00 */	li r28, 0
/* 802BE224  48 00 00 0C */	b lbl_802BE230
lbl_802BE228:
/* 802BE228  38 60 00 00 */	li r3, 0
/* 802BE22C  48 00 00 88 */	b lbl_802BE2B4
lbl_802BE230:
/* 802BE230  28 1C 00 00 */	cmplwi r28, 0
/* 802BE234  40 82 00 10 */	bne lbl_802BE244
/* 802BE238  7F A3 EB 78 */	mr r3, r29
/* 802BE23C  4B FE D0 9D */	bl getFreeHandle__14Z2SoundHandlesFv
/* 802BE240  7C 7C 1B 78 */	mr r28, r3
lbl_802BE244:
/* 802BE244  28 1C 00 00 */	cmplwi r28, 0
/* 802BE248  40 82 00 1C */	bne lbl_802BE264
/* 802BE24C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BE250  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BE254  7F A3 EB 78 */	mr r3, r29
/* 802BE258  38 81 00 0C */	addi r4, r1, 0xc
/* 802BE25C  4B FE D1 75 */	bl getLowPrioSound__14Z2SoundHandlesF10JAISoundID
/* 802BE260  7C 7C 1B 78 */	mr r28, r3
lbl_802BE264:
/* 802BE264  28 1C 00 00 */	cmplwi r28, 0
/* 802BE268  41 82 00 48 */	beq lbl_802BE2B0
/* 802BE26C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BE270  90 01 00 08 */	stw r0, 8(r1)
/* 802BE274  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 802BE278  38 81 00 08 */	addi r4, r1, 8
/* 802BE27C  7F 85 E3 78 */	mr r5, r28
/* 802BE280  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 802BE284  7F E7 FB 78 */	mr r7, r31
/* 802BE288  FC 20 F8 90 */	fmr f1, f31
/* 802BE28C  C0 42 C1 3C */	lfs f2, lit_3560(r2)
/* 802BE290  FC 60 10 90 */	fmr f3, f2
/* 802BE294  C0 82 C1 40 */	lfs f4, lit_3561(r2)
/* 802BE298  FC A0 20 90 */	fmr f5, f4
/* 802BE29C  39 00 00 00 */	li r8, 0
/* 802BE2A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802BE2A4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BE2A8  7D 89 03 A6 */	mtctr r12
/* 802BE2AC  4E 80 04 21 */	bctrl 
lbl_802BE2B0:
/* 802BE2B0  7F 83 E3 78 */	mr r3, r28
lbl_802BE2B4:
/* 802BE2B4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802BE2B8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802BE2BC  39 61 00 40 */	addi r11, r1, 0x40
/* 802BE2C0  48 0A 3F 65 */	bl _restgpr_28
/* 802BE2C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BE2C8  7C 08 03 A6 */	mtlr r0
/* 802BE2CC  38 21 00 50 */	addi r1, r1, 0x50
/* 802BE2D0  4E 80 00 20 */	blr 
