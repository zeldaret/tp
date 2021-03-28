lbl_80A2B91C:
/* 80A2B91C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2B920  7C 08 02 A6 */	mflr r0
/* 80A2B924  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2B928  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2B92C  4B 93 68 98 */	b _savegpr_23
/* 80A2B930  7C 7F 1B 78 */	mr r31, r3
/* 80A2B934  38 7F 11 DC */	addi r3, r31, 0x11dc
/* 80A2B938  3C 80 80 A4 */	lis r4, mCcDCyl__10daNpc_Kn_c@ha
/* 80A2B93C  38 84 0D 54 */	addi r4, r4, mCcDCyl__10daNpc_Kn_c@l
/* 80A2B940  4B 65 8F 74 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A2B944  3B 3F 08 A8 */	addi r25, r31, 0x8a8
/* 80A2B948  93 3F 12 20 */	stw r25, 0x1220(r31)
/* 80A2B94C  3C 60 80 A4 */	lis r3, tgHitCallBack__10daNpc_Kn_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A2B950  38 03 85 20 */	addi r0, r3, tgHitCallBack__10daNpc_Kn_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A2B954  90 1F 12 80 */	stw r0, 0x1280(r31)
/* 80A2B958  3A E0 00 00 */	li r23, 0
/* 80A2B95C  3B C0 00 00 */	li r30, 0
/* 80A2B960  3C 60 80 A4 */	lis r3, mCcDSph__10daNpc_Kn_c@ha
/* 80A2B964  3B 43 0D 98 */	addi r26, r3, mCcDSph__10daNpc_Kn_c@l
/* 80A2B968  3B 60 00 0B */	li r27, 0xb
/* 80A2B96C  3B 80 00 01 */	li r28, 1
/* 80A2B970  3B A0 08 00 */	li r29, 0x800
lbl_80A2B974:
/* 80A2B974  7F 1F F2 14 */	add r24, r31, r30
/* 80A2B978  38 78 13 18 */	addi r3, r24, 0x1318
/* 80A2B97C  7F 44 D3 78 */	mr r4, r26
/* 80A2B980  4B 65 90 B4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80A2B984  93 38 13 5C */	stw r25, 0x135c(r24)
/* 80A2B988  9B 78 13 8C */	stb r27, 0x138c(r24)
/* 80A2B98C  9B 98 13 8F */	stb r28, 0x138f(r24)
/* 80A2B990  93 B8 13 28 */	stw r29, 0x1328(r24)
/* 80A2B994  80 18 13 18 */	lwz r0, 0x1318(r24)
/* 80A2B998  60 00 00 0C */	ori r0, r0, 0xc
/* 80A2B99C  90 18 13 18 */	stw r0, 0x1318(r24)
/* 80A2B9A0  80 18 13 70 */	lwz r0, 0x1370(r24)
/* 80A2B9A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2B9A8  90 18 13 70 */	stw r0, 0x1370(r24)
/* 80A2B9AC  80 18 13 44 */	lwz r0, 0x1344(r24)
/* 80A2B9B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2B9B4  90 18 13 44 */	stw r0, 0x1344(r24)
/* 80A2B9B8  3A F7 00 01 */	addi r23, r23, 1
/* 80A2B9BC  2C 17 00 02 */	cmpwi r23, 2
/* 80A2B9C0  3B DE 01 38 */	addi r30, r30, 0x138
/* 80A2B9C4  41 80 FF B0 */	blt lbl_80A2B974
/* 80A2B9C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2B9CC  4B 93 68 44 */	b _restgpr_23
/* 80A2B9D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2B9D4  7C 08 03 A6 */	mtlr r0
/* 80A2B9D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2B9DC  4E 80 00 20 */	blr 
