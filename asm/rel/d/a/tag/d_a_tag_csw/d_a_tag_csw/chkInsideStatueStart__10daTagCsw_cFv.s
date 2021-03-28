lbl_80D57320:
/* 80D57320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D57324  7C 08 02 A6 */	mflr r0
/* 80D57328  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5732C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D57330  4B 60 AE AC */	b _savegpr_29
/* 80D57334  7C 7D 1B 78 */	mr r29, r3
/* 80D57338  3B E0 00 00 */	li r31, 0
/* 80D5733C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D57340  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D57348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5734C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D57350  7C 05 07 74 */	extsb r5, r0
/* 80D57354  4B 2D E0 0C */	b isSwitch__10dSv_info_cCFii
/* 80D57358  2C 03 00 00 */	cmpwi r3, 0
/* 80D5735C  41 82 00 48 */	beq lbl_80D573A4
/* 80D57360  3B C0 00 01 */	li r30, 1
/* 80D57364  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D57368  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D5736C  2C 04 00 0A */	cmpwi r4, 0xa
/* 80D57370  41 82 00 28 */	beq lbl_80D57398
/* 80D57374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D57378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5737C  38 84 00 01 */	addi r4, r4, 1
/* 80D57380  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D57384  7C 05 07 74 */	extsb r5, r0
/* 80D57388  4B 2D DF D8 */	b isSwitch__10dSv_info_cCFii
/* 80D5738C  2C 03 00 00 */	cmpwi r3, 0
/* 80D57390  41 82 00 08 */	beq lbl_80D57398
/* 80D57394  3B C0 00 00 */	li r30, 0
lbl_80D57398:
/* 80D57398  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D5739C  41 82 00 08 */	beq lbl_80D573A4
/* 80D573A0  3B E0 00 01 */	li r31, 1
lbl_80D573A4:
/* 80D573A4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80D573A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D573AC  4B 60 AE 7C */	b _restgpr_29
/* 80D573B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D573B4  7C 08 03 A6 */	mtlr r0
/* 80D573B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D573BC  4E 80 00 20 */	blr 
