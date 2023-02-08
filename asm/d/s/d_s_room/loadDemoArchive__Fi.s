lbl_8025B1D0:
/* 8025B1D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025B1D4  7C 08 02 A6 */	mflr r0
/* 8025B1D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025B1DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B1E0  48 10 6F FD */	bl _savegpr_29
/* 8025B1E4  7C 7D 1B 78 */	mr r29, r3
/* 8025B1E8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8025B1EC  88 03 61 94 */	lbz r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 8025B1F0  7C 00 07 75 */	extsb. r0, r0
/* 8025B1F4  40 82 00 DC */	bne lbl_8025B2D0
/* 8025B1F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B1FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B200  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8025B204  7F A4 EB 78 */	mr r4, r29
/* 8025B208  4B DC 91 7D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8025B20C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025B210  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8025B214  7D 89 03 A6 */	mtctr r12
/* 8025B218  4E 80 04 21 */	bctrl 
/* 8025B21C  28 03 00 00 */	cmplwi r3, 0
/* 8025B220  41 82 00 B0 */	beq lbl_8025B2D0
/* 8025B224  83 E3 00 04 */	lwz r31, 4(r3)
/* 8025B228  28 1F 00 00 */	cmplwi r31, 0
/* 8025B22C  41 82 00 A4 */	beq lbl_8025B2D0
/* 8025B230  7F A3 EB 78 */	mr r3, r29
/* 8025B234  4B DD 17 49 */	bl getLayerNo__14dComIfG_play_cFi
/* 8025B238  1C 03 00 03 */	mulli r0, r3, 3
/* 8025B23C  7F DF 00 AE */	lbzx r30, r31, r0
/* 8025B240  2C 1E 00 FF */	cmpwi r30, 0xff
/* 8025B244  41 82 00 8C */	beq lbl_8025B2D0
/* 8025B248  7F A3 EB 78 */	mr r3, r29
/* 8025B24C  4B DD 17 31 */	bl getLayerNo__14dComIfG_play_cFi
/* 8025B250  1C 03 00 03 */	mulli r0, r3, 3
/* 8025B254  7C 7F 02 14 */	add r3, r31, r0
/* 8025B258  88 C3 00 01 */	lbz r6, 1(r3)
/* 8025B25C  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8025B260  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 8025B264  3C 80 80 3A */	lis r4, d_s_d_s_room__stringBase0@ha /* 0x8039A388@ha */
/* 8025B268  38 84 A3 88 */	addi r4, r4, d_s_d_s_room__stringBase0@l /* 0x8039A388@l */
/* 8025B26C  38 84 00 34 */	addi r4, r4, 0x34
/* 8025B270  7F C5 F3 78 */	mr r5, r30
/* 8025B274  4C C6 31 82 */	crclr 6
/* 8025B278  48 10 B2 65 */	bl sprintf
/* 8025B27C  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8025B280  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 8025B284  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B288  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B28C  3C 84 00 02 */	addis r4, r4, 2
/* 8025B290  38 A0 00 80 */	li r5, 0x80
/* 8025B294  3C C0 80 3A */	lis r6, d_s_d_s_room__stringBase0@ha /* 0x8039A388@ha */
/* 8025B298  38 C6 A3 88 */	addi r6, r6, d_s_d_s_room__stringBase0@l /* 0x8039A388@l */
/* 8025B29C  38 C6 00 06 */	addi r6, r6, 6
/* 8025B2A0  38 E0 00 00 */	li r7, 0
/* 8025B2A4  39 00 00 00 */	li r8, 0
/* 8025B2A8  38 84 C2 F8 */	addi r4, r4, -15624
/* 8025B2AC  4B DE 0D CD */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8025B2B0  2C 03 00 00 */	cmpwi r3, 0
/* 8025B2B4  40 82 00 14 */	bne lbl_8025B2C8
/* 8025B2B8  38 00 00 00 */	li r0, 0
/* 8025B2BC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8025B2C0  98 03 61 94 */	stb r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 8025B2C4  48 00 00 0C */	b lbl_8025B2D0
lbl_8025B2C8:
/* 8025B2C8  38 60 00 01 */	li r3, 1
/* 8025B2CC  48 00 00 08 */	b lbl_8025B2D4
lbl_8025B2D0:
/* 8025B2D0  38 60 00 00 */	li r3, 0
lbl_8025B2D4:
/* 8025B2D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B2D8  48 10 6F 51 */	bl _restgpr_29
/* 8025B2DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025B2E0  7C 08 03 A6 */	mtlr r0
/* 8025B2E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8025B2E8  4E 80 00 20 */	blr 
