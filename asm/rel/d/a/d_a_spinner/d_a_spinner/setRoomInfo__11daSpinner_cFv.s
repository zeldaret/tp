lbl_804D21E0:
/* 804D21E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D21E4  7C 08 02 A6 */	mflr r0
/* 804D21E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D21EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804D21F0  4B E8 FF ED */	bl _savegpr_29
/* 804D21F4  7C 7D 1B 78 */	mr r29, r3
/* 804D21F8  3C 60 80 4D */	lis r3, lit_4409@ha /* 0x804D4DC8@ha */
/* 804D21FC  C0 23 4D C8 */	lfs f1, lit_4409@l(r3)  /* 0x804D4DC8@l */
/* 804D2200  C0 1D 06 E4 */	lfs f0, 0x6e4(r29)
/* 804D2204  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D2208  41 82 00 34 */	beq lbl_804D223C
/* 804D220C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D2210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D2214  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 804D2218  7F E3 FB 78 */	mr r3, r31
/* 804D221C  38 9D 07 3C */	addi r4, r29, 0x73c
/* 804D2220  4B BA 2E E1 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 804D2224  7C 7E 1B 78 */	mr r30, r3
/* 804D2228  7F E3 FB 78 */	mr r3, r31
/* 804D222C  38 9D 07 3C */	addi r4, r29, 0x73c
/* 804D2230  4B BA 29 B9 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 804D2234  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 804D2238  48 00 00 10 */	b lbl_804D2248
lbl_804D223C:
/* 804D223C  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 804D2240  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 804D2244  7F DE 07 74 */	extsb r30, r30
lbl_804D2248:
/* 804D2248  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 804D224C  7F C3 F3 78 */	mr r3, r30
/* 804D2250  4B B5 AE 1D */	bl dComIfGp_getReverb__Fi
/* 804D2254  98 7D 0A 6E */	stb r3, 0xa6e(r29)
/* 804D2258  9B DD 09 0E */	stb r30, 0x90e(r29)
/* 804D225C  9B DD 04 E2 */	stb r30, 0x4e2(r29)
/* 804D2260  39 61 00 20 */	addi r11, r1, 0x20
/* 804D2264  4B E8 FF C5 */	bl _restgpr_29
/* 804D2268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D226C  7C 08 03 A6 */	mtlr r0
/* 804D2270  38 21 00 20 */	addi r1, r1, 0x20
/* 804D2274  4E 80 00 20 */	blr 
