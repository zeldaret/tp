lbl_804BC248:
/* 804BC248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BC24C  7C 08 02 A6 */	mflr r0
/* 804BC250  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BC254  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC258  4B EA 5F 80 */	b _savegpr_28
/* 804BC25C  7C 7D 1B 78 */	mr r29, r3
/* 804BC260  7C 9E 23 78 */	mr r30, r4
/* 804BC264  4B E7 01 60 */	b calc__14J3DMaterialAnmCFP11J3DMaterial
/* 804BC268  3B E0 00 00 */	li r31, 0
/* 804BC26C  3B 80 00 00 */	li r28, 0
lbl_804BC270:
/* 804BC270  38 7C 00 14 */	addi r3, r28, 0x14
/* 804BC274  7C 7D 1A 14 */	add r3, r29, r3
/* 804BC278  A0 03 00 02 */	lhz r0, 2(r3)
/* 804BC27C  28 00 00 00 */	cmplwi r0, 0
/* 804BC280  41 82 00 C4 */	beq lbl_804BC344
/* 804BC284  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 804BC288  7F E4 FB 78 */	mr r4, r31
/* 804BC28C  81 83 00 00 */	lwz r12, 0(r3)
/* 804BC290  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 804BC294  7D 89 03 A6 */	mtctr r12
/* 804BC298  4E 80 04 21 */	bctrl 
/* 804BC29C  3C 80 80 4C */	lis r4, struct_804C6CD8+0x1@ha
/* 804BC2A0  88 A4 6C D9 */	lbz r5, struct_804C6CD8+0x1@l(r4)
/* 804BC2A4  28 05 00 00 */	cmplwi r5, 0
/* 804BC2A8  41 82 00 6C */	beq lbl_804BC314
/* 804BC2AC  3C 80 80 4C */	lis r4, lit_4303@ha
/* 804BC2B0  C0 44 65 84 */	lfs f2, lit_4303@l(r4)
/* 804BC2B4  38 05 00 01 */	addi r0, r5, 1
/* 804BC2B8  3C 80 80 4C */	lis r4, lit_4305@ha
/* 804BC2BC  C8 24 65 88 */	lfd f1, lit_4305@l(r4)
/* 804BC2C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BC2C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BC2C8  3C 00 43 30 */	lis r0, 0x4330
/* 804BC2CC  90 01 00 08 */	stw r0, 8(r1)
/* 804BC2D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804BC2D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BC2D8  EC 62 00 24 */	fdivs f3, f2, f0
/* 804BC2DC  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 804BC2E0  EC 42 18 28 */	fsubs f2, f2, f3
/* 804BC2E4  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804BC2E8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BC2EC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804BC2F0  EC 01 00 2A */	fadds f0, f1, f0
/* 804BC2F4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804BC2F8  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 804BC2FC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804BC300  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 804BC304  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804BC308  EC 01 00 2A */	fadds f0, f1, f0
/* 804BC30C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804BC310  48 00 00 24 */	b lbl_804BC334
lbl_804BC314:
/* 804BC314  3C 80 80 4C */	lis r4, struct_804C6CD8+0x0@ha
/* 804BC318  88 04 6C D8 */	lbz r0, struct_804C6CD8+0x0@l(r4)
/* 804BC31C  28 00 00 00 */	cmplwi r0, 0
/* 804BC320  41 82 00 14 */	beq lbl_804BC334
/* 804BC324  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 804BC328  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804BC32C  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804BC330  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_804BC334:
/* 804BC334  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BC338  D0 1D 00 F4 */	stfs f0, 0xf4(r29)
/* 804BC33C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 804BC340  D0 1D 00 F8 */	stfs f0, 0xf8(r29)
lbl_804BC344:
/* 804BC344  3B FF 00 01 */	addi r31, r31, 1
/* 804BC348  28 1F 00 08 */	cmplwi r31, 8
/* 804BC34C  3B 9C 00 08 */	addi r28, r28, 8
/* 804BC350  41 80 FF 20 */	blt lbl_804BC270
/* 804BC354  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC358  4B EA 5E CC */	b _restgpr_28
/* 804BC35C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BC360  7C 08 03 A6 */	mtlr r0
/* 804BC364  38 21 00 20 */	addi r1, r1, 0x20
/* 804BC368  4E 80 00 20 */	blr 
