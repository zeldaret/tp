lbl_801ABC10:
/* 801ABC10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801ABC14  7C 08 02 A6 */	mflr r0
/* 801ABC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ABC1C  39 61 00 20 */	addi r11, r1, 0x20
/* 801ABC20  48 1B 65 B5 */	bl _savegpr_27
/* 801ABC24  7C 7B 1B 79 */	or. r27, r3, r3
/* 801ABC28  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801ABC2C  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801ABC30  41 82 00 14 */	beq lbl_801ABC44
/* 801ABC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801ABC38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801ABC3C  37 C3 0F 38 */	addic. r30, r3, 0xf38
/* 801ABC40  40 82 00 0C */	bne lbl_801ABC4C
lbl_801ABC44:
/* 801ABC44  38 60 00 FF */	li r3, 0xff
/* 801ABC48  48 00 00 EC */	b lbl_801ABD34
lbl_801ABC4C:
/* 801ABC4C  7F C3 F3 78 */	mr r3, r30
/* 801ABC50  7F 64 DB 78 */	mr r4, r27
/* 801ABC54  4B EC 91 FD */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801ABC58  7C 7C 1B 78 */	mr r28, r3
/* 801ABC5C  3B BE 3E C8 */	addi r29, r30, 0x3ec8
/* 801ABC60  7F A3 EB 78 */	mr r3, r29
/* 801ABC64  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ABC68  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ABC6C  38 84 01 7A */	addi r4, r4, 0x17a
/* 801ABC70  48 1B CD 25 */	bl strcmp
/* 801ABC74  2C 03 00 00 */	cmpwi r3, 0
/* 801ABC78  40 82 00 28 */	bne lbl_801ABCA0
/* 801ABC7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801ABC80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801ABC84  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801ABC88  28 00 00 04 */	cmplwi r0, 4
/* 801ABC8C  40 82 00 14 */	bne lbl_801ABCA0
/* 801ABC90  2C 1C 00 04 */	cmpwi r28, 4
/* 801ABC94  40 82 00 50 */	bne lbl_801ABCE4
/* 801ABC98  3B 80 00 0D */	li r28, 0xd
/* 801ABC9C  48 00 00 48 */	b lbl_801ABCE4
lbl_801ABCA0:
/* 801ABCA0  7F A3 EB 78 */	mr r3, r29
/* 801ABCA4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ABCA8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ABCAC  38 84 02 61 */	addi r4, r4, 0x261
/* 801ABCB0  48 1B CC E5 */	bl strcmp
/* 801ABCB4  2C 03 00 00 */	cmpwi r3, 0
/* 801ABCB8  40 82 00 2C */	bne lbl_801ABCE4
/* 801ABCBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801ABCC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801ABCC4  38 63 09 58 */	addi r3, r3, 0x958
/* 801ABCC8  38 80 00 03 */	li r4, 3
/* 801ABCCC  4B E8 8C 69 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801ABCD0  2C 03 00 00 */	cmpwi r3, 0
/* 801ABCD4  41 82 00 10 */	beq lbl_801ABCE4
/* 801ABCD8  2C 1C 00 0B */	cmpwi r28, 0xb
/* 801ABCDC  40 82 00 08 */	bne lbl_801ABCE4
/* 801ABCE0  3B 80 00 07 */	li r28, 7
lbl_801ABCE4:
/* 801ABCE4  7F C3 F3 78 */	mr r3, r30
/* 801ABCE8  7F 64 DB 78 */	mr r4, r27
/* 801ABCEC  4B EC 91 B5 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801ABCF0  80 9F 12 E0 */	lwz r4, 0x12e0(r31)
/* 801ABCF4  28 04 00 00 */	cmplwi r4, 0
/* 801ABCF8  41 82 00 14 */	beq lbl_801ABD0C
/* 801ABCFC  57 80 18 38 */	slwi r0, r28, 3
/* 801ABD00  7C 00 1A 14 */	add r0, r0, r3
/* 801ABD04  7C 04 00 AE */	lbzx r0, r4, r0
/* 801ABD08  48 00 00 0C */	b lbl_801ABD14
lbl_801ABD0C:
/* 801ABD0C  38 60 00 FF */	li r3, 0xff
/* 801ABD10  48 00 00 24 */	b lbl_801ABD34
lbl_801ABD14:
/* 801ABD14  28 00 00 64 */	cmplwi r0, 0x64
/* 801ABD18  41 80 00 0C */	blt lbl_801ABD24
/* 801ABD1C  38 60 00 FF */	li r3, 0xff
/* 801ABD20  48 00 00 14 */	b lbl_801ABD34
lbl_801ABD24:
/* 801ABD24  80 7F 12 F4 */	lwz r3, 0x12f4(r31)
/* 801ABD28  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 801ABD2C  7C 63 02 14 */	add r3, r3, r0
/* 801ABD30  88 63 00 06 */	lbz r3, 6(r3)
lbl_801ABD34:
/* 801ABD34  39 61 00 20 */	addi r11, r1, 0x20
/* 801ABD38  48 1B 64 E9 */	bl _restgpr_27
/* 801ABD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ABD40  7C 08 03 A6 */	mtlr r0
/* 801ABD44  38 21 00 20 */	addi r1, r1, 0x20
/* 801ABD48  4E 80 00 20 */	blr 
