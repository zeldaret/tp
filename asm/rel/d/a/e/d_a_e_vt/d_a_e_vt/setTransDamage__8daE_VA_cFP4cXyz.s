lbl_807C3AB0:
/* 807C3AB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C3AB4  7C 08 02 A6 */	mflr r0
/* 807C3AB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C3ABC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807C3AC0  7C 7F 1B 78 */	mr r31, r3
/* 807C3AC4  7C 86 23 78 */	mr r6, r4
/* 807C3AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C3ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C3AD0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807C3AD4  88 1F 13 8F */	lbz r0, 0x138f(r31)
/* 807C3AD8  28 00 00 04 */	cmplwi r0, 4
/* 807C3ADC  38 80 00 01 */	li r4, 1
/* 807C3AE0  41 80 00 08 */	blt lbl_807C3AE8
/* 807C3AE4  38 80 00 03 */	li r4, 3
lbl_807C3AE8:
/* 807C3AE8  7F E5 FB 78 */	mr r5, r31
/* 807C3AEC  38 E0 00 00 */	li r7, 0
/* 807C3AF0  39 00 00 00 */	li r8, 0
/* 807C3AF4  39 20 00 00 */	li r9, 0
/* 807C3AF8  4B 88 87 20 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807C3AFC  3C 60 80 7D */	lis r3, lit_3908@ha
/* 807C3B00  C0 23 EC AC */	lfs f1, lit_3908@l(r3)
/* 807C3B04  D0 21 00 08 */	stfs f1, 8(r1)
/* 807C3B08  3C 60 80 7D */	lis r3, lit_3909@ha
/* 807C3B0C  C0 03 EC B0 */	lfs f0, lit_3909@l(r3)
/* 807C3B10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807C3B14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807C3B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C3B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C3B20  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C3B24  38 80 00 04 */	li r4, 4
/* 807C3B28  38 A0 00 1F */	li r5, 0x1f
/* 807C3B2C  38 C1 00 08 */	addi r6, r1, 8
/* 807C3B30  4B 8A BE F4 */	b StartShock__12dVibration_cFii4cXyz
/* 807C3B34  7F E3 FB 78 */	mr r3, r31
/* 807C3B38  38 80 00 08 */	li r4, 8
/* 807C3B3C  38 A0 00 00 */	li r5, 0
/* 807C3B40  4B FF FD D9 */	bl setActionMode__8daE_VA_cFii
/* 807C3B44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807C3B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C3B4C  7C 08 03 A6 */	mtlr r0
/* 807C3B50  38 21 00 20 */	addi r1, r1, 0x20
/* 807C3B54  4E 80 00 20 */	blr 
