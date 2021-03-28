lbl_80C9FE28:
/* 80C9FE28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C9FE2C  7C 08 02 A6 */	mflr r0
/* 80C9FE30  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C9FE34  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C9FE38  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C9FE3C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80C9FE40  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80C9FE44  39 61 00 50 */	addi r11, r1, 0x50
/* 80C9FE48  4B 6C 23 78 */	b _savegpr_22
/* 80C9FE4C  7C 76 1B 78 */	mr r22, r3
/* 80C9FE50  7C 97 23 78 */	mr r23, r4
/* 80C9FE54  7C B8 2B 78 */	mr r24, r5
/* 80C9FE58  3C 60 80 CA */	lis r3, REMOVE_ISU_IDX__14daObjNagaisu_c@ha
/* 80C9FE5C  3B 63 03 5C */	addi r27, r3, REMOVE_ISU_IDX__14daObjNagaisu_c@l
/* 80C9FE60  88 16 02 F0 */	lbz r0, 0x2f0(r22)
/* 80C9FE64  28 00 00 00 */	cmplwi r0, 0
/* 80C9FE68  40 82 00 C4 */	bne lbl_80C9FF2C
/* 80C9FE6C  3B 20 00 00 */	li r25, 0
/* 80C9FE70  3B E0 00 00 */	li r31, 0
/* 80C9FE74  3B C0 00 00 */	li r30, 0
/* 80C9FE78  C3 DB 00 7C */	lfs f30, 0x7c(r27)
/* 80C9FE7C  3B 9B 00 74 */	addi r28, r27, 0x74
/* 80C9FE80  CB FB 00 88 */	lfd f31, 0x88(r27)
/* 80C9FE84  3F A0 43 30 */	lis r29, 0x4330
lbl_80C9FE88:
/* 80C9FE88  7F 56 F2 14 */	add r26, r22, r30
/* 80C9FE8C  38 7A 00 44 */	addi r3, r26, 0x44
/* 80C9FE90  38 9B 00 1C */	addi r4, r27, 0x1c
/* 80C9FE94  4B 3E 4A 20 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C9FE98  93 1A 00 88 */	stw r24, 0x88(r26)
/* 80C9FE9C  C0 16 00 40 */	lfs f0, 0x40(r22)
/* 80C9FEA0  EC 7E 00 2A */	fadds f3, f30, f0
/* 80C9FEA4  C0 56 00 3C */	lfs f2, 0x3c(r22)
/* 80C9FEA8  C0 36 00 38 */	lfs f1, 0x38(r22)
/* 80C9FEAC  7C 1C F8 2E */	lwzx r0, r28, r31
/* 80C9FEB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C9FEB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C9FEB8  93 A1 00 18 */	stw r29, 0x18(r1)
/* 80C9FEBC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C9FEC0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C9FEC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9FEC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C9FECC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C9FED0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80C9FED4  3B 5A 01 68 */	addi r26, r26, 0x168
/* 80C9FED8  7F 43 D3 78 */	mr r3, r26
/* 80C9FEDC  38 81 00 08 */	addi r4, r1, 8
/* 80C9FEE0  4B 5C F2 FC */	b SetC__8cM3dGCylFRC4cXyz
/* 80C9FEE4  7F 43 D3 78 */	mr r3, r26
/* 80C9FEE8  C0 3B 00 80 */	lfs f1, 0x80(r27)
/* 80C9FEEC  4B 5C F3 0C */	b SetH__8cM3dGCylFf
/* 80C9FEF0  7F 43 D3 78 */	mr r3, r26
/* 80C9FEF4  C0 3B 00 84 */	lfs f1, 0x84(r27)
/* 80C9FEF8  4B 5C F3 08 */	b SetR__8cM3dGCylFf
/* 80C9FEFC  3B 39 00 01 */	addi r25, r25, 1
/* 80C9FF00  2C 19 00 02 */	cmpwi r25, 2
/* 80C9FF04  3B FF 00 04 */	addi r31, r31, 4
/* 80C9FF08  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80C9FF0C  41 80 FF 7C */	blt lbl_80C9FE88
/* 80C9FF10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9FF14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9FF18  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9FF1C  80 96 02 EC */	lwz r4, 0x2ec(r22)
/* 80C9FF20  7E E5 BB 78 */	mr r5, r23
/* 80C9FF24  4B 3D 4A E4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9FF28  54 60 06 3F */	clrlwi. r0, r3, 0x18
lbl_80C9FF2C:
/* 80C9FF2C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C9FF30  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C9FF34  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80C9FF38  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80C9FF3C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C9FF40  4B 6C 22 CC */	b _restgpr_22
/* 80C9FF44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C9FF48  7C 08 03 A6 */	mtlr r0
/* 80C9FF4C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C9FF50  4E 80 00 20 */	blr 
