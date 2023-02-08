lbl_801AB93C:
/* 801AB93C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB940  7C 08 02 A6 */	mflr r0
/* 801AB944  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB948  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB94C  48 1B 68 85 */	bl _savegpr_26
/* 801AB950  7C 7D 1B 79 */	or. r29, r3, r3
/* 801AB954  7C 9E 23 78 */	mr r30, r4
/* 801AB958  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB95C  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB960  41 82 00 1C */	beq lbl_801AB97C
/* 801AB964  28 1E 00 00 */	cmplwi r30, 0
/* 801AB968  41 82 00 14 */	beq lbl_801AB97C
/* 801AB96C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB974  37 83 0F 38 */	addic. r28, r3, 0xf38
/* 801AB978  40 82 00 0C */	bne lbl_801AB984
lbl_801AB97C:
/* 801AB97C  38 60 00 FF */	li r3, 0xff
/* 801AB980  48 00 01 0C */	b lbl_801ABA8C
lbl_801AB984:
/* 801AB984  7F 83 E3 78 */	mr r3, r28
/* 801AB988  7F A4 EB 78 */	mr r4, r29
/* 801AB98C  4B EC 94 C5 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB990  7C 7A 1B 78 */	mr r26, r3
/* 801AB994  3B 7C 3E C8 */	addi r27, r28, 0x3ec8
/* 801AB998  7F 63 DB 78 */	mr r3, r27
/* 801AB99C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB9A0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB9A4  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB9A8  48 1B CF ED */	bl strcmp
/* 801AB9AC  2C 03 00 00 */	cmpwi r3, 0
/* 801AB9B0  40 82 00 28 */	bne lbl_801AB9D8
/* 801AB9B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB9B8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB9BC  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB9C0  28 00 00 04 */	cmplwi r0, 4
/* 801AB9C4  40 82 00 14 */	bne lbl_801AB9D8
/* 801AB9C8  2C 1A 00 04 */	cmpwi r26, 4
/* 801AB9CC  40 82 00 50 */	bne lbl_801ABA1C
/* 801AB9D0  3B 40 00 0D */	li r26, 0xd
/* 801AB9D4  48 00 00 48 */	b lbl_801ABA1C
lbl_801AB9D8:
/* 801AB9D8  7F 63 DB 78 */	mr r3, r27
/* 801AB9DC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB9E0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB9E4  38 84 02 61 */	addi r4, r4, 0x261
/* 801AB9E8  48 1B CF AD */	bl strcmp
/* 801AB9EC  2C 03 00 00 */	cmpwi r3, 0
/* 801AB9F0  40 82 00 2C */	bne lbl_801ABA1C
/* 801AB9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB9FC  38 63 09 58 */	addi r3, r3, 0x958
/* 801ABA00  38 80 00 03 */	li r4, 3
/* 801ABA04  4B E8 8F 31 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801ABA08  2C 03 00 00 */	cmpwi r3, 0
/* 801ABA0C  41 82 00 10 */	beq lbl_801ABA1C
/* 801ABA10  2C 1A 00 0B */	cmpwi r26, 0xb
/* 801ABA14  40 82 00 08 */	bne lbl_801ABA1C
/* 801ABA18  3B 40 00 07 */	li r26, 7
lbl_801ABA1C:
/* 801ABA1C  7F 83 E3 78 */	mr r3, r28
/* 801ABA20  7F A4 EB 78 */	mr r4, r29
/* 801ABA24  4B EC 94 7D */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801ABA28  80 9F 12 E8 */	lwz r4, 0x12e8(r31)
/* 801ABA2C  28 04 00 00 */	cmplwi r4, 0
/* 801ABA30  41 82 00 14 */	beq lbl_801ABA44
/* 801ABA34  57 40 18 38 */	slwi r0, r26, 3
/* 801ABA38  7C 00 1A 14 */	add r0, r0, r3
/* 801ABA3C  7C 64 00 AE */	lbzx r3, r4, r0
/* 801ABA40  48 00 00 0C */	b lbl_801ABA4C
lbl_801ABA44:
/* 801ABA44  38 60 00 FF */	li r3, 0xff
/* 801ABA48  48 00 00 44 */	b lbl_801ABA8C
lbl_801ABA4C:
/* 801ABA4C  28 03 00 64 */	cmplwi r3, 0x64
/* 801ABA50  41 80 00 0C */	blt lbl_801ABA5C
/* 801ABA54  38 60 00 FF */	li r3, 0xff
/* 801ABA58  48 00 00 34 */	b lbl_801ABA8C
lbl_801ABA5C:
/* 801ABA5C  80 9F 12 F4 */	lwz r4, 0x12f4(r31)
/* 801ABA60  54 65 1D 78 */	rlwinm r5, r3, 3, 0x15, 0x1c
/* 801ABA64  7C 04 28 AE */	lbzx r0, r4, r5
/* 801ABA68  98 1E 00 00 */	stb r0, 0(r30)
/* 801ABA6C  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801ABA70  7C 80 2A 14 */	add r4, r0, r5
/* 801ABA74  88 04 00 01 */	lbz r0, 1(r4)
/* 801ABA78  98 1E 00 01 */	stb r0, 1(r30)
/* 801ABA7C  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801ABA80  7C 80 2A 14 */	add r4, r0, r5
/* 801ABA84  88 04 00 02 */	lbz r0, 2(r4)
/* 801ABA88  98 1E 00 02 */	stb r0, 2(r30)
lbl_801ABA8C:
/* 801ABA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 801ABA90  48 1B 67 8D */	bl _restgpr_26
/* 801ABA94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ABA98  7C 08 03 A6 */	mtlr r0
/* 801ABA9C  38 21 00 20 */	addi r1, r1, 0x20
/* 801ABAA0  4E 80 00 20 */	blr 
