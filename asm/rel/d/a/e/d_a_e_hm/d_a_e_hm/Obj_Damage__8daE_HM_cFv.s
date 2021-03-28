lbl_806E39E8:
/* 806E39E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E39EC  7C 08 02 A6 */	mflr r0
/* 806E39F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E39F4  39 61 00 20 */	addi r11, r1, 0x20
/* 806E39F8  4B C7 E7 E4 */	b _savegpr_29
/* 806E39FC  7C 7F 1B 78 */	mr r31, r3
/* 806E3A00  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E3A04  3B C3 59 20 */	addi r30, r3, lit_3791@l
/* 806E3A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E3A0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E3A10  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806E3A14  A8 1F 05 C2 */	lha r0, 0x5c2(r31)
/* 806E3A18  2C 00 00 00 */	cmpwi r0, 0
/* 806E3A1C  40 81 00 30 */	ble lbl_806E3A4C
/* 806E3A20  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E3A24  81 9F 09 64 */	lwz r12, 0x964(r31)
/* 806E3A28  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806E3A2C  7D 89 03 A6 */	mtctr r12
/* 806E3A30  4E 80 04 21 */	bctrl 
/* 806E3A34  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E3A38  81 9F 09 64 */	lwz r12, 0x964(r31)
/* 806E3A3C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806E3A40  7D 89 03 A6 */	mtctr r12
/* 806E3A44  4E 80 04 21 */	bctrl 
/* 806E3A48  48 00 01 84 */	b lbl_806E3BCC
lbl_806E3A4C:
/* 806E3A4C  38 7F 09 08 */	addi r3, r31, 0x908
/* 806E3A50  4B 99 FD E0 */	b Move__10dCcD_GSttsFv
/* 806E3A54  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E3A58  4B 9A 08 68 */	b ChkAtHit__12dCcD_GObjInfFv
/* 806E3A5C  28 03 00 00 */	cmplwi r3, 0
/* 806E3A60  41 82 00 80 */	beq lbl_806E3AE0
/* 806E3A64  A8 1F 05 D2 */	lha r0, 0x5d2(r31)
/* 806E3A68  2C 00 00 01 */	cmpwi r0, 1
/* 806E3A6C  41 82 00 0C */	beq lbl_806E3A78
/* 806E3A70  2C 00 00 03 */	cmpwi r0, 3
/* 806E3A74  40 82 00 6C */	bne lbl_806E3AE0
lbl_806E3A78:
/* 806E3A78  38 00 00 0A */	li r0, 0xa
/* 806E3A7C  B0 1F 05 C2 */	sth r0, 0x5c2(r31)
/* 806E3A80  7F A3 EB 78 */	mr r3, r29
/* 806E3A84  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806E3A88  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806E3A8C  7D 89 03 A6 */	mtctr r12
/* 806E3A90  4E 80 04 21 */	bctrl 
/* 806E3A94  2C 03 00 00 */	cmpwi r3, 0
/* 806E3A98  40 82 00 48 */	bne lbl_806E3AE0
/* 806E3A9C  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 806E3AA0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 806E3AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E3AA8  40 81 00 38 */	ble lbl_806E3AE0
/* 806E3AAC  7F A3 EB 78 */	mr r3, r29
/* 806E3AB0  3C 80 80 6E */	lis r4, data_806E5C80@ha
/* 806E3AB4  38 84 5C 80 */	addi r4, r4, data_806E5C80@l
/* 806E3AB8  A8 84 00 00 */	lha r4, 0(r4)
/* 806E3ABC  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 806E3AC0  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 806E3AC4  38 A0 00 01 */	li r5, 1
/* 806E3AC8  38 C0 00 00 */	li r6, 0
/* 806E3ACC  38 E0 00 00 */	li r7, 0
/* 806E3AD0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806E3AD4  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 806E3AD8  7D 89 03 A6 */	mtctr r12
/* 806E3ADC  4E 80 04 21 */	bctrl 
lbl_806E3AE0:
/* 806E3AE0  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 806E3AE4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806E3AE8  41 82 00 18 */	beq lbl_806E3B00
/* 806E3AEC  38 00 00 01 */	li r0, 1
/* 806E3AF0  98 1F 06 0D */	stb r0, 0x60d(r31)
/* 806E3AF4  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 806E3AF8  7F E3 FB 78 */	mr r3, r31
/* 806E3AFC  4B FF FC F9 */	bl MemberClear__8daE_HM_cFv
lbl_806E3B00:
/* 806E3B00  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E3B04  4B 9A 09 5C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806E3B08  28 03 00 00 */	cmplwi r3, 0
/* 806E3B0C  41 82 00 C0 */	beq lbl_806E3BCC
/* 806E3B10  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E3B14  4B 9A 09 E4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806E3B18  90 7F 0A 60 */	stw r3, 0xa60(r31)
/* 806E3B1C  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E3B20  4B 9A 09 D8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806E3B24  7C 7E 1B 78 */	mr r30, r3
/* 806E3B28  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806E3B2C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806E3B30  40 82 00 0C */	bne lbl_806E3B3C
/* 806E3B34  7F E3 FB 78 */	mr r3, r31
/* 806E3B38  4B FF FD 4D */	bl At_Check__8daE_HM_cFv
lbl_806E3B3C:
/* 806E3B3C  38 00 00 0A */	li r0, 0xa
/* 806E3B40  B0 1F 05 C2 */	sth r0, 0x5c2(r31)
/* 806E3B44  7F E3 FB 78 */	mr r3, r31
/* 806E3B48  4B FF FC AD */	bl MemberClear__8daE_HM_cFv
/* 806E3B4C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 806E3B50  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 806E3B54  41 82 00 10 */	beq lbl_806E3B64
/* 806E3B58  38 00 00 00 */	li r0, 0
/* 806E3B5C  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 806E3B60  48 00 00 6C */	b lbl_806E3BCC
lbl_806E3B64:
/* 806E3B64  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 806E3B68  41 82 00 10 */	beq lbl_806E3B78
/* 806E3B6C  38 00 00 05 */	li r0, 5
/* 806E3B70  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 806E3B74  48 00 00 58 */	b lbl_806E3BCC
lbl_806E3B78:
/* 806E3B78  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 806E3B7C  41 82 00 48 */	beq lbl_806E3BC4
/* 806E3B80  38 7F 06 30 */	addi r3, r31, 0x630
/* 806E3B84  3C 80 00 04 */	lis r4, 4
/* 806E3B88  38 A0 00 1F */	li r5, 0x1f
/* 806E3B8C  81 9F 06 30 */	lwz r12, 0x630(r31)
/* 806E3B90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806E3B94  7D 89 03 A6 */	mtctr r12
/* 806E3B98  4E 80 04 21 */	bctrl 
/* 806E3B9C  38 DF 09 FC */	addi r6, r31, 0x9fc
/* 806E3BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E3BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E3BA8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806E3BAC  38 80 00 03 */	li r4, 3
/* 806E3BB0  7F E5 FB 78 */	mr r5, r31
/* 806E3BB4  38 E0 00 00 */	li r7, 0
/* 806E3BB8  39 00 00 00 */	li r8, 0
/* 806E3BBC  39 20 00 00 */	li r9, 0
/* 806E3BC0  4B 96 86 58 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_806E3BC4:
/* 806E3BC4  38 00 00 01 */	li r0, 1
/* 806E3BC8  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
lbl_806E3BCC:
/* 806E3BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 806E3BD0  4B C7 E6 58 */	b _restgpr_29
/* 806E3BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E3BD8  7C 08 03 A6 */	mtlr r0
/* 806E3BDC  38 21 00 20 */	addi r1, r1, 0x20
/* 806E3BE0  4E 80 00 20 */	blr 
