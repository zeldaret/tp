lbl_80470AB4:
/* 80470AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470AB8  7C 08 02 A6 */	mflr r0
/* 80470ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470AC4  7C 7F 1B 78 */	mr r31, r3
/* 80470AC8  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80470ACC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80470AD0  38 A0 00 01 */	li r5, 1
/* 80470AD4  81 9F 0D 98 */	lwz r12, 0xd98(r31)
/* 80470AD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80470ADC  7D 89 03 A6 */	mtctr r12
/* 80470AE0  4E 80 04 21 */	bctrl 
/* 80470AE4  38 00 00 09 */	li r0, 9
/* 80470AE8  98 1F 08 80 */	stb r0, 0x880(r31)
/* 80470AEC  38 00 00 02 */	li r0, 2
/* 80470AF0  98 1F 08 82 */	stb r0, 0x882(r31)
/* 80470AF4  80 1F 08 64 */	lwz r0, 0x864(r31)
/* 80470AF8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80470AFC  90 1F 08 64 */	stw r0, 0x864(r31)
/* 80470B00  80 1F 08 68 */	lwz r0, 0x868(r31)
/* 80470B04  60 00 00 02 */	ori r0, r0, 2
/* 80470B08  90 1F 08 68 */	stw r0, 0x868(r31)
/* 80470B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80470B10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80470B14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80470B18  54 04 D6 3E */	rlwinm r4, r0, 0x1a, 0x18, 0x1f
/* 80470B1C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80470B20  7C 05 07 74 */	extsb r5, r0
/* 80470B24  4B BC 48 3C */	b isSwitch__10dSv_info_cCFii
/* 80470B28  2C 03 00 00 */	cmpwi r3, 0
/* 80470B2C  41 82 00 10 */	beq lbl_80470B3C
/* 80470B30  7F E3 FB 78 */	mr r3, r31
/* 80470B34  48 00 48 51 */	bl mode_init_fit__12daObjCarry_cFv
/* 80470B38  48 00 00 0C */	b lbl_80470B44
lbl_80470B3C:
/* 80470B3C  7F E3 FB 78 */	mr r3, r31
/* 80470B40  48 00 28 A9 */	bl mode_init_wait__12daObjCarry_cFv
lbl_80470B44:
/* 80470B44  38 60 00 01 */	li r3, 1
/* 80470B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470B50  7C 08 03 A6 */	mtlr r0
/* 80470B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80470B58  4E 80 00 20 */	blr 
