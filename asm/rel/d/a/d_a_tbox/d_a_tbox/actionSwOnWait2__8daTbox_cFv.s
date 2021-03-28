lbl_80494E98:
/* 80494E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494E9C  7C 08 02 A6 */	mflr r0
/* 80494EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80494EA8  7C 7F 1B 78 */	mr r31, r3
/* 80494EAC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80494EB0  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80494EB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80494EB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80494EBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80494EC0  7C 05 07 74 */	extsb r5, r0
/* 80494EC4  4B BA 04 9C */	b isSwitch__10dSv_info_cCFii
/* 80494EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80494ECC  41 82 00 54 */	beq lbl_80494F20
/* 80494ED0  3C 60 80 49 */	lis r3, lit_5900@ha
/* 80494ED4  38 83 66 B8 */	addi r4, r3, lit_5900@l
/* 80494ED8  80 64 00 00 */	lwz r3, 0(r4)
/* 80494EDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80494EE0  90 7F 07 40 */	stw r3, 0x740(r31)
/* 80494EE4  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80494EE8  80 04 00 08 */	lwz r0, 8(r4)
/* 80494EEC  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80494EF0  7F E3 FB 78 */	mr r3, r31
/* 80494EF4  4B FF C5 29 */	bl setDzb__8daTbox_cFv
/* 80494EF8  A0 7F 07 54 */	lhz r3, 0x754(r31)
/* 80494EFC  38 00 FF BC */	li r0, -68
/* 80494F00  7C 60 00 38 */	and r0, r3, r0
/* 80494F04  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80494F08  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80494F0C  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 80494F10  38 60 00 00 */	li r3, 0
/* 80494F14  38 A0 00 01 */	li r5, 1
/* 80494F18  4B C0 72 50 */	b onStatus__7dTres_cFUcii
/* 80494F1C  48 00 00 10 */	b lbl_80494F2C
lbl_80494F20:
/* 80494F20  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 80494F24  60 00 00 40 */	ori r0, r0, 0x40
/* 80494F28  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80494F2C:
/* 80494F2C  38 60 00 01 */	li r3, 1
/* 80494F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494F38  7C 08 03 A6 */	mtlr r0
/* 80494F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80494F40  4E 80 00 20 */	blr 
