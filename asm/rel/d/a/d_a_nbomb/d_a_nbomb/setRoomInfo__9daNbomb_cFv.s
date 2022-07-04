lbl_804C8430:
/* 804C8430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C8434  7C 08 02 A6 */	mflr r0
/* 804C8438  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C843C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C8440  4B E9 9D 9D */	bl _savegpr_29
/* 804C8444  7C 7D 1B 78 */	mr r29, r3
/* 804C8448  3C 60 80 4D */	lis r3, lit_5036@ha /* 0x804CC3E4@ha */
/* 804C844C  C0 23 C3 E4 */	lfs f1, lit_5036@l(r3)  /* 0x804CC3E4@l */
/* 804C8450  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 804C8454  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C8458  41 82 00 44 */	beq lbl_804C849C
/* 804C845C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8464  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 804C8468  7F E3 FB 78 */	mr r3, r31
/* 804C846C  38 9D 06 68 */	addi r4, r29, 0x668
/* 804C8470  4B BA CC 91 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 804C8474  7C 7E 1B 78 */	mr r30, r3
/* 804C8478  7F E3 FB 78 */	mr r3, r31
/* 804C847C  38 9D 06 68 */	addi r4, r29, 0x668
/* 804C8480  4B BA C7 69 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 804C8484  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 804C8488  38 7D 06 68 */	addi r3, r29, 0x668
/* 804C848C  4B CE 30 35 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 804C8490  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804C8494  90 1D 0B B4 */	stw r0, 0xbb4(r29)
/* 804C8498  48 00 00 10 */	b lbl_804C84A8
lbl_804C849C:
/* 804C849C  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 804C84A0  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 804C84A4  7F DE 07 74 */	extsb r30, r30
lbl_804C84A8:
/* 804C84A8  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 804C84AC  7F C3 F3 78 */	mr r3, r30
/* 804C84B0  4B B6 4B BD */	bl dComIfGp_getReverb__Fi
/* 804C84B4  98 7D 0B 53 */	stb r3, 0xb53(r29)
/* 804C84B8  9B DD 07 B2 */	stb r30, 0x7b2(r29)
/* 804C84BC  9B DD 04 E2 */	stb r30, 0x4e2(r29)
/* 804C84C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804C84C4  4B E9 9D 65 */	bl _restgpr_29
/* 804C84C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C84CC  7C 08 03 A6 */	mtlr r0
/* 804C84D0  38 21 00 20 */	addi r1, r1, 0x20
/* 804C84D4  4E 80 00 20 */	blr 
