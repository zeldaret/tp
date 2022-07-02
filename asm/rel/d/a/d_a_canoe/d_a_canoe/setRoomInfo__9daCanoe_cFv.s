lbl_804DB008:
/* 804DB008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DB00C  7C 08 02 A6 */	mflr r0
/* 804DB010  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DB014  39 61 00 20 */	addi r11, r1, 0x20
/* 804DB018  4B E8 71 C5 */	bl _savegpr_29
/* 804DB01C  7C 7D 1B 78 */	mr r29, r3
/* 804DB020  3C 60 80 4E */	lis r3, lit_4480@ha /* 0x804DD638@ha */
/* 804DB024  C0 23 D6 38 */	lfs f1, lit_4480@l(r3)  /* 0x804DD638@l */
/* 804DB028  C0 1D 08 90 */	lfs f0, 0x890(r29)
/* 804DB02C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DB030  41 82 00 34 */	beq lbl_804DB064
/* 804DB034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DB038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DB03C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 804DB040  7F E3 FB 78 */	mr r3, r31
/* 804DB044  38 9D 08 E8 */	addi r4, r29, 0x8e8
/* 804DB048  4B B9 A0 B9 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 804DB04C  7C 7E 1B 78 */	mr r30, r3
/* 804DB050  7F E3 FB 78 */	mr r3, r31
/* 804DB054  38 9D 08 E8 */	addi r4, r29, 0x8e8
/* 804DB058  4B B9 9B 91 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 804DB05C  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 804DB060  48 00 00 10 */	b lbl_804DB070
lbl_804DB064:
/* 804DB064  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 804DB068  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 804DB06C  7F DE 07 74 */	extsb r30, r30
lbl_804DB070:
/* 804DB070  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804DB074  7C 00 07 74 */	extsb r0, r0
/* 804DB078  7C 1E 00 00 */	cmpw r30, r0
/* 804DB07C  41 82 00 1C */	beq lbl_804DB098
/* 804DB080  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 804DB084  7F C3 F3 78 */	mr r3, r30
/* 804DB088  4B B5 1F E5 */	bl dComIfGp_getReverb__Fi
/* 804DB08C  98 7D 14 45 */	stb r3, 0x1445(r29)
/* 804DB090  9B DD 05 9E */	stb r30, 0x59e(r29)
/* 804DB094  9B DD 04 E2 */	stb r30, 0x4e2(r29)
lbl_804DB098:
/* 804DB098  39 61 00 20 */	addi r11, r1, 0x20
/* 804DB09C  4B E8 71 8D */	bl _restgpr_29
/* 804DB0A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DB0A4  7C 08 03 A6 */	mtlr r0
/* 804DB0A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DB0AC  4E 80 00 20 */	blr 
