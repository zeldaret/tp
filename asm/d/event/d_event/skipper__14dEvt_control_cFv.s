lbl_800429D4:
/* 800429D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800429D8  7C 08 02 A6 */	mflr r0
/* 800429DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800429E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800429E4  48 31 F7 F9 */	bl _savegpr_29
/* 800429E8  7C 7D 1B 78 */	mr r29, r3
/* 800429EC  3B E0 00 00 */	li r31, 0
/* 800429F0  3B C0 00 00 */	li r30, 0
/* 800429F4  A0 03 00 DA */	lhz r0, 0xda(r3)
/* 800429F8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800429FC  B0 03 00 DA */	sth r0, 0xda(r3)
/* 80042A00  88 03 00 E5 */	lbz r0, 0xe5(r3)
/* 80042A04  28 00 00 01 */	cmplwi r0, 1
/* 80042A08  40 82 01 98 */	bne lbl_80042BA0
/* 80042A0C  80 1D 01 00 */	lwz r0, 0x100(r29)
/* 80042A10  28 00 00 00 */	cmplwi r0, 0
/* 80042A14  41 82 00 08 */	beq lbl_80042A1C
/* 80042A18  3B C0 00 01 */	li r30, 1
lbl_80042A1C:
/* 80042A1C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80042A20  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80042A24  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80042A28  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80042A2C  41 82 00 44 */	beq lbl_80042A70
/* 80042A30  80 1D 01 08 */	lwz r0, 0x108(r29)
/* 80042A34  2C 00 00 00 */	cmpwi r0, 0
/* 80042A38  40 81 00 2C */	ble lbl_80042A64
/* 80042A3C  38 00 FF FF */	li r0, -1
/* 80042A40  90 1D 01 08 */	stw r0, 0x108(r29)
/* 80042A44  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80042A48  41 82 00 28 */	beq lbl_80042A70
/* 80042A4C  80 1D 01 10 */	lwz r0, 0x110(r29)
/* 80042A50  2C 00 00 00 */	cmpwi r0, 0
/* 80042A54  41 82 00 1C */	beq lbl_80042A70
/* 80042A58  C0 22 84 C4 */	lfs f1, lit_4904(r2)
/* 80042A5C  4B FC 56 75 */	bl fadeOut__13mDoGph_gInf_cFf
/* 80042A60  48 00 00 10 */	b lbl_80042A70
lbl_80042A64:
/* 80042A64  40 82 00 0C */	bne lbl_80042A70
/* 80042A68  38 00 00 01 */	li r0, 1
/* 80042A6C  90 1D 01 08 */	stw r0, 0x108(r29)
lbl_80042A70:
/* 80042A70  80 7D 01 08 */	lwz r3, 0x108(r29)
/* 80042A74  2C 03 00 00 */	cmpwi r3, 0
/* 80042A78  40 81 00 60 */	ble lbl_80042AD8
/* 80042A7C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80042A80  41 82 00 20 */	beq lbl_80042AA0
/* 80042A84  38 00 00 43 */	li r0, 0x43
/* 80042A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80042A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80042A90  98 03 5E 40 */	stb r0, 0x5e40(r3)
/* 80042A94  38 00 00 01 */	li r0, 1
/* 80042A98  98 03 5E 5A */	stb r0, 0x5e5a(r3)
/* 80042A9C  48 00 00 1C */	b lbl_80042AB8
lbl_80042AA0:
/* 80042AA0  38 00 00 4D */	li r0, 0x4d
/* 80042AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80042AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80042AAC  98 03 5E 40 */	stb r0, 0x5e40(r3)
/* 80042AB0  38 00 00 01 */	li r0, 1
/* 80042AB4  98 03 5E 5A */	stb r0, 0x5e5a(r3)
lbl_80042AB8:
/* 80042AB8  80 7D 01 08 */	lwz r3, 0x108(r29)
/* 80042ABC  38 03 00 01 */	addi r0, r3, 1
/* 80042AC0  90 1D 01 08 */	stw r0, 0x108(r29)
/* 80042AC4  2C 03 00 2D */	cmpwi r3, 0x2d
/* 80042AC8  40 81 00 5C */	ble lbl_80042B24
/* 80042ACC  38 00 00 00 */	li r0, 0
/* 80042AD0  90 1D 01 08 */	stw r0, 0x108(r29)
/* 80042AD4  48 00 00 50 */	b lbl_80042B24
lbl_80042AD8:
/* 80042AD8  41 82 00 4C */	beq lbl_80042B24
/* 80042ADC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80042AE0  41 82 00 30 */	beq lbl_80042B10
/* 80042AE4  80 1D 01 10 */	lwz r0, 0x110(r29)
/* 80042AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80042AEC  41 82 00 24 */	beq lbl_80042B10
/* 80042AF0  38 03 FF FF */	addi r0, r3, -1
/* 80042AF4  90 1D 01 08 */	stw r0, 0x108(r29)
/* 80042AF8  2C 03 FF EC */	cmpwi r3, -20
/* 80042AFC  40 80 00 28 */	bge lbl_80042B24
/* 80042B00  3B E0 00 01 */	li r31, 1
/* 80042B04  38 00 00 00 */	li r0, 0
/* 80042B08  90 1D 01 08 */	stw r0, 0x108(r29)
/* 80042B0C  48 00 00 18 */	b lbl_80042B24
lbl_80042B10:
/* 80042B10  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80042B14  41 82 00 08 */	beq lbl_80042B1C
/* 80042B18  3B E0 00 01 */	li r31, 1
lbl_80042B1C:
/* 80042B1C  38 00 00 00 */	li r0, 0
/* 80042B20  90 1D 01 08 */	stw r0, 0x108(r29)
lbl_80042B24:
/* 80042B24  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80042B28  41 82 00 78 */	beq lbl_80042BA0
/* 80042B2C  48 1F 4E 69 */	bl onKillMessageFlag__12dMsgObject_cFv
/* 80042B30  7F A3 EB 78 */	mr r3, r29
/* 80042B34  80 9D 01 04 */	lwz r4, 0x104(r29)
/* 80042B38  48 00 07 B5 */	bl convPId__14dEvt_control_cFUi
/* 80042B3C  28 03 00 00 */	cmplwi r3, 0
/* 80042B40  40 82 00 10 */	bne lbl_80042B50
/* 80042B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80042B48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80042B4C  80 63 5D AC */	lwz r3, 0x5dac(r3)
lbl_80042B50:
/* 80042B50  80 9D 01 0C */	lwz r4, 0x10c(r29)
/* 80042B54  81 9D 01 00 */	lwz r12, 0x100(r29)
/* 80042B58  7D 89 03 A6 */	mtctr r12
/* 80042B5C  4E 80 04 21 */	bctrl 
/* 80042B60  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042B64  60 00 00 08 */	ori r0, r0, 8
/* 80042B68  B0 1D 00 DA */	sth r0, 0xda(r29)
/* 80042B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80042B70  41 82 00 30 */	beq lbl_80042BA0
/* 80042B74  38 00 00 00 */	li r0, 0
/* 80042B78  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80042B7C  2C 03 00 02 */	cmpwi r3, 2
/* 80042B80  40 82 00 14 */	bne lbl_80042B94
/* 80042B84  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042B88  60 00 00 01 */	ori r0, r0, 1
/* 80042B8C  B0 1D 00 DA */	sth r0, 0xda(r29)
/* 80042B90  48 00 00 10 */	b lbl_80042BA0
lbl_80042B94:
/* 80042B94  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042B98  60 00 00 02 */	ori r0, r0, 2
/* 80042B9C  B0 1D 00 DA */	sth r0, 0xda(r29)
lbl_80042BA0:
/* 80042BA0  7F E3 FB 78 */	mr r3, r31
/* 80042BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80042BA8  48 31 F6 81 */	bl _restgpr_29
/* 80042BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80042BB0  7C 08 03 A6 */	mtlr r0
/* 80042BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80042BB8  4E 80 00 20 */	blr 
