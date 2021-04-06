lbl_8020FAB4:
/* 8020FAB4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8020FAB8  7C 08 02 A6 */	mflr r0
/* 8020FABC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8020FAC0  39 61 00 70 */	addi r11, r1, 0x70
/* 8020FAC4  48 15 26 FD */	bl _savegpr_22
/* 8020FAC8  7C 7F 1B 78 */	mr r31, r3
/* 8020FACC  3C A0 80 3A */	lis r5, a_tag@ha /* 0x80398258@ha */
/* 8020FAD0  3B 05 82 58 */	addi r24, r5, a_tag@l /* 0x80398258@l */
/* 8020FAD4  3C A0 80 3A */	lis r5, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 8020FAD8  38 05 6F 88 */	addi r0, r5, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 8020FADC  90 03 00 00 */	stw r0, 0(r3)
/* 8020FAE0  3C A0 80 3C */	lis r5, __vt__13dMeter2Draw_c@ha /* 0x803BF750@ha */
/* 8020FAE4  38 05 F7 50 */	addi r0, r5, __vt__13dMeter2Draw_c@l /* 0x803BF750@l */
/* 8020FAE8  90 03 00 00 */	stw r0, 0(r3)
/* 8020FAEC  38 00 FF FF */	li r0, -1
/* 8020FAF0  90 03 05 48 */	stw r0, 0x548(r3)
/* 8020FAF4  90 03 05 4C */	stw r0, 0x54c(r3)
/* 8020FAF8  90 83 00 74 */	stw r4, 0x74(r3)
/* 8020FAFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020FB00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020FB04  80 64 5E C8 */	lwz r3, 0x5ec8(r4)
/* 8020FB08  4B DF F6 C5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8020FB0C  7C 79 1B 78 */	mr r25, r3
/* 8020FB10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020FB14  3A E4 61 C0 */	addi r23, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020FB18  80 B7 5C F4 */	lwz r5, 0x5cf4(r23)
/* 8020FB1C  3C 80 52 4F */	lis r4, 0x524F /* 0x524F4F54@ha */
/* 8020FB20  38 64 4F 54 */	addi r3, r4, 0x4F54 /* 0x524F4F54@l */
/* 8020FB24  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FB28  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FB2C  48 0C 60 0D */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8020FB30  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 8020FB34  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 8020FB38  90 64 00 10 */	stw r3, 0x10(r4)
/* 8020FB3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020FB40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020FB44  83 44 5C F8 */	lwz r26, 0x5cf8(r4)
/* 8020FB48  48 02 2E F5 */	bl dMsgObject_getGroupID__Fv
/* 8020FB4C  7C 60 07 34 */	extsh r0, r3
/* 8020FB50  54 00 10 3A */	slwi r0, r0, 2
/* 8020FB54  3C 80 80 3C */	lis r4, bmg_filename@ha /* 0x803BF328@ha */
/* 8020FB58  38 84 F3 28 */	addi r4, r4, bmg_filename@l /* 0x803BF328@l */
/* 8020FB5C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8020FB60  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 8020FB64  38 65 4F 54 */	addi r3, r5, 0x4F54 /* 0x524F4F54@l */
/* 8020FB68  7F 45 D3 78 */	mr r5, r26
/* 8020FB6C  48 0C 5F CD */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8020FB70  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 8020FB74  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 8020FB78  90 64 00 14 */	stw r3, 0x14(r4)
/* 8020FB7C  80 B7 5C F4 */	lwz r5, 0x5cf4(r23)
/* 8020FB80  3C 80 52 4F */	lis r4, 0x524F /* 0x524F4F54@ha */
/* 8020FB84  38 64 4F 54 */	addi r3, r4, 0x4F54 /* 0x524F4F54@l */
/* 8020FB88  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FB8C  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FB90  38 84 00 6E */	addi r4, r4, 0x6e
/* 8020FB94  48 0C 5F A5 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8020FB98  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 8020FB9C  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 8020FBA0  90 64 00 18 */	stw r3, 0x18(r4)
/* 8020FBA4  7F 23 CB 78 */	mr r3, r25
/* 8020FBA8  4B DF F6 25 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8020FBAC  38 60 01 18 */	li r3, 0x118
/* 8020FBB0  48 0B F0 9D */	bl __nw__FUl
/* 8020FBB4  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FBB8  41 82 00 0C */	beq lbl_8020FBC4
/* 8020FBBC  48 0E 88 DD */	bl __ct__9J2DScreenFv
/* 8020FBC0  7C 60 1B 78 */	mr r0, r3
lbl_8020FBC4:
/* 8020FBC4  90 1F 00 78 */	stw r0, 0x78(r31)
/* 8020FBC8  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8020FBCC  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FBD0  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FBD4  38 84 00 7B */	addi r4, r4, 0x7b
/* 8020FBD8  3C A0 00 02 */	lis r5, 2
/* 8020FBDC  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020FBE0  3A E6 61 C0 */	addi r23, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020FBE4  80 D7 5D 30 */	lwz r6, 0x5d30(r23)
/* 8020FBE8  48 0E 8A 61 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020FBEC  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8020FBF0  48 04 54 F9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020FBF4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8020FBF8  3C 80 69 6E */	lis r4, 0x696E /* 0x696E6735@ha */
/* 8020FBFC  38 C4 67 35 */	addi r6, r4, 0x6735 /* 0x696E6735@l */
/* 8020FC00  3C 80 6A 75 */	lis r4, 0x6A75 /* 0x6A755F72@ha */
/* 8020FC04  38 A4 5F 72 */	addi r5, r4, 0x5F72 /* 0x6A755F72@l */
/* 8020FC08  81 83 00 00 */	lwz r12, 0(r3)
/* 8020FC0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020FC10  7D 89 03 A6 */	mtctr r12
/* 8020FC14  4E 80 04 21 */	bctrl 
/* 8020FC18  3B 20 00 00 */	li r25, 0
/* 8020FC1C  9B 23 00 B0 */	stb r25, 0xb0(r3)
/* 8020FC20  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8020FC24  D0 1F 07 3C */	stfs f0, 0x73c(r31)
/* 8020FC28  3A C0 00 00 */	li r22, 0
lbl_8020FC2C:
/* 8020FC2C  38 60 00 10 */	li r3, 0x10
/* 8020FC30  48 0B F0 1D */	bl __nw__FUl
/* 8020FC34  7C 64 1B 79 */	or. r4, r3, r3
/* 8020FC38  41 82 00 0C */	beq lbl_8020FC44
/* 8020FC3C  4B F9 EC FD */	bl __ct__15dKantera_icon_cFv
/* 8020FC40  7C 64 1B 78 */	mr r4, r3
lbl_8020FC44:
/* 8020FC44  38 19 00 AC */	addi r0, r25, 0xac
/* 8020FC48  7C 9F 01 2E */	stwx r4, r31, r0
/* 8020FC4C  3A D6 00 01 */	addi r22, r22, 1
/* 8020FC50  2C 16 00 02 */	cmpwi r22, 2
/* 8020FC54  3B 39 00 04 */	addi r25, r25, 4
/* 8020FC58  41 80 FF D4 */	blt lbl_8020FC2C
/* 8020FC5C  38 60 01 18 */	li r3, 0x118
/* 8020FC60  48 0B EF ED */	bl __nw__FUl
/* 8020FC64  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FC68  41 82 00 0C */	beq lbl_8020FC74
/* 8020FC6C  48 0E 88 2D */	bl __ct__9J2DScreenFv
/* 8020FC70  7C 60 1B 78 */	mr r0, r3
lbl_8020FC74:
/* 8020FC74  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 8020FC78  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020FC7C  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FC80  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FC84  38 84 00 90 */	addi r4, r4, 0x90
/* 8020FC88  3C A0 00 02 */	lis r5, 2
/* 8020FC8C  80 D7 5D 30 */	lwz r6, 0x5d30(r23)
/* 8020FC90  48 0E 89 B9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020FC94  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020FC98  48 04 54 51 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020FC9C  38 60 01 18 */	li r3, 0x118
/* 8020FCA0  48 0B EF AD */	bl __nw__FUl
/* 8020FCA4  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FCA8  41 82 00 0C */	beq lbl_8020FCB4
/* 8020FCAC  48 0E 87 ED */	bl __ct__9J2DScreenFv
/* 8020FCB0  7C 60 1B 78 */	mr r0, r3
lbl_8020FCB4:
/* 8020FCB4  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8020FCB8  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8020FCBC  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FCC0  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FCC4  38 84 00 AD */	addi r4, r4, 0xad
/* 8020FCC8  3C A0 00 02 */	lis r5, 2
/* 8020FCCC  80 D7 5D 30 */	lwz r6, 0x5d30(r23)
/* 8020FCD0  48 0E 89 79 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020FCD4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8020FCD8  48 04 54 11 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020FCDC  38 60 00 6C */	li r3, 0x6c
/* 8020FCE0  48 0B EF 6D */	bl __nw__FUl
/* 8020FCE4  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FCE8  41 82 00 24 */	beq lbl_8020FD0C
/* 8020FCEC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 8020FCF0  3C A0 6B 61 */	lis r5, 0x6B61 /* 0x6B615F6E@ha */
/* 8020FCF4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6B615F6E@l */
/* 8020FCF8  38 A0 70 69 */	li r5, 0x7069
/* 8020FCFC  38 E0 00 00 */	li r7, 0
/* 8020FD00  39 00 00 00 */	li r8, 0
/* 8020FD04  48 04 3C 81 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020FD08  7C 60 1B 78 */	mr r0, r3
lbl_8020FD0C:
/* 8020FD0C  90 1F 03 9C */	stw r0, 0x39c(r31)
/* 8020FD10  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8020FD14  3C 80 6B 61 */	lis r4, 0x6B61 /* 0x6B613030@ha */
/* 8020FD18  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6B613030@l */
/* 8020FD1C  38 A0 70 69 */	li r5, 0x7069
/* 8020FD20  81 83 00 00 */	lwz r12, 0(r3)
/* 8020FD24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020FD28  7D 89 03 A6 */	mtctr r12
/* 8020FD2C  4E 80 04 21 */	bctrl 
/* 8020FD30  7C 64 1B 78 */	mr r4, r3
/* 8020FD34  38 61 00 0C */	addi r3, r1, 0xc
/* 8020FD38  81 84 00 00 */	lwz r12, 0(r4)
/* 8020FD3C  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8020FD40  7D 89 03 A6 */	mtctr r12
/* 8020FD44  4E 80 04 21 */	bctrl 
/* 8020FD48  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8020FD4C  98 1F 05 48 */	stb r0, 0x548(r31)
/* 8020FD50  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8020FD54  98 1F 05 49 */	stb r0, 0x549(r31)
/* 8020FD58  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8020FD5C  98 1F 05 4A */	stb r0, 0x54a(r31)
/* 8020FD60  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8020FD64  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 8020FD68  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8020FD6C  3C 80 6B 61 */	lis r4, 0x6B61 /* 0x6B613030@ha */
/* 8020FD70  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6B613030@l */
/* 8020FD74  38 A0 70 69 */	li r5, 0x7069
/* 8020FD78  81 83 00 00 */	lwz r12, 0(r3)
/* 8020FD7C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020FD80  7D 89 03 A6 */	mtctr r12
/* 8020FD84  4E 80 04 21 */	bctrl 
/* 8020FD88  7C 64 1B 78 */	mr r4, r3
/* 8020FD8C  38 61 00 08 */	addi r3, r1, 8
/* 8020FD90  81 84 00 00 */	lwz r12, 0(r4)
/* 8020FD94  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 8020FD98  7D 89 03 A6 */	mtctr r12
/* 8020FD9C  4E 80 04 21 */	bctrl 
/* 8020FDA0  88 01 00 08 */	lbz r0, 8(r1)
/* 8020FDA4  98 1F 05 4C */	stb r0, 0x54c(r31)
/* 8020FDA8  88 01 00 09 */	lbz r0, 9(r1)
/* 8020FDAC  98 1F 05 4D */	stb r0, 0x54d(r31)
/* 8020FDB0  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8020FDB4  98 1F 05 4E */	stb r0, 0x54e(r31)
/* 8020FDB8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8020FDBC  98 1F 05 4F */	stb r0, 0x54f(r31)
/* 8020FDC0  38 60 00 04 */	li r3, 4
/* 8020FDC4  64 63 00 04 */	oris r3, r3, 4
/* 8020FDC8  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8020FDCC  38 60 00 05 */	li r3, 5
/* 8020FDD0  64 63 00 05 */	oris r3, r3, 5
/* 8020FDD4  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8020FDD8  38 60 00 06 */	li r3, 6
/* 8020FDDC  64 63 00 06 */	oris r3, r3, 6
/* 8020FDE0  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8020FDE4  38 60 00 07 */	li r3, 7
/* 8020FDE8  64 63 00 07 */	oris r3, r3, 7
/* 8020FDEC  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8020FDF0  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FDF4  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FDF8  38 64 00 C3 */	addi r3, r4, 0xc3
/* 8020FDFC  80 97 5D 30 */	lwz r4, 0x5d30(r23)
/* 8020FE00  48 0C 44 71 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8020FE04  48 0F 8C 69 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8020FE08  90 7F 05 34 */	stw r3, 0x534(r31)
/* 8020FE0C  7F E3 FB 78 */	mr r3, r31
/* 8020FE10  C0 22 AE 84 */	lfs f1, lit_4183(r2)
/* 8020FE14  48 00 3E D9 */	bl playPikariBckAnimation__13dMeter2Draw_cFf
/* 8020FE18  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FE1C  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 8020FE20  38 64 00 D9 */	addi r3, r4, 0xd9
/* 8020FE24  80 97 5D 30 */	lwz r4, 0x5d30(r23)
/* 8020FE28  48 0C 44 49 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8020FE2C  48 0F 8C 41 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8020FE30  90 7F 05 38 */	stw r3, 0x538(r31)
/* 8020FE34  80 7F 05 38 */	lwz r3, 0x538(r31)
/* 8020FE38  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 8020FE3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020FE40  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8020FE44  7D 89 03 A6 */	mtctr r12
/* 8020FE48  4E 80 04 21 */	bctrl 
/* 8020FE4C  7F E3 FB 78 */	mr r3, r31
/* 8020FE50  C0 22 AE 84 */	lfs f1, lit_4183(r2)
/* 8020FE54  48 00 3F E9 */	bl playPikariBpkAnimation__13dMeter2Draw_cFf
/* 8020FE58  38 60 00 6C */	li r3, 0x6c
/* 8020FE5C  48 0B ED F1 */	bl __nw__FUl
/* 8020FE60  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FE64  41 82 00 24 */	beq lbl_8020FE88
/* 8020FE68  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8020FE6C  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 8020FE70  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 8020FE74  38 A0 00 6E */	li r5, 0x6e
/* 8020FE78  38 E0 00 02 */	li r7, 2
/* 8020FE7C  39 00 00 00 */	li r8, 0
/* 8020FE80  48 04 3B 05 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020FE84  7C 60 1B 78 */	mr r0, r3
lbl_8020FE88:
/* 8020FE88  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 8020FE8C  3B 80 00 00 */	li r28, 0
/* 8020FE90  3B 40 00 00 */	li r26, 0
/* 8020FE94  3B 60 00 00 */	li r27, 0
/* 8020FE98  3B C0 00 00 */	li r30, 0
/* 8020FE9C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020FEA0  3A E4 EB C8 */	addi r23, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020FEA4  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8020FEA8  3B A4 88 D0 */	addi r29, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
lbl_8020FEAC:
/* 8020FEAC  38 60 00 6C */	li r3, 0x6c
/* 8020FEB0  48 0B ED 9D */	bl __nw__FUl
/* 8020FEB4  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FEB8  41 82 00 28 */	beq lbl_8020FEE0
/* 8020FEBC  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8020FEC0  38 18 00 00 */	addi r0, r24, 0
/* 8020FEC4  7C C0 F2 14 */	add r6, r0, r30
/* 8020FEC8  80 A6 00 00 */	lwz r5, 0(r6)
/* 8020FECC  80 C6 00 04 */	lwz r6, 4(r6)
/* 8020FED0  38 E0 00 00 */	li r7, 0
/* 8020FED4  39 00 00 00 */	li r8, 0
/* 8020FED8  48 04 3A AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020FEDC  7C 60 1B 78 */	mr r0, r3
lbl_8020FEE0:
/* 8020FEE0  7F 3F DA 14 */	add r25, r31, r27
/* 8020FEE4  90 19 00 C0 */	stw r0, 0xc0(r25)
/* 8020FEE8  80 99 00 C0 */	lwz r4, 0xc0(r25)
/* 8020FEEC  80 64 00 04 */	lwz r3, 4(r4)
/* 8020FEF0  38 80 00 40 */	li r4, 0x40
/* 8020FEF4  38 BD 00 EF */	addi r5, r29, 0xef
/* 8020FEF8  4C C6 31 82 */	crclr 6
/* 8020FEFC  48 0F 08 51 */	bl setString__10J2DTextBoxFsPCce
/* 8020FF00  80 99 00 C0 */	lwz r4, 0xc0(r25)
/* 8020FF04  82 C4 00 04 */	lwz r22, 4(r4)
/* 8020FF08  4B E0 4A E9 */	bl mDoExt_getMesgFont__Fv
/* 8020FF0C  7C 64 1B 78 */	mr r4, r3
/* 8020FF10  7E C3 B3 78 */	mr r3, r22
/* 8020FF14  81 96 00 00 */	lwz r12, 0(r22)
/* 8020FF18  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8020FF1C  7D 89 03 A6 */	mtctr r12
/* 8020FF20  4E 80 04 21 */	bctrl 
/* 8020FF24  80 99 00 C0 */	lwz r4, 0xc0(r25)
/* 8020FF28  80 84 00 04 */	lwz r4, 4(r4)
/* 8020FF2C  C0 17 02 C4 */	lfs f0, 0x2c4(r23)
/* 8020FF30  D0 04 01 14 */	stfs f0, 0x114(r4)
/* 8020FF34  38 60 00 6C */	li r3, 0x6c
/* 8020FF38  48 0B ED 15 */	bl __nw__FUl
/* 8020FF3C  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FF40  41 82 00 28 */	beq lbl_8020FF68
/* 8020FF44  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8020FF48  38 18 00 28 */	addi r0, r24, 0x28
/* 8020FF4C  7C C0 F2 14 */	add r6, r0, r30
/* 8020FF50  80 A6 00 00 */	lwz r5, 0(r6)
/* 8020FF54  80 C6 00 04 */	lwz r6, 4(r6)
/* 8020FF58  38 E0 00 00 */	li r7, 0
/* 8020FF5C  39 00 00 00 */	li r8, 0
/* 8020FF60  48 04 3A 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020FF64  7C 60 1B 78 */	mr r0, r3
lbl_8020FF68:
/* 8020FF68  90 19 00 D4 */	stw r0, 0xd4(r25)
/* 8020FF6C  80 99 00 D4 */	lwz r4, 0xd4(r25)
/* 8020FF70  80 64 00 04 */	lwz r3, 4(r4)
/* 8020FF74  38 80 00 40 */	li r4, 0x40
/* 8020FF78  38 BD 00 EF */	addi r5, r29, 0xef
/* 8020FF7C  4C C6 31 82 */	crclr 6
/* 8020FF80  48 0F 07 CD */	bl setString__10J2DTextBoxFsPCce
/* 8020FF84  80 99 00 D4 */	lwz r4, 0xd4(r25)
/* 8020FF88  82 C4 00 04 */	lwz r22, 4(r4)
/* 8020FF8C  4B E0 4A 65 */	bl mDoExt_getMesgFont__Fv
/* 8020FF90  7C 64 1B 78 */	mr r4, r3
/* 8020FF94  7E C3 B3 78 */	mr r3, r22
/* 8020FF98  81 96 00 00 */	lwz r12, 0(r22)
/* 8020FF9C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8020FFA0  7D 89 03 A6 */	mtctr r12
/* 8020FFA4  4E 80 04 21 */	bctrl 
/* 8020FFA8  38 60 00 6C */	li r3, 0x6c
/* 8020FFAC  48 0B EC A1 */	bl __nw__FUl
/* 8020FFB0  7C 60 1B 79 */	or. r0, r3, r3
/* 8020FFB4  41 82 00 28 */	beq lbl_8020FFDC
/* 8020FFB8  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8020FFBC  38 18 00 50 */	addi r0, r24, 0x50
/* 8020FFC0  7C C0 F2 14 */	add r6, r0, r30
/* 8020FFC4  80 A6 00 00 */	lwz r5, 0(r6)
/* 8020FFC8  80 C6 00 04 */	lwz r6, 4(r6)
/* 8020FFCC  38 E0 00 00 */	li r7, 0
/* 8020FFD0  39 00 00 00 */	li r8, 0
/* 8020FFD4  48 04 39 B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020FFD8  7C 60 1B 78 */	mr r0, r3
lbl_8020FFDC:
/* 8020FFDC  7F 3F D2 14 */	add r25, r31, r26
/* 8020FFE0  90 19 00 F0 */	stw r0, 0xf0(r25)
/* 8020FFE4  80 99 00 F0 */	lwz r4, 0xf0(r25)
/* 8020FFE8  80 64 00 04 */	lwz r3, 4(r4)
/* 8020FFEC  38 80 00 40 */	li r4, 0x40
/* 8020FFF0  38 BD 00 EF */	addi r5, r29, 0xef
/* 8020FFF4  4C C6 31 82 */	crclr 6
/* 8020FFF8  48 0F 07 55 */	bl setString__10J2DTextBoxFsPCce
/* 8020FFFC  80 99 00 F0 */	lwz r4, 0xf0(r25)
/* 80210000  82 C4 00 04 */	lwz r22, 4(r4)
/* 80210004  4B E0 49 ED */	bl mDoExt_getMesgFont__Fv
/* 80210008  7C 64 1B 78 */	mr r4, r3
/* 8021000C  7E C3 B3 78 */	mr r3, r22
/* 80210010  81 96 00 00 */	lwz r12, 0(r22)
/* 80210014  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80210018  7D 89 03 A6 */	mtctr r12
/* 8021001C  4E 80 04 21 */	bctrl 
/* 80210020  38 60 00 6C */	li r3, 0x6c
/* 80210024  48 0B EC 29 */	bl __nw__FUl
/* 80210028  7C 60 1B 79 */	or. r0, r3, r3
/* 8021002C  41 82 00 28 */	beq lbl_80210054
/* 80210030  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80210034  38 18 00 78 */	addi r0, r24, 0x78
/* 80210038  7C C0 F2 14 */	add r6, r0, r30
/* 8021003C  80 A6 00 00 */	lwz r5, 0(r6)
/* 80210040  80 C6 00 04 */	lwz r6, 4(r6)
/* 80210044  38 E0 00 00 */	li r7, 0
/* 80210048  39 00 00 00 */	li r8, 0
/* 8021004C  48 04 39 39 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80210050  7C 60 1B 78 */	mr r0, r3
lbl_80210054:
/* 80210054  90 19 00 E8 */	stw r0, 0xe8(r25)
/* 80210058  80 99 00 E8 */	lwz r4, 0xe8(r25)
/* 8021005C  80 64 00 04 */	lwz r3, 4(r4)
/* 80210060  38 80 00 40 */	li r4, 0x40
/* 80210064  38 BD 00 EF */	addi r5, r29, 0xef
/* 80210068  4C C6 31 82 */	crclr 6
/* 8021006C  48 0F 06 E1 */	bl setString__10J2DTextBoxFsPCce
/* 80210070  80 99 00 E8 */	lwz r4, 0xe8(r25)
/* 80210074  82 C4 00 04 */	lwz r22, 4(r4)
/* 80210078  4B E0 49 79 */	bl mDoExt_getMesgFont__Fv
/* 8021007C  7C 64 1B 78 */	mr r4, r3
/* 80210080  7E C3 B3 78 */	mr r3, r22
/* 80210084  81 96 00 00 */	lwz r12, 0(r22)
/* 80210088  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8021008C  7D 89 03 A6 */	mtctr r12
/* 80210090  4E 80 04 21 */	bctrl 
/* 80210094  38 60 00 6C */	li r3, 0x6c
/* 80210098  48 0B EB B5 */	bl __nw__FUl
/* 8021009C  7C 60 1B 79 */	or. r0, r3, r3
/* 802100A0  41 82 00 28 */	beq lbl_802100C8
/* 802100A4  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802100A8  38 18 00 A0 */	addi r0, r24, 0xa0
/* 802100AC  7C C0 F2 14 */	add r6, r0, r30
/* 802100B0  80 A6 00 00 */	lwz r5, 0(r6)
/* 802100B4  80 C6 00 04 */	lwz r6, 4(r6)
/* 802100B8  38 E0 00 00 */	li r7, 0
/* 802100BC  39 00 00 00 */	li r8, 0
/* 802100C0  48 04 38 C5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802100C4  7C 60 1B 78 */	mr r0, r3
lbl_802100C8:
/* 802100C8  90 19 00 EC */	stw r0, 0xec(r25)
/* 802100CC  80 99 00 EC */	lwz r4, 0xec(r25)
/* 802100D0  80 64 00 04 */	lwz r3, 4(r4)
/* 802100D4  38 80 00 40 */	li r4, 0x40
/* 802100D8  38 BD 00 EF */	addi r5, r29, 0xef
/* 802100DC  4C C6 31 82 */	crclr 6
/* 802100E0  48 0F 06 6D */	bl setString__10J2DTextBoxFsPCce
/* 802100E4  80 99 00 EC */	lwz r4, 0xec(r25)
/* 802100E8  82 C4 00 04 */	lwz r22, 4(r4)
/* 802100EC  4B E0 49 05 */	bl mDoExt_getMesgFont__Fv
/* 802100F0  7C 64 1B 78 */	mr r4, r3
/* 802100F4  7E C3 B3 78 */	mr r3, r22
/* 802100F8  81 96 00 00 */	lwz r12, 0(r22)
/* 802100FC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80210100  7D 89 03 A6 */	mtctr r12
/* 80210104  4E 80 04 21 */	bctrl 
/* 80210108  3B 9C 00 01 */	addi r28, r28, 1
/* 8021010C  2C 1C 00 05 */	cmpwi r28, 5
/* 80210110  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80210114  3B 7B 00 04 */	addi r27, r27, 4
/* 80210118  3B DE 00 08 */	addi r30, r30, 8
/* 8021011C  41 80 FD 90 */	blt lbl_8020FEAC
/* 80210120  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 80210124  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80210128  C0 02 AE 8C */	lfs f0, lit_4185(r2)
/* 8021012C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80210130  38 80 00 00 */	li r4, 0
/* 80210134  38 A0 00 00 */	li r5, 0
/* 80210138  81 01 00 38 */	lwz r8, 0x38(r1)
/* 8021013C  80 E1 00 3C */	lwz r7, 0x3c(r1)
/* 80210140  C1 02 AE 80 */	lfs f8, lit_4182(r2)
/* 80210144  FC E0 40 90 */	fmr f7, f8
/* 80210148  FC C0 40 90 */	fmr f6, f8
/* 8021014C  FC A0 40 90 */	fmr f5, f8
/* 80210150  FC 80 40 90 */	fmr f4, f8
/* 80210154  FC 60 40 90 */	fmr f3, f8
/* 80210158  FC 40 40 90 */	fmr f2, f8
/* 8021015C  FC 20 40 90 */	fmr f1, f8
/* 80210160  FC 00 40 90 */	fmr f0, f8
/* 80210164  38 00 00 05 */	li r0, 5
/* 80210168  7C 09 03 A6 */	mtctr r0
lbl_8021016C:
/* 8021016C  91 01 00 30 */	stw r8, 0x30(r1)
/* 80210170  90 E1 00 34 */	stw r7, 0x34(r1)
/* 80210174  7D 3F 2A 14 */	add r9, r31, r5
/* 80210178  80 C9 00 C0 */	lwz r6, 0xc0(r9)
/* 8021017C  80 C6 00 04 */	lwz r6, 4(r6)
/* 80210180  C1 21 00 34 */	lfs f9, 0x34(r1)
/* 80210184  C1 41 00 30 */	lfs f10, 0x30(r1)
/* 80210188  FC 0A 40 40 */	fcmpo cr0, f10, f8
/* 8021018C  40 81 00 08 */	ble lbl_80210194
/* 80210190  48 00 00 08 */	b lbl_80210198
lbl_80210194:
/* 80210194  FD 40 40 90 */	fmr f10, f8
lbl_80210198:
/* 80210198  D1 46 01 1C */	stfs f10, 0x11c(r6)
/* 8021019C  FC 09 40 40 */	fcmpo cr0, f9, f8
/* 802101A0  40 81 00 08 */	ble lbl_802101A8
/* 802101A4  48 00 00 08 */	b lbl_802101AC
lbl_802101A8:
/* 802101A8  FD 20 40 90 */	fmr f9, f8
lbl_802101AC:
/* 802101AC  D1 26 01 20 */	stfs f9, 0x120(r6)
/* 802101B0  91 01 00 28 */	stw r8, 0x28(r1)
/* 802101B4  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 802101B8  80 C9 00 D4 */	lwz r6, 0xd4(r9)
/* 802101BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 802101C0  C1 21 00 2C */	lfs f9, 0x2c(r1)
/* 802101C4  C1 41 00 28 */	lfs f10, 0x28(r1)
/* 802101C8  FC 0A 38 40 */	fcmpo cr0, f10, f7
/* 802101CC  40 81 00 08 */	ble lbl_802101D4
/* 802101D0  48 00 00 08 */	b lbl_802101D8
lbl_802101D4:
/* 802101D4  FD 40 38 90 */	fmr f10, f7
lbl_802101D8:
/* 802101D8  D1 46 01 1C */	stfs f10, 0x11c(r6)
/* 802101DC  FC 09 30 40 */	fcmpo cr0, f9, f6
/* 802101E0  40 81 00 08 */	ble lbl_802101E8
/* 802101E4  48 00 00 08 */	b lbl_802101EC
lbl_802101E8:
/* 802101E8  FD 20 30 90 */	fmr f9, f6
lbl_802101EC:
/* 802101EC  D1 26 01 20 */	stfs f9, 0x120(r6)
/* 802101F0  91 01 00 20 */	stw r8, 0x20(r1)
/* 802101F4  90 E1 00 24 */	stw r7, 0x24(r1)
/* 802101F8  7D 3F 22 14 */	add r9, r31, r4
/* 802101FC  80 C9 00 E8 */	lwz r6, 0xe8(r9)
/* 80210200  80 C6 00 04 */	lwz r6, 4(r6)
/* 80210204  C1 21 00 24 */	lfs f9, 0x24(r1)
/* 80210208  C1 41 00 20 */	lfs f10, 0x20(r1)
/* 8021020C  FC 0A 28 40 */	fcmpo cr0, f10, f5
/* 80210210  40 81 00 08 */	ble lbl_80210218
/* 80210214  48 00 00 08 */	b lbl_8021021C
lbl_80210218:
/* 80210218  FD 40 28 90 */	fmr f10, f5
lbl_8021021C:
/* 8021021C  D1 46 01 1C */	stfs f10, 0x11c(r6)
/* 80210220  FC 09 20 40 */	fcmpo cr0, f9, f4
/* 80210224  40 81 00 08 */	ble lbl_8021022C
/* 80210228  48 00 00 08 */	b lbl_80210230
lbl_8021022C:
/* 8021022C  FD 20 20 90 */	fmr f9, f4
lbl_80210230:
/* 80210230  D1 26 01 20 */	stfs f9, 0x120(r6)
/* 80210234  91 01 00 18 */	stw r8, 0x18(r1)
/* 80210238  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8021023C  80 C9 00 EC */	lwz r6, 0xec(r9)
/* 80210240  80 C6 00 04 */	lwz r6, 4(r6)
/* 80210244  C1 21 00 1C */	lfs f9, 0x1c(r1)
/* 80210248  C1 41 00 18 */	lfs f10, 0x18(r1)
/* 8021024C  FC 0A 18 40 */	fcmpo cr0, f10, f3
/* 80210250  40 81 00 08 */	ble lbl_80210258
/* 80210254  48 00 00 08 */	b lbl_8021025C
lbl_80210258:
/* 80210258  FD 40 18 90 */	fmr f10, f3
lbl_8021025C:
/* 8021025C  D1 46 01 1C */	stfs f10, 0x11c(r6)
/* 80210260  FC 09 10 40 */	fcmpo cr0, f9, f2
/* 80210264  40 81 00 08 */	ble lbl_8021026C
/* 80210268  48 00 00 08 */	b lbl_80210270
lbl_8021026C:
/* 8021026C  FD 20 10 90 */	fmr f9, f2
lbl_80210270:
/* 80210270  D1 26 01 20 */	stfs f9, 0x120(r6)
/* 80210274  91 01 00 10 */	stw r8, 0x10(r1)
/* 80210278  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8021027C  80 C9 00 F0 */	lwz r6, 0xf0(r9)
/* 80210280  80 C6 00 04 */	lwz r6, 4(r6)
/* 80210284  C1 21 00 14 */	lfs f9, 0x14(r1)
/* 80210288  C1 41 00 10 */	lfs f10, 0x10(r1)
/* 8021028C  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 80210290  40 81 00 08 */	ble lbl_80210298
/* 80210294  48 00 00 08 */	b lbl_8021029C
lbl_80210298:
/* 80210298  FD 40 08 90 */	fmr f10, f1
lbl_8021029C:
/* 8021029C  D1 46 01 1C */	stfs f10, 0x11c(r6)
/* 802102A0  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 802102A4  40 81 00 08 */	ble lbl_802102AC
/* 802102A8  48 00 00 08 */	b lbl_802102B0
lbl_802102AC:
/* 802102AC  FD 20 00 90 */	fmr f9, f0
lbl_802102B0:
/* 802102B0  D1 26 01 20 */	stfs f9, 0x120(r6)
/* 802102B4  38 84 00 0C */	addi r4, r4, 0xc
/* 802102B8  38 A5 00 04 */	addi r5, r5, 4
/* 802102BC  42 00 FE B0 */	bdnz lbl_8021016C
/* 802102C0  7F E3 FB 78 */	mr r3, r31
/* 802102C4  48 00 0C ED */	bl init__13dMeter2Draw_cFv
/* 802102C8  38 00 00 00 */	li r0, 0
/* 802102CC  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 802102D0  90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 802102D4  90 1F 02 FC */	stw r0, 0x2fc(r31)
/* 802102D8  90 1F 03 6C */	stw r0, 0x36c(r31)
/* 802102DC  7F E3 FB 78 */	mr r3, r31
/* 802102E0  39 61 00 70 */	addi r11, r1, 0x70
/* 802102E4  48 15 1F 29 */	bl _restgpr_22
/* 802102E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802102EC  7C 08 03 A6 */	mtlr r0
/* 802102F0  38 21 00 70 */	addi r1, r1, 0x70
/* 802102F4  4E 80 00 20 */	blr 
