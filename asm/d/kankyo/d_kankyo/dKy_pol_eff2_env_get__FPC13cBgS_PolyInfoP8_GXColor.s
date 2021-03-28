lbl_801ABAA4:
/* 801ABAA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801ABAA8  7C 08 02 A6 */	mflr r0
/* 801ABAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ABAB0  39 61 00 20 */	addi r11, r1, 0x20
/* 801ABAB4  48 1B 67 1D */	bl _savegpr_26
/* 801ABAB8  7C 7D 1B 79 */	or. r29, r3, r3
/* 801ABABC  7C 9E 23 78 */	mr r30, r4
/* 801ABAC0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801ABAC4  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801ABAC8  41 82 00 1C */	beq lbl_801ABAE4
/* 801ABACC  28 1E 00 00 */	cmplwi r30, 0
/* 801ABAD0  41 82 00 14 */	beq lbl_801ABAE4
/* 801ABAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ABAD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ABADC  37 83 0F 38 */	addic. r28, r3, 0xf38
/* 801ABAE0  40 82 00 0C */	bne lbl_801ABAEC
lbl_801ABAE4:
/* 801ABAE4  38 60 00 FF */	li r3, 0xff
/* 801ABAE8  48 00 01 10 */	b lbl_801ABBF8
lbl_801ABAEC:
/* 801ABAEC  7F 83 E3 78 */	mr r3, r28
/* 801ABAF0  7F A4 EB 78 */	mr r4, r29
/* 801ABAF4  4B EC 93 5D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801ABAF8  7C 7A 1B 78 */	mr r26, r3
/* 801ABAFC  3B 7C 3E C8 */	addi r27, r28, 0x3ec8
/* 801ABB00  7F 63 DB 78 */	mr r3, r27
/* 801ABB04  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801ABB08  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801ABB0C  38 84 01 7A */	addi r4, r4, 0x17a
/* 801ABB10  48 1B CE 85 */	bl strcmp
/* 801ABB14  2C 03 00 00 */	cmpwi r3, 0
/* 801ABB18  40 82 00 28 */	bne lbl_801ABB40
/* 801ABB1C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801ABB20  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801ABB24  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801ABB28  28 00 00 04 */	cmplwi r0, 4
/* 801ABB2C  40 82 00 14 */	bne lbl_801ABB40
/* 801ABB30  2C 1A 00 04 */	cmpwi r26, 4
/* 801ABB34  40 82 00 50 */	bne lbl_801ABB84
/* 801ABB38  3B 40 00 0D */	li r26, 0xd
/* 801ABB3C  48 00 00 48 */	b lbl_801ABB84
lbl_801ABB40:
/* 801ABB40  7F 63 DB 78 */	mr r3, r27
/* 801ABB44  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801ABB48  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801ABB4C  38 84 02 61 */	addi r4, r4, 0x261
/* 801ABB50  48 1B CE 45 */	bl strcmp
/* 801ABB54  2C 03 00 00 */	cmpwi r3, 0
/* 801ABB58  40 82 00 2C */	bne lbl_801ABB84
/* 801ABB5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ABB60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ABB64  38 63 09 58 */	addi r3, r3, 0x958
/* 801ABB68  38 80 00 03 */	li r4, 3
/* 801ABB6C  4B E8 8D C9 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801ABB70  2C 03 00 00 */	cmpwi r3, 0
/* 801ABB74  41 82 00 10 */	beq lbl_801ABB84
/* 801ABB78  2C 1A 00 0B */	cmpwi r26, 0xb
/* 801ABB7C  40 82 00 08 */	bne lbl_801ABB84
/* 801ABB80  3B 40 00 07 */	li r26, 7
lbl_801ABB84:
/* 801ABB84  7F 83 E3 78 */	mr r3, r28
/* 801ABB88  7F A4 EB 78 */	mr r4, r29
/* 801ABB8C  4B EC 93 15 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801ABB90  80 9F 12 E8 */	lwz r4, 0x12e8(r31)
/* 801ABB94  28 04 00 00 */	cmplwi r4, 0
/* 801ABB98  41 82 00 14 */	beq lbl_801ABBAC
/* 801ABB9C  57 40 18 38 */	slwi r0, r26, 3
/* 801ABBA0  7C 00 1A 14 */	add r0, r0, r3
/* 801ABBA4  7C 64 00 AE */	lbzx r3, r4, r0
/* 801ABBA8  48 00 00 0C */	b lbl_801ABBB4
lbl_801ABBAC:
/* 801ABBAC  38 60 00 FF */	li r3, 0xff
/* 801ABBB0  48 00 00 48 */	b lbl_801ABBF8
lbl_801ABBB4:
/* 801ABBB4  28 03 00 64 */	cmplwi r3, 0x64
/* 801ABBB8  41 80 00 0C */	blt lbl_801ABBC4
/* 801ABBBC  38 60 00 FF */	li r3, 0xff
/* 801ABBC0  48 00 00 38 */	b lbl_801ABBF8
lbl_801ABBC4:
/* 801ABBC4  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801ABBC8  54 65 1D 78 */	rlwinm r5, r3, 3, 0x15, 0x1c
/* 801ABBCC  7C 80 2A 14 */	add r4, r0, r5
/* 801ABBD0  88 04 00 03 */	lbz r0, 3(r4)
/* 801ABBD4  98 1E 00 00 */	stb r0, 0(r30)
/* 801ABBD8  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801ABBDC  7C 80 2A 14 */	add r4, r0, r5
/* 801ABBE0  88 04 00 04 */	lbz r0, 4(r4)
/* 801ABBE4  98 1E 00 01 */	stb r0, 1(r30)
/* 801ABBE8  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801ABBEC  7C 80 2A 14 */	add r4, r0, r5
/* 801ABBF0  88 04 00 05 */	lbz r0, 5(r4)
/* 801ABBF4  98 1E 00 02 */	stb r0, 2(r30)
lbl_801ABBF8:
/* 801ABBF8  39 61 00 20 */	addi r11, r1, 0x20
/* 801ABBFC  48 1B 66 21 */	bl _restgpr_26
/* 801ABC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ABC04  7C 08 03 A6 */	mtlr r0
/* 801ABC08  38 21 00 20 */	addi r1, r1, 0x20
/* 801ABC0C  4E 80 00 20 */	blr 
