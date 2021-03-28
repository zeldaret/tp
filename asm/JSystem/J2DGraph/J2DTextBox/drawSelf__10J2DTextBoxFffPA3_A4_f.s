lbl_80300950:
/* 80300950  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80300954  7C 08 02 A6 */	mflr r0
/* 80300958  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8030095C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80300960  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80300964  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80300968  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8030096C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80300970  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80300974  7C 7E 1B 78 */	mr r30, r3
/* 80300978  FF C0 08 90 */	fmr f30, f1
/* 8030097C  FF E0 10 90 */	fmr f31, f2
/* 80300980  7C 9F 23 78 */	mr r31, r4
/* 80300984  80 03 01 28 */	lwz r0, 0x128(r3)
/* 80300988  90 01 00 08 */	stw r0, 8(r1)
/* 8030098C  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 80300990  90 01 00 0C */	stw r0, 0xc(r1)
/* 80300994  80 03 01 08 */	lwz r0, 0x108(r3)
/* 80300998  90 01 00 10 */	stw r0, 0x10(r1)
/* 8030099C  80 03 01 04 */	lwz r0, 0x104(r3)
/* 803009A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803009A4  38 61 00 48 */	addi r3, r1, 0x48
/* 803009A8  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 803009AC  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 803009B0  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 803009B4  38 A1 00 14 */	addi r5, r1, 0x14
/* 803009B8  38 C1 00 10 */	addi r6, r1, 0x10
/* 803009BC  38 E1 00 0C */	addi r7, r1, 0xc
/* 803009C0  39 01 00 08 */	addi r8, r1, 8
/* 803009C4  4B FF 39 D1 */	bl __ct__8J2DPrintFP7JUTFontffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 803009C8  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 803009CC  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 803009D0  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 803009D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803009D8  40 81 00 08 */	ble lbl_803009E0
/* 803009DC  48 00 00 08 */	b lbl_803009E4
lbl_803009E0:
/* 803009E0  FC 20 00 90 */	fmr f1, f0
lbl_803009E4:
/* 803009E4  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 803009E8  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 803009EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803009F0  40 81 00 08 */	ble lbl_803009F8
/* 803009F4  48 00 00 08 */	b lbl_803009FC
lbl_803009F8:
/* 803009F8  FC 40 00 90 */	fmr f2, f0
lbl_803009FC:
/* 803009FC  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80300A00  7F E3 FB 78 */	mr r3, r31
/* 80300A04  38 9E 00 80 */	addi r4, r30, 0x80
/* 80300A08  38 A1 00 18 */	addi r5, r1, 0x18
/* 80300A0C  48 04 5A D9 */	bl PSMTXConcat
/* 80300A10  38 61 00 18 */	addi r3, r1, 0x18
/* 80300A14  38 80 00 00 */	li r4, 0
/* 80300A18  48 05 F8 35 */	bl GXLoadPosMtxImm
/* 80300A1C  38 60 00 00 */	li r3, 0
/* 80300A20  48 05 E6 B5 */	bl GXSetNumIndStages
/* 80300A24  3B E0 00 00 */	li r31, 0
lbl_80300A28:
/* 80300A28  7F E3 FB 78 */	mr r3, r31
/* 80300A2C  48 05 E6 CD */	bl GXSetTevDirect
/* 80300A30  3B FF 00 01 */	addi r31, r31, 1
/* 80300A34  2C 1F 00 10 */	cmpwi r31, 0x10
/* 80300A38  41 80 FF F0 */	blt lbl_80300A28
/* 80300A3C  38 60 00 01 */	li r3, 1
/* 80300A40  48 05 B3 BD */	bl GXSetNumTexGens
/* 80300A44  38 60 00 00 */	li r3, 0
/* 80300A48  38 80 00 01 */	li r4, 1
/* 80300A4C  38 A0 00 04 */	li r5, 4
/* 80300A50  38 C0 00 3C */	li r6, 0x3c
/* 80300A54  38 E0 00 00 */	li r7, 0
/* 80300A58  39 00 00 7D */	li r8, 0x7d
/* 80300A5C  48 05 B1 21 */	bl GXSetTexCoordGen2
/* 80300A60  38 61 00 48 */	addi r3, r1, 0x48
/* 80300A64  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80300A68  EC 3E 00 2A */	fadds f1, f30, f0
/* 80300A6C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80300A70  EC 5F 00 2A */	fadds f2, f31, f0
/* 80300A74  4B FF 3C E9 */	bl locate__8J2DPrintFff
/* 80300A78  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80300A7C  28 04 00 00 */	cmplwi r4, 0
/* 80300A80  41 82 00 44 */	beq lbl_80300AC4
/* 80300A84  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 80300A88  38 61 00 48 */	addi r3, r1, 0x48
/* 80300A8C  C0 42 C8 98 */	lfs f2, lit_2049(r2)
/* 80300A90  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80300A94  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80300A98  EC 01 00 28 */	fsubs f0, f1, f0
/* 80300A9C  EC 22 00 2A */	fadds f1, f2, f0
/* 80300AA0  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80300AA4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80300AA8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80300AAC  54 05 F7 BE */	rlwinm r5, r0, 0x1e, 0x1e, 0x1f
/* 80300AB0  54 06 07 BE */	clrlwi r6, r0, 0x1e
/* 80300AB4  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 80300AB8  C0 9E 01 10 */	lfs f4, 0x110(r30)
/* 80300ABC  88 FE 00 B3 */	lbz r7, 0xb3(r30)
/* 80300AC0  4B FF 3D 69 */	bl printReturn__8J2DPrintFPCcff18J2DTextBoxHBinding18J2DTextBoxVBindingffUc
lbl_80300AC4:
/* 80300AC4  38 61 00 48 */	addi r3, r1, 0x48
/* 80300AC8  38 80 FF FF */	li r4, -1
/* 80300ACC  4B FF 39 55 */	bl __dt__8J2DPrintFv
/* 80300AD0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80300AD4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80300AD8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80300ADC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80300AE0  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80300AE4  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80300AE8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80300AEC  7C 08 03 A6 */	mtlr r0
/* 80300AF0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80300AF4  4E 80 00 20 */	blr 
