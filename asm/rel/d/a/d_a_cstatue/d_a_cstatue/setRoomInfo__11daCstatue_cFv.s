lbl_80664AA0:
/* 80664AA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80664AA4  7C 08 02 A6 */	mflr r0
/* 80664AA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80664AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80664AB0  4B CF D7 2D */	bl _savegpr_29
/* 80664AB4  7C 7D 1B 78 */	mr r29, r3
/* 80664AB8  3C 60 80 66 */	lis r3, lit_4907@ha /* 0x806677F0@ha */
/* 80664ABC  C0 23 77 F0 */	lfs f1, lit_4907@l(r3)  /* 0x806677F0@l */
/* 80664AC0  C0 1D 07 44 */	lfs f0, 0x744(r29)
/* 80664AC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80664AC8  41 82 00 34 */	beq lbl_80664AFC
/* 80664ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664AD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664AD4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80664AD8  7F E3 FB 78 */	mr r3, r31
/* 80664ADC  38 9D 07 9C */	addi r4, r29, 0x79c
/* 80664AE0  4B A1 06 21 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80664AE4  7C 7E 1B 78 */	mr r30, r3
/* 80664AE8  7F E3 FB 78 */	mr r3, r31
/* 80664AEC  38 9D 07 9C */	addi r4, r29, 0x79c
/* 80664AF0  4B A1 00 F9 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80664AF4  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 80664AF8  48 00 00 10 */	b lbl_80664B08
lbl_80664AFC:
/* 80664AFC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80664B00  8B C3 0D 64 */	lbz r30, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80664B04  7F DE 07 74 */	extsb r30, r30
lbl_80664B08:
/* 80664B08  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 80664B0C  7F C3 F3 78 */	mr r3, r30
/* 80664B10  4B 9C 85 5D */	bl dComIfGp_getReverb__Fi
/* 80664B14  98 7D 0A DC */	stb r3, 0xadc(r29)
/* 80664B18  9B DD 08 A6 */	stb r30, 0x8a6(r29)
/* 80664B1C  9B DD 04 E2 */	stb r30, 0x4e2(r29)
/* 80664B20  39 61 00 20 */	addi r11, r1, 0x20
/* 80664B24  4B CF D7 05 */	bl _restgpr_29
/* 80664B28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80664B2C  7C 08 03 A6 */	mtlr r0
/* 80664B30  38 21 00 20 */	addi r1, r1, 0x20
/* 80664B34  4E 80 00 20 */	blr 
