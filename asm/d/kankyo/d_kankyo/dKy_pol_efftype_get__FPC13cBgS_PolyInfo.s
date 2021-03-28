lbl_801AB290:
/* 801AB290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB294  7C 08 02 A6 */	mflr r0
/* 801AB298  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB29C  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB2A0  48 1B 6F 35 */	bl _savegpr_27
/* 801AB2A4  7C 7B 1B 79 */	or. r27, r3, r3
/* 801AB2A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AB2AC  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801AB2B0  41 82 00 14 */	beq lbl_801AB2C4
/* 801AB2B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AB2B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AB2BC  37 C3 0F 38 */	addic. r30, r3, 0xf38
/* 801AB2C0  40 82 00 0C */	bne lbl_801AB2CC
lbl_801AB2C4:
/* 801AB2C4  38 60 00 FF */	li r3, 0xff
/* 801AB2C8  48 00 00 C8 */	b lbl_801AB390
lbl_801AB2CC:
/* 801AB2CC  7F C3 F3 78 */	mr r3, r30
/* 801AB2D0  7F 64 DB 78 */	mr r4, r27
/* 801AB2D4  4B EC 9B 7D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB2D8  7C 7C 1B 78 */	mr r28, r3
/* 801AB2DC  3B BE 3E C8 */	addi r29, r30, 0x3ec8
/* 801AB2E0  7F A3 EB 78 */	mr r3, r29
/* 801AB2E4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AB2E8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AB2EC  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB2F0  48 1B D6 A5 */	bl strcmp
/* 801AB2F4  2C 03 00 00 */	cmpwi r3, 0
/* 801AB2F8  40 82 00 28 */	bne lbl_801AB320
/* 801AB2FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AB300  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AB304  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB308  28 00 00 04 */	cmplwi r0, 4
/* 801AB30C  40 82 00 14 */	bne lbl_801AB320
/* 801AB310  2C 1C 00 04 */	cmpwi r28, 4
/* 801AB314  40 82 00 50 */	bne lbl_801AB364
/* 801AB318  3B 80 00 0D */	li r28, 0xd
/* 801AB31C  48 00 00 48 */	b lbl_801AB364
lbl_801AB320:
/* 801AB320  7F A3 EB 78 */	mr r3, r29
/* 801AB324  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AB328  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AB32C  38 84 02 61 */	addi r4, r4, 0x261
/* 801AB330  48 1B D6 65 */	bl strcmp
/* 801AB334  2C 03 00 00 */	cmpwi r3, 0
/* 801AB338  40 82 00 2C */	bne lbl_801AB364
/* 801AB33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AB340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AB344  38 63 09 58 */	addi r3, r3, 0x958
/* 801AB348  38 80 00 03 */	li r4, 3
/* 801AB34C  4B E8 95 E9 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801AB350  2C 03 00 00 */	cmpwi r3, 0
/* 801AB354  41 82 00 10 */	beq lbl_801AB364
/* 801AB358  2C 1C 00 0B */	cmpwi r28, 0xb
/* 801AB35C  40 82 00 08 */	bne lbl_801AB364
/* 801AB360  3B 80 00 07 */	li r28, 7
lbl_801AB364:
/* 801AB364  7F C3 F3 78 */	mr r3, r30
/* 801AB368  7F 64 DB 78 */	mr r4, r27
/* 801AB36C  4B EC 9B 35 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AB370  80 9F 12 DC */	lwz r4, 0x12dc(r31)
/* 801AB374  28 04 00 00 */	cmplwi r4, 0
/* 801AB378  41 82 00 14 */	beq lbl_801AB38C
/* 801AB37C  57 80 18 38 */	slwi r0, r28, 3
/* 801AB380  7C 00 1A 14 */	add r0, r0, r3
/* 801AB384  7C 64 00 AE */	lbzx r3, r4, r0
/* 801AB388  48 00 00 08 */	b lbl_801AB390
lbl_801AB38C:
/* 801AB38C  38 60 00 FF */	li r3, 0xff
lbl_801AB390:
/* 801AB390  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB394  48 1B 6E 8D */	bl _restgpr_27
/* 801AB398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB39C  7C 08 03 A6 */	mtlr r0
/* 801AB3A0  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB3A4  4E 80 00 20 */	blr 
