lbl_8024096C:
/* 8024096C  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 80240970  7C 08 02 A6 */	mflr r0
/* 80240974  90 01 02 24 */	stw r0, 0x224(r1)
/* 80240978  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 8024097C  F3 E1 02 18 */	psq_st f31, 536(r1), 0, 0 /* qr0 */
/* 80240980  DB C1 02 00 */	stfd f30, 0x200(r1)
/* 80240984  F3 C1 02 08 */	psq_st f30, 520(r1), 0, 0 /* qr0 */
/* 80240988  DB A1 01 F0 */	stfd f29, 0x1f0(r1)
/* 8024098C  F3 A1 01 F8 */	psq_st f29, 504(r1), 0, 0 /* qr0 */
/* 80240990  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 80240994  48 12 18 31 */	bl _savegpr_23
/* 80240998  7C 7F 1B 78 */	mr r31, r3
/* 8024099C  3C 80 80 3C */	lis r4, cNullVec__6Z2Calc@ha /* 0x803C0FD0@ha */
/* 802409A0  3B C4 0F D0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x803C0FD0@l */
/* 802409A4  4B FF B7 39 */	bl __ct__14dMsgScrnBase_cFv
/* 802409A8  3C 60 80 3C */	lis r3, __vt__14dMsgScrnHowl_c@ha /* 0x803C1190@ha */
/* 802409AC  38 03 11 90 */	addi r0, r3, __vt__14dMsgScrnHowl_c@l /* 0x803C1190@l */
/* 802409B0  90 1F 00 00 */	stw r0, 0(r31)
/* 802409B4  7F E3 FB 78 */	mr r3, r31
/* 802409B8  4B FF B7 B5 */	bl init__14dMsgScrnBase_cFv
/* 802409BC  38 60 01 18 */	li r3, 0x118
/* 802409C0  48 08 E2 8D */	bl __nw__FUl
/* 802409C4  7C 60 1B 79 */	or. r0, r3, r3
/* 802409C8  41 82 00 0C */	beq lbl_802409D4
/* 802409CC  48 0B 7A CD */	bl __ct__9J2DScreenFv
/* 802409D0  7C 60 1B 78 */	mr r0, r3
lbl_802409D4:
/* 802409D4  90 1F 00 04 */	stw r0, 4(r31)
/* 802409D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802409DC  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 802409E0  38 84 9A 20 */	addi r4, r4, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 802409E4  3C A0 00 02 */	lis r5, 2
/* 802409E8  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802409EC  3B 86 61 C0 */	addi r28, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802409F0  80 DC 5C 80 */	lwz r6, 0x5c80(r28)
/* 802409F4  48 0B 7C 55 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 802409F8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802409FC  48 01 46 ED */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80240A00  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240A04  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E653030@ha */
/* 80240A08  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E653030@l */
/* 80240A0C  38 A0 6C 69 */	li r5, 0x6c69
/* 80240A10  81 83 00 00 */	lwz r12, 0(r3)
/* 80240A14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240A18  7D 89 03 A6 */	mtctr r12
/* 80240A1C  4E 80 04 21 */	bctrl 
/* 80240A20  38 00 00 00 */	li r0, 0
/* 80240A24  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80240A28  38 60 00 6C */	li r3, 0x6c
/* 80240A2C  48 08 E2 21 */	bl __nw__FUl
/* 80240A30  7C 60 1B 79 */	or. r0, r3, r3
/* 80240A34  41 82 00 24 */	beq lbl_80240A58
/* 80240A38  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240A3C  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 80240A40  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 80240A44  38 A0 00 6E */	li r5, 0x6e
/* 80240A48  38 E0 00 03 */	li r7, 3
/* 80240A4C  39 00 00 00 */	li r8, 0
/* 80240A50  48 01 2F 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240A54  7C 60 1B 78 */	mr r0, r3
lbl_80240A58:
/* 80240A58  90 1F 00 08 */	stw r0, 8(r31)
/* 80240A5C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240A60  3C 80 61 67 */	lis r4, 0x6167 /* 0x61675F6E@ha */
/* 80240A64  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x61675F6E@l */
/* 80240A68  38 A0 00 00 */	li r5, 0
/* 80240A6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80240A70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240A74  7D 89 03 A6 */	mtctr r12
/* 80240A78  4E 80 04 21 */	bctrl 
/* 80240A7C  38 00 00 00 */	li r0, 0
/* 80240A80  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80240A84  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80240A88  D0 1F 19 94 */	stfs f0, 0x1994(r31)
/* 80240A8C  D0 1F 19 98 */	stfs f0, 0x1998(r31)
/* 80240A90  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240A94  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 80240A98  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 80240A9C  3C 80 77 69 */	lis r4, 0x7769 /* 0x77695F62@ha */
/* 80240AA0  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x77695F62@l */
/* 80240AA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80240AA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240AAC  7D 89 03 A6 */	mtctr r12
/* 80240AB0  4E 80 04 21 */	bctrl 
/* 80240AB4  38 00 00 00 */	li r0, 0
/* 80240AB8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80240ABC  38 60 00 6C */	li r3, 0x6c
/* 80240AC0  48 08 E1 8D */	bl __nw__FUl
/* 80240AC4  7C 60 1B 79 */	or. r0, r3, r3
/* 80240AC8  41 82 00 24 */	beq lbl_80240AEC
/* 80240ACC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240AD0  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80240AD4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80240AD8  38 A0 63 62 */	li r5, 0x6362
/* 80240ADC  38 E0 00 02 */	li r7, 2
/* 80240AE0  39 00 00 00 */	li r8, 0
/* 80240AE4  48 01 2E A1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240AE8  7C 60 1B 78 */	mr r0, r3
lbl_80240AEC:
/* 80240AEC  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80240AF0  38 60 00 6C */	li r3, 0x6c
/* 80240AF4  48 08 E1 59 */	bl __nw__FUl
/* 80240AF8  7C 60 1B 79 */	or. r0, r3, r3
/* 80240AFC  41 82 00 28 */	beq lbl_80240B24
/* 80240B00  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240B04  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80240B08  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80240B0C  3C A0 67 5F */	lis r5, 0x675F /* 0x675F6C74@ha */
/* 80240B10  38 A5 6C 74 */	addi r5, r5, 0x6C74 /* 0x675F6C74@l */
/* 80240B14  38 E0 00 02 */	li r7, 2
/* 80240B18  39 00 00 00 */	li r8, 0
/* 80240B1C  48 01 2E 69 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240B20  7C 60 1B 78 */	mr r0, r3
lbl_80240B24:
/* 80240B24  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 80240B28  38 60 00 6C */	li r3, 0x6c
/* 80240B2C  48 08 E1 21 */	bl __nw__FUl
/* 80240B30  7C 60 1B 79 */	or. r0, r3, r3
/* 80240B34  41 82 00 24 */	beq lbl_80240B58
/* 80240B38  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240B3C  3C A0 62 74 */	lis r5, 0x6274 /* 0x62745F6E@ha */
/* 80240B40  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x62745F6E@l */
/* 80240B44  38 A0 00 61 */	li r5, 0x61
/* 80240B48  38 E0 00 02 */	li r7, 2
/* 80240B4C  39 00 00 00 */	li r8, 0
/* 80240B50  48 01 2E 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240B54  7C 60 1B 78 */	mr r0, r3
lbl_80240B58:
/* 80240B58  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 80240B5C  38 60 00 6C */	li r3, 0x6c
/* 80240B60  48 08 E0 ED */	bl __nw__FUl
/* 80240B64  7C 60 1B 79 */	or. r0, r3, r3
/* 80240B68  41 82 00 28 */	beq lbl_80240B90
/* 80240B6C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240B70  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80240B74  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80240B78  3C A0 67 72 */	lis r5, 0x6772 /* 0x67725F74@ha */
/* 80240B7C  38 A5 5F 74 */	addi r5, r5, 0x5F74 /* 0x67725F74@l */
/* 80240B80  38 E0 00 02 */	li r7, 2
/* 80240B84  39 00 00 00 */	li r8, 0
/* 80240B88  48 01 2D FD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240B8C  7C 60 1B 78 */	mr r0, r3
lbl_80240B90:
/* 80240B90  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80240B94  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240B98  3C 80 69 6E */	lis r4, 0x696E /* 0x696E666F@ha */
/* 80240B9C  38 C4 66 6F */	addi r6, r4, 0x666F /* 0x696E666F@l */
/* 80240BA0  3C 80 66 67 */	lis r4, 0x6667 /* 0x66676C5F@ha */
/* 80240BA4  38 A4 6C 5F */	addi r5, r4, 0x6C5F /* 0x66676C5F@l */
/* 80240BA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80240BAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240BB0  7D 89 03 A6 */	mtctr r12
/* 80240BB4  4E 80 04 21 */	bctrl 
/* 80240BB8  7C 79 1B 78 */	mr r25, r3
/* 80240BBC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240BC0  3C 80 69 6E */	lis r4, 0x696E /* 0x696E666F@ha */
/* 80240BC4  38 C4 66 6F */	addi r6, r4, 0x666F /* 0x696E666F@l */
/* 80240BC8  3C 80 66 67 */	lis r4, 0x6667 /* 0x6667725F@ha */
/* 80240BCC  38 A4 72 5F */	addi r5, r4, 0x725F /* 0x6667725F@l */
/* 80240BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80240BD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240BD8  7D 89 03 A6 */	mtctr r12
/* 80240BDC  4E 80 04 21 */	bctrl 
/* 80240BE0  7C 7D 1B 78 */	mr r29, r3
/* 80240BE4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240BE8  3C 80 69 6E */	lis r4, 0x696E /* 0x696E666F@ha */
/* 80240BEC  38 C4 66 6F */	addi r6, r4, 0x666F /* 0x696E666F@l */
/* 80240BF0  3C 80 67 5F */	lis r4, 0x675F /* 0x675F6C5F@ha */
/* 80240BF4  38 A4 6C 5F */	addi r5, r4, 0x6C5F /* 0x675F6C5F@l */
/* 80240BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80240BFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240C00  7D 89 03 A6 */	mtctr r12
/* 80240C04  4E 80 04 21 */	bctrl 
/* 80240C08  38 00 00 00 */	li r0, 0
/* 80240C0C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80240C10  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240C14  3C 80 69 6E */	lis r4, 0x696E /* 0x696E666F@ha */
/* 80240C18  38 C4 66 6F */	addi r6, r4, 0x666F /* 0x696E666F@l */
/* 80240C1C  3C 80 67 5F */	lis r4, 0x675F /* 0x675F725F@ha */
/* 80240C20  38 A4 72 5F */	addi r5, r4, 0x725F /* 0x675F725F@l */
/* 80240C24  81 83 00 00 */	lwz r12, 0(r3)
/* 80240C28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240C2C  7D 89 03 A6 */	mtctr r12
/* 80240C30  4E 80 04 21 */	bctrl 
/* 80240C34  38 00 00 00 */	li r0, 0
/* 80240C38  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80240C3C  7F 23 CB 78 */	mr r3, r25
/* 80240C40  38 80 00 40 */	li r4, 0x40
/* 80240C44  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 80240C48  38 A5 9A 20 */	addi r5, r5, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 80240C4C  38 A5 00 14 */	addi r5, r5, 0x14
/* 80240C50  4C C6 31 82 */	crclr 6
/* 80240C54  48 0B FA F9 */	bl setString__10J2DTextBoxFsPCce
/* 80240C58  4B DD 3D 99 */	bl mDoExt_getMesgFont__Fv
/* 80240C5C  7C 64 1B 78 */	mr r4, r3
/* 80240C60  7F 23 CB 78 */	mr r3, r25
/* 80240C64  81 99 00 00 */	lwz r12, 0(r25)
/* 80240C68  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80240C6C  7D 89 03 A6 */	mtctr r12
/* 80240C70  4E 80 04 21 */	bctrl 
/* 80240C74  7F 23 CB 78 */	mr r3, r25
/* 80240C78  48 0B F9 E1 */	bl getStringPtr__10J2DTextBoxCFv
/* 80240C7C  7C 65 1B 78 */	mr r5, r3
/* 80240C80  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80240C84  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80240C88  38 80 04 D4 */	li r4, 0x4d4
/* 80240C8C  38 C0 00 00 */	li r6, 0
/* 80240C90  4B FD B8 B5 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80240C94  7F A3 EB 78 */	mr r3, r29
/* 80240C98  38 80 00 40 */	li r4, 0x40
/* 80240C9C  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 80240CA0  38 A5 9A 20 */	addi r5, r5, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 80240CA4  38 A5 00 14 */	addi r5, r5, 0x14
/* 80240CA8  4C C6 31 82 */	crclr 6
/* 80240CAC  48 0B FA A1 */	bl setString__10J2DTextBoxFsPCce
/* 80240CB0  4B DD 3D 41 */	bl mDoExt_getMesgFont__Fv
/* 80240CB4  7C 64 1B 78 */	mr r4, r3
/* 80240CB8  7F A3 EB 78 */	mr r3, r29
/* 80240CBC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80240CC0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80240CC4  7D 89 03 A6 */	mtctr r12
/* 80240CC8  4E 80 04 21 */	bctrl 
/* 80240CCC  7F A3 EB 78 */	mr r3, r29
/* 80240CD0  48 0B F9 89 */	bl getStringPtr__10J2DTextBoxCFv
/* 80240CD4  7C 65 1B 78 */	mr r5, r3
/* 80240CD8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80240CDC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80240CE0  38 80 04 D5 */	li r4, 0x4d5
/* 80240CE4  38 C0 00 00 */	li r6, 0
/* 80240CE8  4B FD B8 5D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80240CEC  38 A0 00 00 */	li r5, 0
/* 80240CF0  98 BF 21 95 */	stb r5, 0x2195(r31)
/* 80240CF4  38 C0 00 00 */	li r6, 0
/* 80240CF8  38 60 00 00 */	li r3, 0
/* 80240CFC  7C A4 2B 78 */	mr r4, r5
/* 80240D00  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80240D04  38 00 03 00 */	li r0, 0x300
/* 80240D08  7C 09 03 A6 */	mtctr r0
lbl_80240D0C:
/* 80240D0C  38 04 01 80 */	addi r0, r4, 0x180
/* 80240D10  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80240D14  38 04 0D 80 */	addi r0, r4, 0xd80
/* 80240D18  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80240D1C  38 06 21 98 */	addi r0, r6, 0x2198
/* 80240D20  7C BF 01 AE */	stbx r5, r31, r0
/* 80240D24  38 06 24 98 */	addi r0, r6, 0x2498
/* 80240D28  7C BF 01 AE */	stbx r5, r31, r0
/* 80240D2C  38 03 1B 14 */	addi r0, r3, 0x1b14
/* 80240D30  7C BF 03 2E */	sthx r5, r31, r0
/* 80240D34  38 C6 00 01 */	addi r6, r6, 1
/* 80240D38  38 63 00 02 */	addi r3, r3, 2
/* 80240D3C  38 84 00 04 */	addi r4, r4, 4
/* 80240D40  42 00 FF CC */	bdnz lbl_80240D0C
/* 80240D44  38 60 00 00 */	li r3, 0
/* 80240D48  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80240D4C  38 00 00 03 */	li r0, 3
/* 80240D50  7C 09 03 A6 */	mtctr r0
lbl_80240D54:
/* 80240D54  38 03 1B 08 */	addi r0, r3, 0x1b08
/* 80240D58  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80240D5C  38 63 00 04 */	addi r3, r3, 4
/* 80240D60  42 00 FF F4 */	bdnz lbl_80240D54
/* 80240D64  38 80 00 00 */	li r4, 0
/* 80240D68  90 9F 21 14 */	stw r4, 0x2114(r31)
/* 80240D6C  90 9F 21 18 */	stw r4, 0x2118(r31)
/* 80240D70  90 9F 21 1C */	stw r4, 0x211c(r31)
/* 80240D74  90 9F 21 20 */	stw r4, 0x2120(r31)
/* 80240D78  38 A0 00 00 */	li r5, 0
/* 80240D7C  38 60 00 00 */	li r3, 0
/* 80240D80  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80240D84  38 00 00 1E */	li r0, 0x1e
/* 80240D88  7C 09 03 A6 */	mtctr r0
lbl_80240D8C:
/* 80240D8C  38 05 21 3A */	addi r0, r5, 0x213a
/* 80240D90  7C 9F 01 AE */	stbx r4, r31, r0
/* 80240D94  38 05 21 58 */	addi r0, r5, 0x2158
/* 80240D98  7C 9F 01 AE */	stbx r4, r31, r0
/* 80240D9C  38 05 21 76 */	addi r0, r5, 0x2176
/* 80240DA0  7C 9F 01 AE */	stbx r4, r31, r0
/* 80240DA4  38 03 19 A0 */	addi r0, r3, 0x19a0
/* 80240DA8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80240DAC  38 03 1A 18 */	addi r0, r3, 0x1a18
/* 80240DB0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80240DB4  38 03 1A 90 */	addi r0, r3, 0x1a90
/* 80240DB8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80240DBC  38 A5 00 01 */	addi r5, r5, 1
/* 80240DC0  38 63 00 04 */	addi r3, r3, 4
/* 80240DC4  42 00 FF C8 */	bdnz lbl_80240D8C
/* 80240DC8  38 80 00 00 */	li r4, 0
/* 80240DCC  98 9F 27 9B */	stb r4, 0x279b(r31)
/* 80240DD0  B0 9F 21 24 */	sth r4, 0x2124(r31)
/* 80240DD4  B0 9F 21 28 */	sth r4, 0x2128(r31)
/* 80240DD8  B0 9F 21 2A */	sth r4, 0x212a(r31)
/* 80240DDC  B0 9F 21 2C */	sth r4, 0x212c(r31)
/* 80240DE0  B0 9F 21 2E */	sth r4, 0x212e(r31)
/* 80240DE4  B0 9F 21 26 */	sth r4, 0x2126(r31)
/* 80240DE8  B0 9F 21 30 */	sth r4, 0x2130(r31)
/* 80240DEC  B0 9F 21 32 */	sth r4, 0x2132(r31)
/* 80240DF0  38 00 00 01 */	li r0, 1
/* 80240DF4  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 80240DF8  98 9F 27 9A */	stb r4, 0x279a(r31)
/* 80240DFC  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80240E00  D0 1F 19 9C */	stfs f0, 0x199c(r31)
/* 80240E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80240E08  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80240E0C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 80240E10  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 80240E14  7C 00 07 35 */	extsh. r0, r0
/* 80240E18  41 82 00 10 */	beq lbl_80240E28
/* 80240E1C  38 00 00 03 */	li r0, 3
/* 80240E20  98 1F 27 98 */	stb r0, 0x2798(r31)
/* 80240E24  48 00 00 08 */	b lbl_80240E2C
lbl_80240E28:
/* 80240E28  98 9F 27 98 */	stb r4, 0x2798(r31)
lbl_80240E2C:
/* 80240E2C  88 1F 27 98 */	lbz r0, 0x2798(r31)
/* 80240E30  98 1F 27 99 */	stb r0, 0x2799(r31)
/* 80240E34  7F E3 FB 78 */	mr r3, r31
/* 80240E38  88 1F 27 98 */	lbz r0, 0x2798(r31)
/* 80240E3C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80240E40  39 9E 00 48 */	addi r12, r30, 0x48
/* 80240E44  7D 8C 02 14 */	add r12, r12, r0
/* 80240E48  48 12 12 3D */	bl __ptmf_scall
/* 80240E4C  60 00 00 00 */	nop 
/* 80240E50  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80240E54  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80240E58  C0 03 03 C8 */	lfs f0, 0x3c8(r3)
/* 80240E5C  D0 1F 19 80 */	stfs f0, 0x1980(r31)
/* 80240E60  C0 22 B2 54 */	lfs f1, lit_4428(r2)
/* 80240E64  C0 1F 19 80 */	lfs f0, 0x1980(r31)
/* 80240E68  EC 01 00 24 */	fdivs f0, f1, f0
/* 80240E6C  FC 00 00 1E */	fctiwz f0, f0
/* 80240E70  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 80240E74  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80240E78  B0 1F 21 36 */	sth r0, 0x2136(r31)
/* 80240E7C  38 00 00 00 */	li r0, 0
/* 80240E80  B0 1F 21 38 */	sth r0, 0x2138(r31)
/* 80240E84  C0 42 B2 58 */	lfs f2, lit_4429(r2)
/* 80240E88  A8 1F 21 36 */	lha r0, 0x2136(r31)
/* 80240E8C  C8 22 B2 68 */	lfd f1, lit_4434(r2)
/* 80240E90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80240E94  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 80240E98  3C 00 43 30 */	lis r0, 0x4330
/* 80240E9C  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 80240EA0  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 80240EA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80240EA8  EC 02 00 24 */	fdivs f0, f2, f0
/* 80240EAC  D0 1F 19 84 */	stfs f0, 0x1984(r31)
/* 80240EB0  38 60 00 6C */	li r3, 0x6c
/* 80240EB4  48 08 DD 99 */	bl __nw__FUl
/* 80240EB8  7C 60 1B 79 */	or. r0, r3, r3
/* 80240EBC  41 82 00 24 */	beq lbl_80240EE0
/* 80240EC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240EC4  3C A0 62 61 */	lis r5, 0x6261 /* 0x62617365@ha */
/* 80240EC8  38 C5 73 65 */	addi r6, r5, 0x7365 /* 0x62617365@l */
/* 80240ECC  38 A0 61 5F */	li r5, 0x615f
/* 80240ED0  38 E0 00 00 */	li r7, 0
/* 80240ED4  39 00 00 00 */	li r8, 0
/* 80240ED8  48 01 2A AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240EDC  7C 60 1B 78 */	mr r0, r3
lbl_80240EE0:
/* 80240EE0  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 80240EE4  38 60 00 6C */	li r3, 0x6c
/* 80240EE8  48 08 DD 65 */	bl __nw__FUl
/* 80240EEC  7C 60 1B 79 */	or. r0, r3, r3
/* 80240EF0  41 82 00 28 */	beq lbl_80240F18
/* 80240EF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80240EF8  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 80240EFC  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 80240F00  3C A0 6C 69 */	lis r5, 0x6C69 /* 0x6C696E65@ha */
/* 80240F04  38 A5 6E 65 */	addi r5, r5, 0x6E65 /* 0x6C696E65@l */
/* 80240F08  38 E0 00 00 */	li r7, 0
/* 80240F0C  39 00 00 00 */	li r8, 0
/* 80240F10  48 01 2A 75 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80240F14  7C 60 1B 78 */	mr r0, r3
lbl_80240F18:
/* 80240F18  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80240F1C  3B 00 00 00 */	li r24, 0
/* 80240F20  3B 40 00 00 */	li r26, 0
/* 80240F24  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80240F28  3B 63 02 8C */	addi r27, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80240F2C  3B 3E 01 18 */	addi r25, r30, 0x118
/* 80240F30  C3 C2 B2 5C */	lfs f30, lit_4430(r2)
lbl_80240F34:
/* 80240F34  80 7F 00 04 */	lwz r3, 4(r31)
/* 80240F38  7C D9 D2 14 */	add r6, r25, r26
/* 80240F3C  80 A6 00 00 */	lwz r5, 0(r6)
/* 80240F40  80 C6 00 04 */	lwz r6, 4(r6)
/* 80240F44  81 83 00 00 */	lwz r12, 0(r3)
/* 80240F48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80240F4C  7D 89 03 A6 */	mtctr r12
/* 80240F50  4E 80 04 21 */	bctrl 
/* 80240F54  7C 77 1B 78 */	mr r23, r3
/* 80240F58  2C 18 00 00 */	cmpwi r24, 0
/* 80240F5C  40 82 00 8C */	bne lbl_80240FE8
/* 80240F60  38 61 01 44 */	addi r3, r1, 0x144
/* 80240F64  48 01 29 CD */	bl __ct__8CPaneMgrFv
/* 80240F68  80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 80240F6C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80240F70  80 A4 00 04 */	lwz r5, 4(r4)
/* 80240F74  38 C1 01 14 */	addi r6, r1, 0x114
/* 80240F78  38 E0 00 00 */	li r7, 0
/* 80240F7C  39 00 00 01 */	li r8, 1
/* 80240F80  39 20 00 00 */	li r9, 0
/* 80240F84  48 01 3D 0D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80240F88  80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 80240F8C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80240F90  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 80240F94  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80240F98  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 80240F9C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80240FA0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80240FA4  38 81 01 44 */	addi r4, r1, 0x144
/* 80240FA8  7E E5 BB 78 */	mr r5, r23
/* 80240FAC  38 C0 00 01 */	li r6, 1
/* 80240FB0  38 E0 00 00 */	li r7, 0
/* 80240FB4  48 01 3F 09 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80240FB8  80 61 00 B4 */	lwz r3, 0xb4(r1)
/* 80240FBC  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 80240FC0  90 61 00 CC */	stw r3, 0xcc(r1)
/* 80240FC4  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80240FC8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80240FCC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80240FD0  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80240FD4  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80240FD8  EF E1 00 28 */	fsubs f31, f1, f0
/* 80240FDC  38 61 01 44 */	addi r3, r1, 0x144
/* 80240FE0  38 80 FF FF */	li r4, -1
/* 80240FE4  48 01 2A 35 */	bl __dt__8CPaneMgrFv
lbl_80240FE8:
/* 80240FE8  7E E3 BB 78 */	mr r3, r23
/* 80240FEC  48 0B 61 15 */	bl getBounds__7J2DPaneFv
/* 80240FF0  C3 A3 00 04 */	lfs f29, 4(r3)
/* 80240FF4  7E E3 BB 78 */	mr r3, r23
/* 80240FF8  48 0B 61 09 */	bl getBounds__7J2DPaneFv
/* 80240FFC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80241000  EC 1F 00 2A */	fadds f0, f31, f0
/* 80241004  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80241008  C0 1B 03 E8 */	lfs f0, 0x3e8(r27)
/* 8024100C  EC 20 08 2A */	fadds f1, f0, f1
/* 80241010  7E E3 BB 78 */	mr r3, r23
/* 80241014  FC 40 E8 90 */	fmr f2, f29
/* 80241018  81 97 00 00 */	lwz r12, 0(r23)
/* 8024101C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80241020  7D 89 03 A6 */	mtctr r12
/* 80241024  4E 80 04 21 */	bctrl 
/* 80241028  3B 18 00 01 */	addi r24, r24, 1
/* 8024102C  2C 18 00 07 */	cmpwi r24, 7
/* 80241030  3B 5A 00 08 */	addi r26, r26, 8
/* 80241034  41 80 FF 00 */	blt lbl_80240F34
/* 80241038  3A E0 00 00 */	li r23, 0
/* 8024103C  3B 40 00 00 */	li r26, 0
/* 80241040  3B 60 00 00 */	li r27, 0
/* 80241044  3B 3E 01 00 */	addi r25, r30, 0x100
lbl_80241048:
/* 80241048  38 60 00 6C */	li r3, 0x6c
/* 8024104C  48 08 DC 01 */	bl __nw__FUl
/* 80241050  7C 64 1B 79 */	or. r4, r3, r3
/* 80241054  41 82 00 24 */	beq lbl_80241078
/* 80241058  80 9F 00 04 */	lwz r4, 4(r31)
/* 8024105C  7C D9 DA 14 */	add r6, r25, r27
/* 80241060  80 A6 00 00 */	lwz r5, 0(r6)
/* 80241064  80 C6 00 04 */	lwz r6, 4(r6)
/* 80241068  38 E0 00 00 */	li r7, 0
/* 8024106C  39 00 00 00 */	li r8, 0
/* 80241070  48 01 29 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80241074  7C 64 1B 78 */	mr r4, r3
lbl_80241078:
/* 80241078  38 1A 00 C4 */	addi r0, r26, 0xc4
/* 8024107C  7C 9F 01 2E */	stwx r4, r31, r0
/* 80241080  3A F7 00 01 */	addi r23, r23, 1
/* 80241084  2C 17 00 03 */	cmpwi r23, 3
/* 80241088  3B 5A 00 04 */	addi r26, r26, 4
/* 8024108C  3B 7B 00 08 */	addi r27, r27, 8
/* 80241090  41 80 FF B8 */	blt lbl_80241048
/* 80241094  3A E0 00 00 */	li r23, 0
/* 80241098  3B 60 00 00 */	li r27, 0
/* 8024109C  3B 40 00 00 */	li r26, 0
/* 802410A0  3B DE 01 18 */	addi r30, r30, 0x118
lbl_802410A4:
/* 802410A4  38 60 00 6C */	li r3, 0x6c
/* 802410A8  48 08 DB A5 */	bl __nw__FUl
/* 802410AC  7C 64 1B 79 */	or. r4, r3, r3
/* 802410B0  41 82 00 24 */	beq lbl_802410D4
/* 802410B4  80 9F 00 04 */	lwz r4, 4(r31)
/* 802410B8  7C DE D2 14 */	add r6, r30, r26
/* 802410BC  80 A6 00 00 */	lwz r5, 0(r6)
/* 802410C0  80 C6 00 04 */	lwz r6, 4(r6)
/* 802410C4  38 E0 00 02 */	li r7, 2
/* 802410C8  39 00 00 00 */	li r8, 0
/* 802410CC  48 01 28 B9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802410D0  7C 64 1B 78 */	mr r4, r3
lbl_802410D4:
/* 802410D4  38 1B 00 D0 */	addi r0, r27, 0xd0
/* 802410D8  7C 9F 01 2E */	stwx r4, r31, r0
/* 802410DC  3A F7 00 01 */	addi r23, r23, 1
/* 802410E0  2C 17 00 07 */	cmpwi r23, 7
/* 802410E4  3B 7B 00 04 */	addi r27, r27, 4
/* 802410E8  3B 5A 00 08 */	addi r26, r26, 8
/* 802410EC  41 80 FF B8 */	blt lbl_802410A4
/* 802410F0  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802410F4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 802410F8  80 A4 00 04 */	lwz r5, 4(r4)
/* 802410FC  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80241100  38 E0 00 00 */	li r7, 0
/* 80241104  39 00 00 01 */	li r8, 1
/* 80241108  39 20 00 00 */	li r9, 0
/* 8024110C  48 01 3B 85 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80241110  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80241114  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 80241118  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8024111C  D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 80241120  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80241124  D0 1F 01 30 */	stfs f0, 0x130(r31)
/* 80241128  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8024112C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80241130  80 A4 00 04 */	lwz r5, 4(r4)
/* 80241134  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80241138  38 E0 00 03 */	li r7, 3
/* 8024113C  39 00 00 01 */	li r8, 1
/* 80241140  39 20 00 00 */	li r9, 0
/* 80241144  48 01 3B 4D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80241148  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8024114C  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 80241150  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80241154  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 80241158  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8024115C  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 80241160  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80241164  38 61 00 90 */	addi r3, r1, 0x90
/* 80241168  80 A4 00 04 */	lwz r5, 4(r4)
/* 8024116C  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80241170  38 E0 00 03 */	li r7, 3
/* 80241174  39 00 00 01 */	li r8, 1
/* 80241178  39 20 00 00 */	li r9, 0
/* 8024117C  48 01 3B 15 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80241180  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80241184  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 80241188  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8024118C  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 80241190  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80241194  D0 1F 01 48 */	stfs f0, 0x148(r31)
/* 80241198  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 8024119C  38 61 00 84 */	addi r3, r1, 0x84
/* 802411A0  80 A4 00 04 */	lwz r5, 4(r4)
/* 802411A4  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 802411A8  38 E0 00 00 */	li r7, 0
/* 802411AC  39 00 00 01 */	li r8, 1
/* 802411B0  39 20 00 00 */	li r9, 0
/* 802411B4  48 01 3A DD */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 802411B8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 802411BC  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 802411C0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 802411C4  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 802411C8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 802411CC  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 802411D0  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 802411D4  38 61 00 78 */	addi r3, r1, 0x78
/* 802411D8  80 A4 00 04 */	lwz r5, 4(r4)
/* 802411DC  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 802411E0  38 E0 00 03 */	li r7, 3
/* 802411E4  39 00 00 01 */	li r8, 1
/* 802411E8  39 20 00 00 */	li r9, 0
/* 802411EC  48 01 3A A5 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 802411F0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 802411F4  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 802411F8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 802411FC  D0 1F 01 5C */	stfs f0, 0x15c(r31)
/* 80241200  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80241204  D0 1F 01 60 */	stfs f0, 0x160(r31)
/* 80241208  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 8024120C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80241210  80 A4 00 04 */	lwz r5, 4(r4)
/* 80241214  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80241218  38 E0 00 00 */	li r7, 0
/* 8024121C  39 00 00 01 */	li r8, 1
/* 80241220  39 20 00 00 */	li r9, 0
/* 80241224  48 01 3A 6D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80241228  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8024122C  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 80241230  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80241234  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 80241238  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8024123C  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 80241240  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 80241244  38 61 00 60 */	addi r3, r1, 0x60
/* 80241248  80 A4 00 04 */	lwz r5, 4(r4)
/* 8024124C  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80241250  38 E0 00 03 */	li r7, 3
/* 80241254  39 00 00 01 */	li r8, 1
/* 80241258  39 20 00 00 */	li r9, 0
/* 8024125C  48 01 3A 35 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80241260  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80241264  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 80241268  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8024126C  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 80241270  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80241274  D0 1F 01 78 */	stfs f0, 0x178(r31)
/* 80241278  C0 22 B2 50 */	lfs f1, lit_4427(r2)
/* 8024127C  D0 3F 27 9C */	stfs f1, 0x279c(r31)
/* 80241280  D0 3F 27 A0 */	stfs f1, 0x27a0(r31)
/* 80241284  C0 02 B2 60 */	lfs f0, lit_4431(r2)
/* 80241288  D0 1F 27 A4 */	stfs f0, 0x27a4(r31)
/* 8024128C  D0 3F 27 A8 */	stfs f1, 0x27a8(r31)
/* 80241290  80 7C 5C 80 */	lwz r3, 0x5c80(r28)
/* 80241294  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 80241298  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8024129C  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 802412A0  38 A5 9A 20 */	addi r5, r5, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 802412A4  38 A5 00 15 */	addi r5, r5, 0x15
/* 802412A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802412AC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802412B0  7D 89 03 A6 */	mtctr r12
/* 802412B4  4E 80 04 21 */	bctrl 
/* 802412B8  7C 77 1B 78 */	mr r23, r3
/* 802412BC  38 60 01 50 */	li r3, 0x150
/* 802412C0  48 08 D9 8D */	bl __nw__FUl
/* 802412C4  7C 60 1B 79 */	or. r0, r3, r3
/* 802412C8  41 82 00 10 */	beq lbl_802412D8
/* 802412CC  7E E4 BB 78 */	mr r4, r23
/* 802412D0  48 0B B4 39 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 802412D4  7C 60 1B 78 */	mr r0, r3
lbl_802412D8:
/* 802412D8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 802412DC  38 60 00 FF */	li r3, 0xff
/* 802412E0  98 61 00 58 */	stb r3, 0x58(r1)
/* 802412E4  98 61 00 59 */	stb r3, 0x59(r1)
/* 802412E8  38 00 00 71 */	li r0, 0x71
/* 802412EC  98 01 00 5A */	stb r0, 0x5a(r1)
/* 802412F0  98 61 00 5B */	stb r3, 0x5b(r1)
/* 802412F4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 802412F8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802412FC  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 80241300  38 81 00 5C */	addi r4, r1, 0x5c
/* 80241304  81 83 00 00 */	lwz r12, 0(r3)
/* 80241308  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8024130C  7D 89 03 A6 */	mtctr r12
/* 80241310  4E 80 04 21 */	bctrl 
/* 80241314  80 7C 5C 80 */	lwz r3, 0x5c80(r28)
/* 80241318  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8024131C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 80241320  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 80241324  38 A5 9A 20 */	addi r5, r5, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 80241328  38 A5 00 2C */	addi r5, r5, 0x2c
/* 8024132C  81 83 00 00 */	lwz r12, 0(r3)
/* 80241330  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80241334  7D 89 03 A6 */	mtctr r12
/* 80241338  4E 80 04 21 */	bctrl 
/* 8024133C  7C 79 1B 78 */	mr r25, r3
/* 80241340  38 60 01 50 */	li r3, 0x150
/* 80241344  48 08 D9 09 */	bl __nw__FUl
/* 80241348  7C 60 1B 79 */	or. r0, r3, r3
/* 8024134C  41 82 00 10 */	beq lbl_8024135C
/* 80241350  7F 24 CB 78 */	mr r4, r25
/* 80241354  48 0B B3 B5 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 80241358  7C 60 1B 78 */	mr r0, r3
lbl_8024135C:
/* 8024135C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80241360  80 7F 00 04 */	lwz r3, 4(r31)
/* 80241364  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E653030@ha */
/* 80241368  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E653030@l */
/* 8024136C  38 A0 6C 69 */	li r5, 0x6c69
/* 80241370  81 83 00 00 */	lwz r12, 0(r3)
/* 80241374  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80241378  7D 89 03 A6 */	mtctr r12
/* 8024137C  4E 80 04 21 */	bctrl 
/* 80241380  7C 64 1B 78 */	mr r4, r3
/* 80241384  38 61 00 48 */	addi r3, r1, 0x48
/* 80241388  81 84 00 00 */	lwz r12, 0(r4)
/* 8024138C  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80241390  7D 89 03 A6 */	mtctr r12
/* 80241394  4E 80 04 21 */	bctrl 
/* 80241398  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8024139C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802413A0  80 7F 00 04 */	lwz r3, 4(r31)
/* 802413A4  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E653030@ha */
/* 802413A8  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E653030@l */
/* 802413AC  38 A0 6C 69 */	li r5, 0x6c69
/* 802413B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802413B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802413B8  7D 89 03 A6 */	mtctr r12
/* 802413BC  4E 80 04 21 */	bctrl 
/* 802413C0  7C 64 1B 78 */	mr r4, r3
/* 802413C4  38 61 00 50 */	addi r3, r1, 0x50
/* 802413C8  81 84 00 00 */	lwz r12, 0(r4)
/* 802413CC  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 802413D0  7D 89 03 A6 */	mtctr r12
/* 802413D4  4E 80 04 21 */	bctrl 
/* 802413D8  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802413DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802413E0  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 802413E4  38 81 00 54 */	addi r4, r1, 0x54
/* 802413E8  38 A1 00 4C */	addi r5, r1, 0x4c
/* 802413EC  81 83 00 00 */	lwz r12, 0(r3)
/* 802413F0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 802413F4  7D 89 03 A6 */	mtctr r12
/* 802413F8  4E 80 04 21 */	bctrl 
/* 802413FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80241400  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80241404  80 7C 5D 30 */	lwz r3, 0x5d30(r28)
/* 80241408  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8024140C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 80241410  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 80241414  38 A5 9A 20 */	addi r5, r5, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 80241418  38 A5 00 3C */	addi r5, r5, 0x3c
/* 8024141C  81 83 00 00 */	lwz r12, 0(r3)
/* 80241420  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80241424  7D 89 03 A6 */	mtctr r12
/* 80241428  4E 80 04 21 */	bctrl 
/* 8024142C  7C 7E 1B 78 */	mr r30, r3
/* 80241430  38 60 01 50 */	li r3, 0x150
/* 80241434  48 08 D8 19 */	bl __nw__FUl
/* 80241438  7C 60 1B 79 */	or. r0, r3, r3
/* 8024143C  41 82 00 10 */	beq lbl_8024144C
/* 80241440  7F C4 F3 78 */	mr r4, r30
/* 80241444  48 0B B2 C5 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 80241448  7C 60 1B 78 */	mr r0, r3
lbl_8024144C:
/* 8024144C  90 1F 01 04 */	stw r0, 0x104(r31)
/* 80241450  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80241454  3B 43 02 8C */	addi r26, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80241458  80 1A 03 C0 */	lwz r0, 0x3c0(r26)
/* 8024145C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80241460  80 1A 03 BC */	lwz r0, 0x3bc(r26)
/* 80241464  90 01 00 44 */	stw r0, 0x44(r1)
/* 80241468  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 8024146C  38 81 00 44 */	addi r4, r1, 0x44
/* 80241470  38 A1 00 40 */	addi r5, r1, 0x40
/* 80241474  81 83 00 00 */	lwz r12, 0(r3)
/* 80241478  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8024147C  7D 89 03 A6 */	mtctr r12
/* 80241480  4E 80 04 21 */	bctrl 
/* 80241484  3A E0 00 00 */	li r23, 0
/* 80241488  3B 60 00 00 */	li r27, 0
lbl_8024148C:
/* 8024148C  38 60 01 50 */	li r3, 0x150
/* 80241490  48 08 D7 BD */	bl __nw__FUl
/* 80241494  7C 60 1B 79 */	or. r0, r3, r3
/* 80241498  41 82 00 10 */	beq lbl_802414A8
/* 8024149C  7F C4 F3 78 */	mr r4, r30
/* 802414A0  48 0B B2 69 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 802414A4  7C 60 1B 78 */	mr r0, r3
lbl_802414A8:
/* 802414A8  38 7B 01 08 */	addi r3, r27, 0x108
/* 802414AC  7C 1F 19 2E */	stwx r0, r31, r3
/* 802414B0  80 1A 03 C0 */	lwz r0, 0x3c0(r26)
/* 802414B4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802414B8  80 1A 03 BC */	lwz r0, 0x3bc(r26)
/* 802414BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802414C0  7C 7F 18 2E */	lwzx r3, r31, r3
/* 802414C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 802414C8  38 A1 00 38 */	addi r5, r1, 0x38
/* 802414CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802414D0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 802414D4  7D 89 03 A6 */	mtctr r12
/* 802414D8  4E 80 04 21 */	bctrl 
/* 802414DC  3A F7 00 01 */	addi r23, r23, 1
/* 802414E0  2C 17 00 05 */	cmpwi r23, 5
/* 802414E4  3B 7B 00 04 */	addi r27, r27, 4
/* 802414E8  41 80 FF A4 */	blt lbl_8024148C
/* 802414EC  38 00 00 00 */	li r0, 0
/* 802414F0  B0 1F 21 34 */	sth r0, 0x2134(r31)
/* 802414F4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802414F8  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E653030@ha */
/* 802414FC  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E653030@l */
/* 80241500  38 A0 6C 69 */	li r5, 0x6c69
/* 80241504  81 83 00 00 */	lwz r12, 0(r3)
/* 80241508  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024150C  7D 89 03 A6 */	mtctr r12
/* 80241510  4E 80 04 21 */	bctrl 
/* 80241514  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80241518  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8024151C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80241520  D0 1F 19 88 */	stfs f0, 0x1988(r31)
/* 80241524  80 7F 00 04 */	lwz r3, 4(r31)
/* 80241528  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E653030@ha */
/* 8024152C  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E653030@l */
/* 80241530  38 A0 6C 69 */	li r5, 0x6c69
/* 80241534  81 83 00 00 */	lwz r12, 0(r3)
/* 80241538  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024153C  7D 89 03 A6 */	mtctr r12
/* 80241540  4E 80 04 21 */	bctrl 
/* 80241544  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80241548  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8024154C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80241550  D0 1F 19 8C */	stfs f0, 0x198c(r31)
/* 80241554  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 80241558  88 03 2E 12 */	lbz r0, 0x2e12(r3)
/* 8024155C  98 1F 21 94 */	stb r0, 0x2194(r31)
/* 80241560  38 00 00 00 */	li r0, 0
/* 80241564  98 1F 21 96 */	stb r0, 0x2196(r31)
/* 80241568  98 1F 21 97 */	stb r0, 0x2197(r31)
/* 8024156C  80 7C 5D 30 */	lwz r3, 0x5d30(r28)
/* 80241570  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 80241574  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 80241578  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_howl__stringBase0@ha /* 0x80399A20@ha */
/* 8024157C  38 A5 9A 20 */	addi r5, r5, msg_scrn_d_msg_scrn_howl__stringBase0@l /* 0x80399A20@l */
/* 80241580  38 A5 00 4C */	addi r5, r5, 0x4c
/* 80241584  81 83 00 00 */	lwz r12, 0(r3)
/* 80241588  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8024158C  7D 89 03 A6 */	mtctr r12
/* 80241590  4E 80 04 21 */	bctrl 
/* 80241594  7C 79 1B 78 */	mr r25, r3
/* 80241598  38 60 01 50 */	li r3, 0x150
/* 8024159C  48 08 D6 B1 */	bl __nw__FUl
/* 802415A0  7C 60 1B 79 */	or. r0, r3, r3
/* 802415A4  41 82 00 10 */	beq lbl_802415B4
/* 802415A8  7F 24 CB 78 */	mr r4, r25
/* 802415AC  48 0B B1 5D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 802415B0  7C 60 1B 78 */	mr r0, r3
lbl_802415B4:
/* 802415B4  90 1F 01 24 */	stw r0, 0x124(r31)
/* 802415B8  38 80 00 FF */	li r4, 0xff
/* 802415BC  98 81 00 28 */	stb r4, 0x28(r1)
/* 802415C0  38 00 00 C8 */	li r0, 0xc8
/* 802415C4  98 01 00 29 */	stb r0, 0x29(r1)
/* 802415C8  38 60 00 00 */	li r3, 0
/* 802415CC  98 61 00 2A */	stb r3, 0x2a(r1)
/* 802415D0  98 81 00 2B */	stb r4, 0x2b(r1)
/* 802415D4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802415D8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802415DC  98 61 00 30 */	stb r3, 0x30(r1)
/* 802415E0  98 61 00 31 */	stb r3, 0x31(r1)
/* 802415E4  98 61 00 32 */	stb r3, 0x32(r1)
/* 802415E8  98 61 00 33 */	stb r3, 0x33(r1)
/* 802415EC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802415F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802415F4  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 802415F8  38 81 00 34 */	addi r4, r1, 0x34
/* 802415FC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80241600  81 83 00 00 */	lwz r12, 0(r3)
/* 80241604  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80241608  7D 89 03 A6 */	mtctr r12
/* 8024160C  4E 80 04 21 */	bctrl 
/* 80241610  38 A0 00 FF */	li r5, 0xff
/* 80241614  98 A1 00 08 */	stb r5, 8(r1)
/* 80241618  98 A1 00 09 */	stb r5, 9(r1)
/* 8024161C  98 A1 00 0A */	stb r5, 0xa(r1)
/* 80241620  98 A1 00 0B */	stb r5, 0xb(r1)
/* 80241624  80 01 00 08 */	lwz r0, 8(r1)
/* 80241628  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024162C  38 80 00 80 */	li r4, 0x80
/* 80241630  98 81 00 10 */	stb r4, 0x10(r1)
/* 80241634  98 81 00 11 */	stb r4, 0x11(r1)
/* 80241638  98 81 00 12 */	stb r4, 0x12(r1)
/* 8024163C  38 60 00 00 */	li r3, 0
/* 80241640  98 61 00 13 */	stb r3, 0x13(r1)
/* 80241644  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80241648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024164C  98 A1 00 18 */	stb r5, 0x18(r1)
/* 80241650  98 A1 00 19 */	stb r5, 0x19(r1)
/* 80241654  98 A1 00 1A */	stb r5, 0x1a(r1)
/* 80241658  98 A1 00 1B */	stb r5, 0x1b(r1)
/* 8024165C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80241660  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80241664  98 81 00 20 */	stb r4, 0x20(r1)
/* 80241668  98 81 00 21 */	stb r4, 0x21(r1)
/* 8024166C  98 81 00 22 */	stb r4, 0x22(r1)
/* 80241670  98 61 00 23 */	stb r3, 0x23(r1)
/* 80241674  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80241678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024167C  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80241680  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80241684  98 03 01 38 */	stb r0, 0x138(r3)
/* 80241688  88 01 00 25 */	lbz r0, 0x25(r1)
/* 8024168C  98 03 01 39 */	stb r0, 0x139(r3)
/* 80241690  88 01 00 26 */	lbz r0, 0x26(r1)
/* 80241694  98 03 01 3A */	stb r0, 0x13a(r3)
/* 80241698  88 01 00 27 */	lbz r0, 0x27(r1)
/* 8024169C  98 03 01 3B */	stb r0, 0x13b(r3)
/* 802416A0  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802416A4  98 03 01 3C */	stb r0, 0x13c(r3)
/* 802416A8  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 802416AC  98 03 01 3D */	stb r0, 0x13d(r3)
/* 802416B0  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 802416B4  98 03 01 3E */	stb r0, 0x13e(r3)
/* 802416B8  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802416BC  98 03 01 3F */	stb r0, 0x13f(r3)
/* 802416C0  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802416C4  98 03 01 40 */	stb r0, 0x140(r3)
/* 802416C8  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802416CC  98 03 01 41 */	stb r0, 0x141(r3)
/* 802416D0  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802416D4  98 03 01 42 */	stb r0, 0x142(r3)
/* 802416D8  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802416DC  98 03 01 43 */	stb r0, 0x143(r3)
/* 802416E0  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802416E4  98 03 01 44 */	stb r0, 0x144(r3)
/* 802416E8  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802416EC  98 03 01 45 */	stb r0, 0x145(r3)
/* 802416F0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802416F4  98 03 01 46 */	stb r0, 0x146(r3)
/* 802416F8  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802416FC  98 03 01 47 */	stb r0, 0x147(r3)
/* 80241700  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80241704  38 80 00 00 */	li r4, 0
/* 80241708  81 83 00 00 */	lwz r12, 0(r3)
/* 8024170C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80241710  7D 89 03 A6 */	mtctr r12
/* 80241714  4E 80 04 21 */	bctrl 
/* 80241718  88 1F 21 94 */	lbz r0, 0x2194(r31)
/* 8024171C  7C 00 07 75 */	extsb. r0, r0
/* 80241720  41 80 00 28 */	blt lbl_80241748
/* 80241724  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 80241728  38 63 2D 84 */	addi r3, r3, 0x2d84
/* 8024172C  48 08 9C 45 */	bl getCorrectLineNum__13Z2WolfHowlMgrFv
/* 80241730  98 7F 21 96 */	stb r3, 0x2196(r31)
/* 80241734  38 00 00 1E */	li r0, 0x1e
/* 80241738  98 1F 21 97 */	stb r0, 0x2197(r31)
/* 8024173C  7F E3 FB 78 */	mr r3, r31
/* 80241740  48 00 2B C5 */	bl getGuideDataSize__14dMsgScrnHowl_cFv
/* 80241744  B0 7F 21 38 */	sth r3, 0x2138(r31)
lbl_80241748:
/* 80241748  7F E3 FB 78 */	mr r3, r31
/* 8024174C  48 00 09 89 */	bl resetLine__14dMsgScrnHowl_cFv
/* 80241750  7F E3 FB 78 */	mr r3, r31
/* 80241754  E3 E1 02 18 */	psq_l f31, 536(r1), 0, 0 /* qr0 */
/* 80241758  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 8024175C  E3 C1 02 08 */	psq_l f30, 520(r1), 0, 0 /* qr0 */
/* 80241760  CB C1 02 00 */	lfd f30, 0x200(r1)
/* 80241764  E3 A1 01 F8 */	psq_l f29, 504(r1), 0, 0 /* qr0 */
/* 80241768  CB A1 01 F0 */	lfd f29, 0x1f0(r1)
/* 8024176C  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 80241770  48 12 0A A1 */	bl _restgpr_23
/* 80241774  80 01 02 24 */	lwz r0, 0x224(r1)
/* 80241778  7C 08 03 A6 */	mtlr r0
/* 8024177C  38 21 02 20 */	addi r1, r1, 0x220
/* 80241780  4E 80 00 20 */	blr 
