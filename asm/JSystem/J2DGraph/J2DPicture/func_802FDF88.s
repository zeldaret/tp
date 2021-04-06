lbl_802FDF88:
/* 802FDF88  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 802FDF8C  7C 08 02 A6 */	mflr r0
/* 802FDF90  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802FDF94  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 802FDF98  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 802FDF9C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 802FDFA0  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 802FDFA4  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 802FDFA8  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 802FDFAC  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 802FDFB0  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 802FDFB4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 802FDFB8  48 06 42 21 */	bl _savegpr_28
/* 802FDFBC  7C 7C 1B 78 */	mr r28, r3
/* 802FDFC0  7C 9F 23 78 */	mr r31, r4
/* 802FDFC4  7C BD 2B 78 */	mr r29, r5
/* 802FDFC8  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802FDFCC  28 00 00 00 */	cmplwi r0, 0
/* 802FDFD0  41 82 03 78 */	beq lbl_802FE348
/* 802FDFD4  88 1C 01 08 */	lbz r0, 0x108(r28)
/* 802FDFD8  28 00 00 00 */	cmplwi r0, 0
/* 802FDFDC  41 82 03 6C */	beq lbl_802FE348
/* 802FDFE0  80 1C 01 00 */	lwz r0, 0x100(r28)
/* 802FDFE4  28 00 00 00 */	cmplwi r0, 0
/* 802FDFE8  41 82 03 60 */	beq lbl_802FE348
/* 802FDFEC  3B C0 00 00 */	li r30, 0
/* 802FDFF0  48 00 00 20 */	b lbl_802FE010
lbl_802FDFF4:
/* 802FDFF4  7F 83 E3 78 */	mr r3, r28
/* 802FDFF8  7F C4 F3 78 */	mr r4, r30
/* 802FDFFC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802FE000  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 802FE004  7D 89 03 A6 */	mtctr r12
/* 802FE008  4E 80 04 21 */	bctrl 
/* 802FE00C  3B DE 00 01 */	addi r30, r30, 1
lbl_802FE010:
/* 802FE010  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802FE014  88 7C 01 08 */	lbz r3, 0x108(r28)
/* 802FE018  7C 00 18 40 */	cmplw r0, r3
/* 802FE01C  41 80 FF D8 */	blt lbl_802FDFF4
/* 802FE020  48 05 DD DD */	bl GXSetNumTexGens
/* 802FE024  C0 3D 00 00 */	lfs f1, 0(r29)
/* 802FE028  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802FE02C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FE030  C0 7D 00 08 */	lfs f3, 8(r29)
/* 802FE034  EC 43 08 28 */	fsubs f2, f3, f1
/* 802FE038  EF E0 10 24 */	fdivs f31, f0, f2
/* 802FE03C  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FE040  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802FE044  EC 00 18 28 */	fsubs f0, f0, f3
/* 802FE048  EC 00 10 24 */	fdivs f0, f0, f2
/* 802FE04C  EF C1 00 2A */	fadds f30, f1, f0
/* 802FE050  C0 5D 00 04 */	lfs f2, 4(r29)
/* 802FE054  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802FE058  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FE05C  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 802FE060  EC 43 10 28 */	fsubs f2, f3, f2
/* 802FE064  EF A0 10 24 */	fdivs f29, f0, f2
/* 802FE068  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802FE06C  EC 00 18 28 */	fsubs f0, f0, f3
/* 802FE070  EC 00 10 24 */	fdivs f0, f0, f2
/* 802FE074  EF 81 00 2A */	fadds f28, f1, f0
/* 802FE078  88 1C 00 B2 */	lbz r0, 0xb2(r28)
/* 802FE07C  98 1C 00 B3 */	stb r0, 0xb3(r28)
/* 802FE080  38 00 FF FF */	li r0, -1
/* 802FE084  90 01 00 08 */	stw r0, 8(r1)
/* 802FE088  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FE08C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FE090  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE094  7F 83 E3 78 */	mr r3, r28
/* 802FE098  38 81 00 08 */	addi r4, r1, 8
/* 802FE09C  48 00 0B C9 */	bl getNewColor__10J2DPictureFPQ28JUtility6TColor
/* 802FE0A0  7F 83 E3 78 */	mr r3, r28
/* 802FE0A4  48 00 05 2D */	bl setTevMode__10J2DPictureFv
/* 802FE0A8  48 05 D4 E5 */	bl GXClearVtxDesc
/* 802FE0AC  38 60 00 09 */	li r3, 9
/* 802FE0B0  38 80 00 01 */	li r4, 1
/* 802FE0B4  48 05 CE 05 */	bl GXSetVtxDesc
/* 802FE0B8  38 60 00 0B */	li r3, 0xb
/* 802FE0BC  38 80 00 01 */	li r4, 1
/* 802FE0C0  48 05 CD F9 */	bl GXSetVtxDesc
/* 802FE0C4  38 60 00 0D */	li r3, 0xd
/* 802FE0C8  38 80 00 01 */	li r4, 1
/* 802FE0CC  48 05 CD ED */	bl GXSetVtxDesc
/* 802FE0D0  38 60 00 00 */	li r3, 0
/* 802FE0D4  38 80 00 0D */	li r4, 0xd
/* 802FE0D8  38 A0 00 01 */	li r5, 1
/* 802FE0DC  38 C0 00 04 */	li r6, 4
/* 802FE0E0  38 E0 00 00 */	li r7, 0
/* 802FE0E4  48 05 D4 E1 */	bl GXSetVtxAttrFmt
/* 802FE0E8  38 60 00 00 */	li r3, 0
/* 802FE0EC  38 80 00 09 */	li r4, 9
/* 802FE0F0  38 A0 00 01 */	li r5, 1
/* 802FE0F4  38 C0 00 04 */	li r6, 4
/* 802FE0F8  38 E0 00 00 */	li r7, 0
/* 802FE0FC  48 05 D4 C9 */	bl GXSetVtxAttrFmt
/* 802FE100  38 60 00 80 */	li r3, 0x80
/* 802FE104  38 80 00 00 */	li r4, 0
/* 802FE108  38 A0 00 04 */	li r5, 4
/* 802FE10C  48 05 E6 59 */	bl GXBegin
/* 802FE110  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802FE114  FC 20 00 1E */	fctiwz f1, f0
/* 802FE118  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 802FE11C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802FE120  7C 00 07 34 */	extsh r0, r0
/* 802FE124  C8 82 C8 70 */	lfd f4, lit_2021(r2)
/* 802FE128  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE12C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE130  3C 80 43 30 */	lis r4, 0x4330
/* 802FE134  90 81 00 20 */	stw r4, 0x20(r1)
/* 802FE138  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FE13C  EC 40 20 28 */	fsubs f2, f0, f4
/* 802FE140  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802FE144  FC 60 00 1E */	fctiwz f3, f0
/* 802FE148  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 802FE14C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802FE150  7C 00 07 34 */	extsh r0, r0
/* 802FE154  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE158  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FE15C  90 81 00 30 */	stw r4, 0x30(r1)
/* 802FE160  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802FE164  EC 00 20 28 */	fsubs f0, f0, f4
/* 802FE168  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802FE16C  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 802FE170  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 802FE174  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE178  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE17C  80 01 00 08 */	lwz r0, 8(r1)
/* 802FE180  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE184  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FE188  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FE18C  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 802FE190  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802FE194  7C 00 07 34 */	extsh r0, r0
/* 802FE198  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE19C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FE1A0  90 81 00 40 */	stw r4, 0x40(r1)
/* 802FE1A4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802FE1A8  EC 20 20 28 */	fsubs f1, f0, f4
/* 802FE1AC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802FE1B0  FC 40 00 1E */	fctiwz f2, f0
/* 802FE1B4  D8 41 00 48 */	stfd f2, 0x48(r1)
/* 802FE1B8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802FE1BC  7C 00 07 34 */	extsh r0, r0
/* 802FE1C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE1C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FE1C8  90 81 00 50 */	stw r4, 0x50(r1)
/* 802FE1CC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802FE1D0  EC 00 20 28 */	fsubs f0, f0, f4
/* 802FE1D4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE1D8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802FE1DC  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE1E0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE1E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802FE1E8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE1EC  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FE1F0  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FE1F4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802FE1F8  FC 20 00 1E */	fctiwz f1, f0
/* 802FE1FC  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 802FE200  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 802FE204  7C 00 07 34 */	extsh r0, r0
/* 802FE208  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE20C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FE210  90 81 00 60 */	stw r4, 0x60(r1)
/* 802FE214  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 802FE218  EC A0 20 28 */	fsubs f5, f0, f4
/* 802FE21C  D8 41 00 68 */	stfd f2, 0x68(r1)
/* 802FE220  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 802FE224  7C 00 07 34 */	extsh r0, r0
/* 802FE228  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE22C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802FE230  90 81 00 70 */	stw r4, 0x70(r1)
/* 802FE234  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 802FE238  EC 00 20 28 */	fsubs f0, f0, f4
/* 802FE23C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE240  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 802FE244  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE248  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE250  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE254  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FE258  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 802FE25C  D8 21 00 78 */	stfd f1, 0x78(r1)
/* 802FE260  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 802FE264  7C 00 07 34 */	extsh r0, r0
/* 802FE268  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE26C  90 01 00 84 */	stw r0, 0x84(r1)
/* 802FE270  90 81 00 80 */	stw r4, 0x80(r1)
/* 802FE274  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 802FE278  EC 20 20 28 */	fsubs f1, f0, f4
/* 802FE27C  D8 61 00 88 */	stfd f3, 0x88(r1)
/* 802FE280  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 802FE284  7C 00 07 34 */	extsh r0, r0
/* 802FE288  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FE28C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802FE290  90 81 00 90 */	stw r4, 0x90(r1)
/* 802FE294  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 802FE298  EC 00 20 28 */	fsubs f0, f0, f4
/* 802FE29C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE2A0  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802FE2A4  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE2A8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE2AC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802FE2B0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE2B4  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FE2B8  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 802FE2BC  38 60 00 00 */	li r3, 0
/* 802FE2C0  38 80 00 09 */	li r4, 9
/* 802FE2C4  38 A0 00 01 */	li r5, 1
/* 802FE2C8  38 C0 00 03 */	li r6, 3
/* 802FE2CC  38 E0 00 00 */	li r7, 0
/* 802FE2D0  48 05 D2 F5 */	bl GXSetVtxAttrFmt
/* 802FE2D4  38 60 00 00 */	li r3, 0
/* 802FE2D8  38 80 00 0D */	li r4, 0xd
/* 802FE2DC  38 A0 00 01 */	li r5, 1
/* 802FE2E0  38 C0 00 02 */	li r6, 2
/* 802FE2E4  38 E0 00 0F */	li r7, 0xf
/* 802FE2E8  48 05 D2 DD */	bl GXSetVtxAttrFmt
/* 802FE2EC  38 60 00 00 */	li r3, 0
/* 802FE2F0  48 05 DB 0D */	bl GXSetNumTexGens
/* 802FE2F4  38 60 00 01 */	li r3, 1
/* 802FE2F8  48 06 15 99 */	bl GXSetNumTevStages
/* 802FE2FC  38 60 00 00 */	li r3, 0
/* 802FE300  38 80 00 04 */	li r4, 4
/* 802FE304  48 06 0E 95 */	bl GXSetTevOp
/* 802FE308  38 60 00 00 */	li r3, 0
/* 802FE30C  38 80 00 FF */	li r4, 0xff
/* 802FE310  38 A0 00 FF */	li r5, 0xff
/* 802FE314  38 C0 00 04 */	li r6, 4
/* 802FE318  48 06 13 DD */	bl GXSetTevOrder
/* 802FE31C  38 60 00 04 */	li r3, 4
/* 802FE320  38 80 00 00 */	li r4, 0
/* 802FE324  38 A0 00 00 */	li r5, 0
/* 802FE328  38 C0 00 01 */	li r6, 1
/* 802FE32C  38 E0 00 00 */	li r7, 0
/* 802FE330  39 00 00 00 */	li r8, 0
/* 802FE334  39 20 00 02 */	li r9, 2
/* 802FE338  48 05 F8 35 */	bl GXSetChanCtrl
/* 802FE33C  38 60 00 0D */	li r3, 0xd
/* 802FE340  38 80 00 00 */	li r4, 0
/* 802FE344  48 05 CB 75 */	bl GXSetVtxDesc
lbl_802FE348:
/* 802FE348  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 802FE34C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 802FE350  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 802FE354  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 802FE358  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 802FE35C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 802FE360  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 802FE364  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 802FE368  39 61 00 B0 */	addi r11, r1, 0xb0
/* 802FE36C  48 06 3E B9 */	bl _restgpr_28
/* 802FE370  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 802FE374  7C 08 03 A6 */	mtlr r0
/* 802FE378  38 21 00 F0 */	addi r1, r1, 0xf0
/* 802FE37C  4E 80 00 20 */	blr 
