lbl_80816A88:
/* 80816A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80816A8C  7C 08 02 A6 */	mflr r0
/* 80816A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80816A94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80816A98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80816A9C  7C 7E 1B 78 */	mr r30, r3
/* 80816AA0  3C 80 80 82 */	lis r4, lit_3791@ha
/* 80816AA4  3B E4 18 AC */	addi r31, r4, lit_3791@l
/* 80816AA8  48 00 13 D5 */	bl setRockDamageEffect__9daE_YMB_cFv
/* 80816AAC  80 7E 06 F4 */	lwz r3, 0x6f4(r30)
/* 80816AB0  38 03 00 01 */	addi r0, r3, 1
/* 80816AB4  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 80816AB8  80 1E 06 F4 */	lwz r0, 0x6f4(r30)
/* 80816ABC  2C 00 00 06 */	cmpwi r0, 6
/* 80816AC0  40 81 00 0C */	ble lbl_80816ACC
/* 80816AC4  38 00 00 00 */	li r0, 0
/* 80816AC8  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_80816ACC:
/* 80816ACC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80816AD0  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 80816AD4  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 80816AD8  38 A0 00 20 */	li r5, 0x20
/* 80816ADC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80816AE0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80816AE4  7D 89 03 A6 */	mtctr r12
/* 80816AE8  4E 80 04 21 */	bctrl 
/* 80816AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80816AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80816AF4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80816AF8  38 80 00 03 */	li r4, 3
/* 80816AFC  7F C5 F3 78 */	mr r5, r30
/* 80816B00  38 DE 05 38 */	addi r6, r30, 0x538
/* 80816B04  38 E0 00 00 */	li r7, 0
/* 80816B08  39 00 00 00 */	li r8, 0
/* 80816B0C  39 20 00 00 */	li r9, 0
/* 80816B10  4B 83 57 08 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80816B14  38 00 00 03 */	li r0, 3
/* 80816B18  90 1E 06 F8 */	stw r0, 0x6f8(r30)
/* 80816B1C  7F C3 F3 78 */	mr r3, r30
/* 80816B20  38 80 00 0C */	li r4, 0xc
/* 80816B24  38 A0 00 00 */	li r5, 0
/* 80816B28  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80816B2C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80816B30  4B FF FE 4D */	bl setBck__9daE_YMB_cFiUcff
/* 80816B34  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80816B38  D0 21 00 08 */	stfs f1, 8(r1)
/* 80816B3C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80816B40  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80816B44  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80816B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80816B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80816B50  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80816B54  38 80 00 03 */	li r4, 3
/* 80816B58  38 A0 00 1F */	li r5, 0x1f
/* 80816B5C  38 C1 00 08 */	addi r6, r1, 8
/* 80816B60  4B 85 8E C4 */	b StartShock__12dVibration_cFii4cXyz
/* 80816B64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80816B68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80816B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80816B70  7C 08 03 A6 */	mtlr r0
/* 80816B74  38 21 00 20 */	addi r1, r1, 0x20
/* 80816B78  4E 80 00 20 */	blr 
