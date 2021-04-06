lbl_804DE558:
/* 804DE558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE55C  7C 08 02 A6 */	mflr r0
/* 804DE560  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE564  39 61 00 20 */	addi r11, r1, 0x20
/* 804DE568  4B E8 3C 75 */	bl _savegpr_29
/* 804DE56C  7C 7D 1B 78 */	mr r29, r3
/* 804DE570  3C 60 80 4E */	lis r3, lit_4543@ha /* 0x804DF938@ha */
/* 804DE574  C0 23 F9 38 */	lfs f1, lit_4543@l(r3)  /* 0x804DF938@l */
/* 804DE578  C0 1D 07 88 */	lfs f0, 0x788(r29)
/* 804DE57C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DE580  41 82 00 34 */	beq lbl_804DE5B4
/* 804DE584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DE588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DE58C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 804DE590  7F E3 FB 78 */	mr r3, r31
/* 804DE594  38 9D 07 E0 */	addi r4, r29, 0x7e0
/* 804DE598  4B B9 6B 69 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 804DE59C  7C 7E 1B 78 */	mr r30, r3
/* 804DE5A0  7F E3 FB 78 */	mr r3, r31
/* 804DE5A4  38 9D 07 E0 */	addi r4, r29, 0x7e0
/* 804DE5A8  4B B9 66 41 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 804DE5AC  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 804DE5B0  48 00 00 10 */	b lbl_804DE5C0
lbl_804DE5B4:
/* 804DE5B4  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804DE5B8  8B C3 0D 64 */	lbz r30, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804DE5BC  7F DE 07 74 */	extsb r30, r30
lbl_804DE5C0:
/* 804DE5C0  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 804DE5C4  7F C3 F3 78 */	mr r3, r30
/* 804DE5C8  4B B4 EA A5 */	bl dComIfGp_getReverb__Fi
/* 804DE5CC  98 7D 0B 08 */	stb r3, 0xb08(r29)
/* 804DE5D0  9B DD 08 EA */	stb r30, 0x8ea(r29)
/* 804DE5D4  9B DD 04 E2 */	stb r30, 0x4e2(r29)
/* 804DE5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DE5DC  4B E8 3C 4D */	bl _restgpr_29
/* 804DE5E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE5E4  7C 08 03 A6 */	mtlr r0
/* 804DE5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE5EC  4E 80 00 20 */	blr 
