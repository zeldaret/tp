lbl_802155B8:
/* 802155B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802155BC  7C 08 02 A6 */	mflr r0
/* 802155C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802155C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802155C8  48 14 CC 0D */	bl _savegpr_27
/* 802155CC  7C 7B 1B 78 */	mr r27, r3
/* 802155D0  7C 9C 23 78 */	mr r28, r4
/* 802155D4  3B E0 00 00 */	li r31, 0
/* 802155D8  3B C0 00 00 */	li r30, 0
/* 802155DC  3B A0 00 00 */	li r29, 0
/* 802155E0  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 802155E4  48 04 02 45 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802155E8  C0 1B 07 B0 */	lfs f0, 0x7b0(r27)
/* 802155EC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802155F0  40 82 00 0C */	bne lbl_802155FC
/* 802155F4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802155F8  41 82 00 14 */	beq lbl_8021560C
lbl_802155FC:
/* 802155FC  80 7B 01 CC */	lwz r3, 0x1cc(r27)
/* 80215600  48 04 02 29 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215604  D0 3B 07 B0 */	stfs f1, 0x7b0(r27)
/* 80215608  3B E0 00 01 */	li r31, 1
lbl_8021560C:
/* 8021560C  C0 1B 07 B4 */	lfs f0, 0x7b4(r27)
/* 80215610  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80215614  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80215618  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 8021561C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215620  40 82 00 0C */	bne lbl_8021562C
/* 80215624  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215628  41 82 00 0C */	beq lbl_80215634
lbl_8021562C:
/* 8021562C  D0 3B 07 B4 */	stfs f1, 0x7b4(r27)
/* 80215630  3B C0 00 01 */	li r30, 1
lbl_80215634:
/* 80215634  C0 1B 07 B8 */	lfs f0, 0x7b8(r27)
/* 80215638  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021563C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80215640  C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 80215644  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215648  40 82 00 0C */	bne lbl_80215654
/* 8021564C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215650  41 82 00 0C */	beq lbl_8021565C
lbl_80215654:
/* 80215654  D0 3B 07 B8 */	stfs f1, 0x7b8(r27)
/* 80215658  3B A0 00 01 */	li r29, 1
lbl_8021565C:
/* 8021565C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80215660  40 82 00 14 */	bne lbl_80215674
/* 80215664  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80215668  40 82 00 0C */	bne lbl_80215674
/* 8021566C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215670  41 82 00 18 */	beq lbl_80215688
lbl_80215674:
/* 80215674  80 7B 01 D8 */	lwz r3, 0x1d8(r27)
/* 80215678  C0 3B 07 B4 */	lfs f1, 0x7b4(r27)
/* 8021567C  C0 1B 07 B0 */	lfs f0, 0x7b0(r27)
/* 80215680  EC 21 00 32 */	fmuls f1, f1, f0
/* 80215684  48 04 01 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80215688:
/* 80215688  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8021568C  40 82 00 14 */	bne lbl_802156A0
/* 80215690  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80215694  40 82 00 0C */	bne lbl_802156A0
/* 80215698  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8021569C  41 82 00 2C */	beq lbl_802156C8
lbl_802156A0:
/* 802156A0  80 7B 01 D4 */	lwz r3, 0x1d4(r27)
/* 802156A4  C0 3B 07 B8 */	lfs f1, 0x7b8(r27)
/* 802156A8  C0 1B 07 B0 */	lfs f0, 0x7b0(r27)
/* 802156AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 802156B0  48 04 01 21 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802156B4  80 7B 01 DC */	lwz r3, 0x1dc(r27)
/* 802156B8  C0 3B 07 B8 */	lfs f1, 0x7b8(r27)
/* 802156BC  C0 1B 07 B0 */	lfs f0, 0x7b0(r27)
/* 802156C0  EC 21 00 32 */	fmuls f1, f1, f0
/* 802156C4  48 04 01 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802156C8:
/* 802156C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802156CC  48 14 CB 55 */	bl _restgpr_27
/* 802156D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802156D4  7C 08 03 A6 */	mtlr r0
/* 802156D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802156DC  4E 80 00 20 */	blr 
