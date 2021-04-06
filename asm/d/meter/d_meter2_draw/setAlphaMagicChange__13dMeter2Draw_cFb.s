lbl_80215380:
/* 80215380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80215384  7C 08 02 A6 */	mflr r0
/* 80215388  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021538C  39 61 00 20 */	addi r11, r1, 0x20
/* 80215390  48 14 CE 45 */	bl _savegpr_27
/* 80215394  7C 7B 1B 78 */	mr r27, r3
/* 80215398  7C 9C 23 78 */	mr r28, r4
/* 8021539C  3B E0 00 00 */	li r31, 0
/* 802153A0  3B C0 00 00 */	li r30, 0
/* 802153A4  3B A0 00 00 */	li r29, 0
/* 802153A8  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 802153AC  48 04 04 7D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802153B0  C0 1B 07 A4 */	lfs f0, 0x7a4(r27)
/* 802153B4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802153B8  40 82 00 0C */	bne lbl_802153C4
/* 802153BC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802153C0  41 82 00 14 */	beq lbl_802153D4
lbl_802153C4:
/* 802153C4  80 7B 01 CC */	lwz r3, 0x1cc(r27)
/* 802153C8  48 04 04 61 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802153CC  D0 3B 07 A4 */	stfs f1, 0x7a4(r27)
/* 802153D0  3B E0 00 01 */	li r31, 1
lbl_802153D4:
/* 802153D4  C0 1B 07 A8 */	lfs f0, 0x7a8(r27)
/* 802153D8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802153DC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802153E0  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 802153E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802153E8  40 82 00 0C */	bne lbl_802153F4
/* 802153EC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802153F0  41 82 00 0C */	beq lbl_802153FC
lbl_802153F4:
/* 802153F4  D0 3B 07 A8 */	stfs f1, 0x7a8(r27)
/* 802153F8  3B C0 00 01 */	li r30, 1
lbl_802153FC:
/* 802153FC  C0 1B 07 AC */	lfs f0, 0x7ac(r27)
/* 80215400  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80215404  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80215408  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8021540C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215410  40 82 00 0C */	bne lbl_8021541C
/* 80215414  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215418  41 82 00 0C */	beq lbl_80215424
lbl_8021541C:
/* 8021541C  D0 3B 07 AC */	stfs f1, 0x7ac(r27)
/* 80215420  3B A0 00 01 */	li r29, 1
lbl_80215424:
/* 80215424  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80215428  40 82 00 14 */	bne lbl_8021543C
/* 8021542C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80215430  40 82 00 0C */	bne lbl_8021543C
/* 80215434  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215438  41 82 00 18 */	beq lbl_80215450
lbl_8021543C:
/* 8021543C  80 7B 01 D8 */	lwz r3, 0x1d8(r27)
/* 80215440  C0 3B 07 A8 */	lfs f1, 0x7a8(r27)
/* 80215444  C0 1B 07 A4 */	lfs f0, 0x7a4(r27)
/* 80215448  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021544C  48 04 03 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80215450:
/* 80215450  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80215454  40 82 00 14 */	bne lbl_80215468
/* 80215458  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8021545C  40 82 00 0C */	bne lbl_80215468
/* 80215460  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215464  41 82 00 2C */	beq lbl_80215490
lbl_80215468:
/* 80215468  80 7B 01 D4 */	lwz r3, 0x1d4(r27)
/* 8021546C  C0 3B 07 AC */	lfs f1, 0x7ac(r27)
/* 80215470  C0 1B 07 A4 */	lfs f0, 0x7a4(r27)
/* 80215474  EC 21 00 32 */	fmuls f1, f1, f0
/* 80215478  48 04 03 59 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021547C  80 7B 01 DC */	lwz r3, 0x1dc(r27)
/* 80215480  C0 3B 07 AC */	lfs f1, 0x7ac(r27)
/* 80215484  C0 1B 07 A4 */	lfs f0, 0x7a4(r27)
/* 80215488  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021548C  48 04 03 45 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80215490:
/* 80215490  39 61 00 20 */	addi r11, r1, 0x20
/* 80215494  48 14 CD 8D */	bl _restgpr_27
/* 80215498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021549C  7C 08 03 A6 */	mtlr r0
/* 802154A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802154A4  4E 80 00 20 */	blr 
