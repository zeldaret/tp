lbl_801AB59C:
/* 801AB59C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB5A0  7C 08 02 A6 */	mflr r0
/* 801AB5A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB5A8  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB5AC  48 1B 6C 2D */	bl _savegpr_28
/* 801AB5B0  7C 7C 1B 79 */	or. r28, r3, r3
/* 801AB5B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB5B8  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB5BC  41 82 00 14 */	beq lbl_801AB5D0
/* 801AB5C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB5C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB5C8  37 C3 0F 38 */	addic. r30, r3, 0xf38
/* 801AB5CC  40 82 00 0C */	bne lbl_801AB5D8
lbl_801AB5D0:
/* 801AB5D0  38 60 00 00 */	li r3, 0
/* 801AB5D4  48 00 00 7C */	b lbl_801AB650
lbl_801AB5D8:
/* 801AB5D8  7F C3 F3 78 */	mr r3, r30
/* 801AB5DC  7F 84 E3 78 */	mr r4, r28
/* 801AB5E0  4B EC 98 71 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB5E4  7C 7D 1B 78 */	mr r29, r3
/* 801AB5E8  38 7E 3E C8 */	addi r3, r30, 0x3ec8
/* 801AB5EC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB5F0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB5F4  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB5F8  48 1B D3 9D */	bl strcmp
/* 801AB5FC  2C 03 00 00 */	cmpwi r3, 0
/* 801AB600  40 82 00 24 */	bne lbl_801AB624
/* 801AB604  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB608  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB60C  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB610  28 00 00 04 */	cmplwi r0, 4
/* 801AB614  40 82 00 10 */	bne lbl_801AB624
/* 801AB618  2C 1D 00 04 */	cmpwi r29, 4
/* 801AB61C  40 82 00 08 */	bne lbl_801AB624
/* 801AB620  3B A0 00 0D */	li r29, 0xd
lbl_801AB624:
/* 801AB624  7F C3 F3 78 */	mr r3, r30
/* 801AB628  7F 84 E3 78 */	mr r4, r28
/* 801AB62C  4B EC 98 75 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AB630  80 9F 12 F0 */	lwz r4, 0x12f0(r31)
/* 801AB634  28 04 00 00 */	cmplwi r4, 0
/* 801AB638  41 82 00 14 */	beq lbl_801AB64C
/* 801AB63C  57 A0 18 38 */	slwi r0, r29, 3
/* 801AB640  7C 00 1A 14 */	add r0, r0, r3
/* 801AB644  7C 64 00 AE */	lbzx r3, r4, r0
/* 801AB648  48 00 00 08 */	b lbl_801AB650
lbl_801AB64C:
/* 801AB64C  38 60 00 00 */	li r3, 0
lbl_801AB650:
/* 801AB650  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB654  48 1B 6B D1 */	bl _restgpr_28
/* 801AB658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB65C  7C 08 03 A6 */	mtlr r0
/* 801AB660  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB664  4E 80 00 20 */	blr 
