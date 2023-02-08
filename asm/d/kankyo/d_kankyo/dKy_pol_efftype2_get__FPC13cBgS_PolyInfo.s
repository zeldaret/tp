lbl_801AB3A8:
/* 801AB3A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB3AC  7C 08 02 A6 */	mflr r0
/* 801AB3B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB3B4  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB3B8  48 1B 6E 1D */	bl _savegpr_27
/* 801AB3BC  7C 7B 1B 79 */	or. r27, r3, r3
/* 801AB3C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB3C4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB3C8  41 82 00 14 */	beq lbl_801AB3DC
/* 801AB3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB3D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB3D4  37 C3 0F 38 */	addic. r30, r3, 0xf38
/* 801AB3D8  40 82 00 0C */	bne lbl_801AB3E4
lbl_801AB3DC:
/* 801AB3DC  38 60 00 FF */	li r3, 0xff
/* 801AB3E0  48 00 00 C8 */	b lbl_801AB4A8
lbl_801AB3E4:
/* 801AB3E4  7F C3 F3 78 */	mr r3, r30
/* 801AB3E8  7F 64 DB 78 */	mr r4, r27
/* 801AB3EC  4B EC 9A 65 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB3F0  7C 7C 1B 78 */	mr r28, r3
/* 801AB3F4  3B BE 3E C8 */	addi r29, r30, 0x3ec8
/* 801AB3F8  7F A3 EB 78 */	mr r3, r29
/* 801AB3FC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB400  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB404  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB408  48 1B D5 8D */	bl strcmp
/* 801AB40C  2C 03 00 00 */	cmpwi r3, 0
/* 801AB410  40 82 00 28 */	bne lbl_801AB438
/* 801AB414  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB418  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB41C  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB420  28 00 00 04 */	cmplwi r0, 4
/* 801AB424  40 82 00 14 */	bne lbl_801AB438
/* 801AB428  2C 1C 00 04 */	cmpwi r28, 4
/* 801AB42C  40 82 00 50 */	bne lbl_801AB47C
/* 801AB430  3B 80 00 0D */	li r28, 0xd
/* 801AB434  48 00 00 48 */	b lbl_801AB47C
lbl_801AB438:
/* 801AB438  7F A3 EB 78 */	mr r3, r29
/* 801AB43C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB440  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB444  38 84 02 61 */	addi r4, r4, 0x261
/* 801AB448  48 1B D5 4D */	bl strcmp
/* 801AB44C  2C 03 00 00 */	cmpwi r3, 0
/* 801AB450  40 82 00 2C */	bne lbl_801AB47C
/* 801AB454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB45C  38 63 09 58 */	addi r3, r3, 0x958
/* 801AB460  38 80 00 03 */	li r4, 3
/* 801AB464  4B E8 94 D1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801AB468  2C 03 00 00 */	cmpwi r3, 0
/* 801AB46C  41 82 00 10 */	beq lbl_801AB47C
/* 801AB470  2C 1C 00 0B */	cmpwi r28, 0xb
/* 801AB474  40 82 00 08 */	bne lbl_801AB47C
/* 801AB478  3B 80 00 07 */	li r28, 7
lbl_801AB47C:
/* 801AB47C  7F C3 F3 78 */	mr r3, r30
/* 801AB480  7F 64 DB 78 */	mr r4, r27
/* 801AB484  4B EC 9A 1D */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AB488  80 9F 12 E4 */	lwz r4, 0x12e4(r31)
/* 801AB48C  28 04 00 00 */	cmplwi r4, 0
/* 801AB490  41 82 00 14 */	beq lbl_801AB4A4
/* 801AB494  57 80 18 38 */	slwi r0, r28, 3
/* 801AB498  7C 00 1A 14 */	add r0, r0, r3
/* 801AB49C  7C 64 00 AE */	lbzx r3, r4, r0
/* 801AB4A0  48 00 00 08 */	b lbl_801AB4A8
lbl_801AB4A4:
/* 801AB4A4  38 60 00 FF */	li r3, 0xff
lbl_801AB4A8:
/* 801AB4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB4AC  48 1B 6D 75 */	bl _restgpr_27
/* 801AB4B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB4B4  7C 08 03 A6 */	mtlr r0
/* 801AB4B8  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB4BC  4E 80 00 20 */	blr 
