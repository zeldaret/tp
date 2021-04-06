lbl_80CACBA8:
/* 80CACBA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CACBAC  7C 08 02 A6 */	mflr r0
/* 80CACBB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CACBB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80CACBB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80CACBBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80CACBC0  4B 6B 56 11 */	bl _savegpr_26
/* 80CACBC4  7C 7E 1B 78 */	mr r30, r3
/* 80CACBC8  3C 60 80 CB */	lis r3, l_cull_box@ha /* 0x80CAD1B8@ha */
/* 80CACBCC  3B E3 D1 B8 */	addi r31, r3, l_cull_box@l /* 0x80CAD1B8@l */
/* 80CACBD0  38 00 00 00 */	li r0, 0
/* 80CACBD4  90 1E 0A 14 */	stw r0, 0xa14(r30)
/* 80CACBD8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CACBDC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CACBE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CACBE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CACBE8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CACBEC  7C 05 07 74 */	extsb r5, r0
/* 80CACBF0  4B 38 87 71 */	bl isSwitch__10dSv_info_cCFii
/* 80CACBF4  2C 03 00 00 */	cmpwi r3, 0
/* 80CACBF8  41 82 00 10 */	beq lbl_80CACC08
/* 80CACBFC  38 00 00 01 */	li r0, 1
/* 80CACC00  98 1E 0A 10 */	stb r0, 0xa10(r30)
/* 80CACC04  48 00 00 0C */	b lbl_80CACC10
lbl_80CACC08:
/* 80CACC08  38 00 00 00 */	li r0, 0
/* 80CACC0C  98 1E 0A 10 */	stb r0, 0xa10(r30)
lbl_80CACC10:
/* 80CACC10  3B 40 00 00 */	li r26, 0
/* 80CACC14  3B A0 00 00 */	li r29, 0
/* 80CACC18  3B 80 00 00 */	li r28, 0
/* 80CACC1C  C3 FF 00 1C */	lfs f31, 0x1c(r31)
lbl_80CACC20:
/* 80CACC20  38 7C 06 00 */	addi r3, r28, 0x600
/* 80CACC24  7C 7E 1A 14 */	add r3, r30, r3
/* 80CACC28  7F 7E EA 14 */	add r27, r30, r29
/* 80CACC2C  80 9B 05 D8 */	lwz r4, 0x5d8(r27)
/* 80CACC30  38 84 00 24 */	addi r4, r4, 0x24
/* 80CACC34  4B 69 98 7D */	bl PSMTXCopy
/* 80CACC38  D3 FB 07 E0 */	stfs f31, 0x7e0(r27)
/* 80CACC3C  88 1E 0A 10 */	lbz r0, 0xa10(r30)
/* 80CACC40  28 00 00 00 */	cmplwi r0, 0
/* 80CACC44  41 82 00 34 */	beq lbl_80CACC78
/* 80CACC48  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80CACC4C  38 1A 00 01 */	addi r0, r26, 1
/* 80CACC50  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80CACC54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CACC58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CACC5C  3C 00 43 30 */	lis r0, 0x4330
/* 80CACC60  90 01 00 08 */	stw r0, 8(r1)
/* 80CACC64  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CACC68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CACC6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CACC70  D0 1B 08 08 */	stfs f0, 0x808(r27)
/* 80CACC74  48 00 00 08 */	b lbl_80CACC7C
lbl_80CACC78:
/* 80CACC78  D3 FB 08 08 */	stfs f31, 0x808(r27)
lbl_80CACC7C:
/* 80CACC7C  3B 5A 00 01 */	addi r26, r26, 1
/* 80CACC80  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80CACC84  3B BD 00 04 */	addi r29, r29, 4
/* 80CACC88  3B 9C 00 30 */	addi r28, r28, 0x30
/* 80CACC8C  41 80 FF 94 */	blt lbl_80CACC20
/* 80CACC90  38 1E 06 00 */	addi r0, r30, 0x600
/* 80CACC94  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CACC98  7F C3 F3 78 */	mr r3, r30
/* 80CACC9C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CACCA0  38 9F 00 00 */	addi r4, r31, 0
/* 80CACCA4  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CACCA8  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CACCAC  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CACCB0  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CACCB4  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CACCB8  4B 36 D8 91 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CACCBC  38 60 00 01 */	li r3, 1
/* 80CACCC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80CACCC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80CACCC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CACCCC  4B 6B 55 51 */	bl _restgpr_26
/* 80CACCD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CACCD4  7C 08 03 A6 */	mtlr r0
/* 80CACCD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80CACCDC  4E 80 00 20 */	blr 
