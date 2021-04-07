lbl_807B19AC:
/* 807B19AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B19B0  7C 08 02 A6 */	mflr r0
/* 807B19B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B19B8  39 61 00 20 */	addi r11, r1, 0x20
/* 807B19BC  4B BB 08 1D */	bl _savegpr_28
/* 807B19C0  7C 7F 1B 78 */	mr r31, r3
/* 807B19C4  38 7F 09 28 */	addi r3, r31, 0x928
/* 807B19C8  4B 8D 1E 69 */	bl Move__10dCcD_GSttsFv
/* 807B19CC  3B 80 00 00 */	li r28, 0
/* 807B19D0  3B C0 00 00 */	li r30, 0
lbl_807B19D4:
/* 807B19D4  3B BE 09 48 */	addi r29, r30, 0x948
/* 807B19D8  7F BF EA 14 */	add r29, r31, r29
/* 807B19DC  7F A3 EB 78 */	mr r3, r29
/* 807B19E0  4B 8D 2A 81 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807B19E4  28 03 00 00 */	cmplwi r3, 0
/* 807B19E8  41 82 01 3C */	beq lbl_807B1B24
/* 807B19EC  7F A3 EB 78 */	mr r3, r29
/* 807B19F0  4B 8D 2B 09 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807B19F4  90 7F 0C F0 */	stw r3, 0xcf0(r31)
/* 807B19F8  7C 7F F2 14 */	add r3, r31, r30
/* 807B19FC  80 03 09 E4 */	lwz r0, 0x9e4(r3)
/* 807B1A00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B1A04  41 82 00 38 */	beq lbl_807B1A3C
/* 807B1A08  A8 1F 06 A6 */	lha r0, 0x6a6(r31)
/* 807B1A0C  2C 00 00 00 */	cmpwi r0, 0
/* 807B1A10  40 82 01 24 */	bne lbl_807B1B34
/* 807B1A14  38 00 00 06 */	li r0, 6
/* 807B1A18  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
/* 807B1A1C  7F A3 EB 78 */	mr r3, r29
/* 807B1A20  4B 8D 2A D9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807B1A24  7C 64 1B 78 */	mr r4, r3
/* 807B1A28  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 807B1A2C  38 A0 00 28 */	li r5, 0x28
/* 807B1A30  38 C0 00 00 */	li r6, 0
/* 807B1A34  4B 8D 5A E1 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807B1A38  48 00 01 28 */	b lbl_807B1B60
lbl_807B1A3C:
/* 807B1A3C  A8 1F 06 A4 */	lha r0, 0x6a4(r31)
/* 807B1A40  2C 00 00 00 */	cmpwi r0, 0
/* 807B1A44  40 82 00 F0 */	bne lbl_807B1B34
/* 807B1A48  A8 1F 06 86 */	lha r0, 0x686(r31)
/* 807B1A4C  2C 00 00 01 */	cmpwi r0, 1
/* 807B1A50  41 82 00 E4 */	beq lbl_807B1B34
/* 807B1A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B1A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B1A5C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 807B1A60  7F E3 FB 78 */	mr r3, r31
/* 807B1A64  38 9F 0C F0 */	addi r4, r31, 0xcf0
/* 807B1A68  4B 8D 61 9D */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807B1A6C  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 807B1A70  28 00 00 0A */	cmplwi r0, 0xa
/* 807B1A74  40 82 00 2C */	bne lbl_807B1AA0
/* 807B1A78  7F 83 E3 78 */	mr r3, r28
/* 807B1A7C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 807B1A80  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 807B1A84  7D 89 03 A6 */	mtctr r12
/* 807B1A88  4E 80 04 21 */	bctrl 
/* 807B1A8C  2C 03 00 00 */	cmpwi r3, 0
/* 807B1A90  41 82 00 10 */	beq lbl_807B1AA0
/* 807B1A94  38 00 00 03 */	li r0, 3
/* 807B1A98  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
/* 807B1A9C  48 00 00 0C */	b lbl_807B1AA8
lbl_807B1AA0:
/* 807B1AA0  38 00 00 0A */	li r0, 0xa
/* 807B1AA4  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
lbl_807B1AA8:
/* 807B1AA8  38 60 00 03 */	li r3, 3
/* 807B1AAC  38 80 FF FF */	li r4, -1
/* 807B1AB0  4B 87 BF ED */	bl dComIfGs_onOneZoneSwitch__Fii
/* 807B1AB4  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807B1AB8  2C 00 00 00 */	cmpwi r0, 0
/* 807B1ABC  41 81 00 40 */	bgt lbl_807B1AFC
/* 807B1AC0  38 00 00 19 */	li r0, 0x19
/* 807B1AC4  B0 1F 06 86 */	sth r0, 0x686(r31)
/* 807B1AC8  38 00 00 00 */	li r0, 0
/* 807B1ACC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807B1AD0  88 1F 06 8A */	lbz r0, 0x68a(r31)
/* 807B1AD4  60 00 00 04 */	ori r0, r0, 4
/* 807B1AD8  98 1F 06 8A */	stb r0, 0x68a(r31)
/* 807B1ADC  38 00 00 0A */	li r0, 0xa
/* 807B1AE0  B0 1F 0D 2C */	sth r0, 0xd2c(r31)
/* 807B1AE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807B1AE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807B1AEC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B1AF0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807B1AF4  4B AF DD 91 */	bl subBgmStop__8Z2SeqMgrFv
/* 807B1AF8  48 00 00 3C */	b lbl_807B1B34
lbl_807B1AFC:
/* 807B1AFC  A8 1F 06 86 */	lha r0, 0x686(r31)
/* 807B1B00  2C 00 00 03 */	cmpwi r0, 3
/* 807B1B04  41 82 00 0C */	beq lbl_807B1B10
/* 807B1B08  2C 00 00 14 */	cmpwi r0, 0x14
/* 807B1B0C  40 82 00 28 */	bne lbl_807B1B34
lbl_807B1B10:
/* 807B1B10  38 00 00 14 */	li r0, 0x14
/* 807B1B14  B0 1F 06 86 */	sth r0, 0x686(r31)
/* 807B1B18  38 00 00 00 */	li r0, 0
/* 807B1B1C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807B1B20  48 00 00 14 */	b lbl_807B1B34
lbl_807B1B24:
/* 807B1B24  3B 9C 00 01 */	addi r28, r28, 1
/* 807B1B28  2C 1C 00 02 */	cmpwi r28, 2
/* 807B1B2C  3B DE 01 38 */	addi r30, r30, 0x138
/* 807B1B30  40 81 FE A4 */	ble lbl_807B19D4
lbl_807B1B34:
/* 807B1B34  38 60 00 00 */	li r3, 0
/* 807B1B38  38 80 00 03 */	li r4, 3
/* 807B1B3C  38 00 00 03 */	li r0, 3
/* 807B1B40  7C 09 03 A6 */	mtctr r0
lbl_807B1B44:
/* 807B1B44  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807B1B48  2C 00 00 01 */	cmpwi r0, 1
/* 807B1B4C  41 81 00 0C */	bgt lbl_807B1B58
/* 807B1B50  38 03 0A 02 */	addi r0, r3, 0xa02
/* 807B1B54  7C 9F 01 AE */	stbx r4, r31, r0
lbl_807B1B58:
/* 807B1B58  38 63 01 38 */	addi r3, r3, 0x138
/* 807B1B5C  42 00 FF E8 */	bdnz lbl_807B1B44
lbl_807B1B60:
/* 807B1B60  39 61 00 20 */	addi r11, r1, 0x20
/* 807B1B64  4B BB 06 C1 */	bl _restgpr_28
/* 807B1B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B1B6C  7C 08 03 A6 */	mtlr r0
/* 807B1B70  38 21 00 20 */	addi r1, r1, 0x20
/* 807B1B74  4E 80 00 20 */	blr 
