lbl_80248954:
/* 80248954  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80248958  7C 08 02 A6 */	mflr r0
/* 8024895C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80248960  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80248964  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80248968  39 61 00 20 */	addi r11, r1, 0x20
/* 8024896C  48 11 98 69 */	bl _savegpr_27
/* 80248970  7C 7F 1B 78 */	mr r31, r3
/* 80248974  7C 9C 23 78 */	mr r28, r4
/* 80248978  7C BB 2B 78 */	mr r27, r5
/* 8024897C  4B FF 37 61 */	bl __ct__14dMsgScrnBase_cFv
/* 80248980  3C 80 80 3C */	lis r4, __vt__14dMsgScrnTree_c@ha /* 0x803C1420@ha */
/* 80248984  38 04 14 20 */	addi r0, r4, __vt__14dMsgScrnTree_c@l /* 0x803C1420@l */
/* 80248988  90 1F 00 00 */	stw r0, 0(r31)
/* 8024898C  28 1B 00 00 */	cmplwi r27, 0
/* 80248990  41 82 00 0C */	beq lbl_8024899C
/* 80248994  93 7F 00 D8 */	stw r27, 0xd8(r31)
/* 80248998  48 00 00 10 */	b lbl_802489A8
lbl_8024899C:
/* 8024899C  38 60 00 07 */	li r3, 7
/* 802489A0  4B DE 5A 31 */	bl dComIfGp_getSubHeap2D__Fi
/* 802489A4  90 7F 00 D8 */	stw r3, 0xd8(r31)
lbl_802489A8:
/* 802489A8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 802489AC  48 08 5D D9 */	bl getTotalFreeSize__7JKRHeapFv
/* 802489B0  7F E3 FB 78 */	mr r3, r31
/* 802489B4  4B FF 37 B9 */	bl init__14dMsgScrnBase_cFv
/* 802489B8  28 1C 00 00 */	cmplwi r28, 0
/* 802489BC  40 82 00 10 */	bne lbl_802489CC
/* 802489C0  4B DC C0 31 */	bl mDoExt_getMesgFont__Fv
/* 802489C4  90 7F 00 54 */	stw r3, 0x54(r31)
/* 802489C8  48 00 00 08 */	b lbl_802489D0
lbl_802489CC:
/* 802489CC  93 9F 00 54 */	stw r28, 0x54(r31)
lbl_802489D0:
/* 802489D0  38 60 01 18 */	li r3, 0x118
/* 802489D4  48 08 62 79 */	bl __nw__FUl
/* 802489D8  7C 60 1B 79 */	or. r0, r3, r3
/* 802489DC  41 82 00 0C */	beq lbl_802489E8
/* 802489E0  48 0A FA B9 */	bl __ct__9J2DScreenFv
/* 802489E4  7C 60 1B 78 */	mr r0, r3
lbl_802489E8:
/* 802489E8  90 1F 00 04 */	stw r0, 4(r31)
/* 802489EC  80 7F 00 04 */	lwz r3, 4(r31)
/* 802489F0  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_tree__stringBase0@ha /* 0x80399C30@ha */
/* 802489F4  38 84 9C 30 */	addi r4, r4, msg_scrn_d_msg_scrn_tree__stringBase0@l /* 0x80399C30@l */
/* 802489F8  3C A0 01 02 */	lis r5, 0x102
/* 802489FC  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80248A00  3B 66 61 C0 */	addi r27, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80248A04  80 DB 5C 74 */	lwz r6, 0x5c74(r27)
/* 80248A08  48 0A FC 41 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80248A0C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248A10  48 00 C6 D9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80248A14  38 60 00 04 */	li r3, 4
/* 80248A18  64 63 00 04 */	oris r3, r3, 4
/* 80248A1C  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80248A20  38 60 00 05 */	li r3, 5
/* 80248A24  64 63 00 05 */	oris r3, r3, 5
/* 80248A28  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80248A2C  38 60 00 06 */	li r3, 6
/* 80248A30  64 63 00 06 */	oris r3, r3, 6
/* 80248A34  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80248A38  38 60 00 07 */	li r3, 7
/* 80248A3C  64 63 00 07 */	oris r3, r3, 7
/* 80248A40  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80248A44  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_tree__stringBase0@ha /* 0x80399C30@ha */
/* 80248A48  38 84 9C 30 */	addi r4, r4, msg_scrn_d_msg_scrn_tree__stringBase0@l /* 0x80399C30@l */
/* 80248A4C  38 64 00 18 */	addi r3, r4, 0x18
/* 80248A50  80 9B 5C 74 */	lwz r4, 0x5c74(r27)
/* 80248A54  48 08 B8 1D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80248A58  48 0C 00 15 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80248A5C  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 80248A60  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_tree__stringBase0@ha /* 0x80399C30@ha */
/* 80248A64  38 84 9C 30 */	addi r4, r4, msg_scrn_d_msg_scrn_tree__stringBase0@l /* 0x80399C30@l */
/* 80248A68  38 64 00 30 */	addi r3, r4, 0x30
/* 80248A6C  80 9B 5C 74 */	lwz r4, 0x5c74(r27)
/* 80248A70  48 08 B8 01 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80248A74  48 0B FF F9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80248A78  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80248A7C  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80248A80  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248A84  81 83 00 00 */	lwz r12, 0(r3)
/* 80248A88  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80248A8C  7D 89 03 A6 */	mtctr r12
/* 80248A90  4E 80 04 21 */	bctrl 
/* 80248A94  C0 02 B3 58 */	lfs f0, lit_3949(r2)
/* 80248A98  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 80248A9C  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_tree__stringBase0@ha /* 0x80399C30@ha */
/* 80248AA0  38 84 9C 30 */	addi r4, r4, msg_scrn_d_msg_scrn_tree__stringBase0@l /* 0x80399C30@l */
/* 80248AA4  38 64 00 48 */	addi r3, r4, 0x48
/* 80248AA8  80 9B 5C 74 */	lwz r4, 0x5c74(r27)
/* 80248AAC  48 08 B7 C5 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80248AB0  48 0B FF BD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80248AB4  90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 80248AB8  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80248ABC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248AC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80248AC4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80248AC8  7D 89 03 A6 */	mtctr r12
/* 80248ACC  4E 80 04 21 */	bctrl 
/* 80248AD0  C0 02 B3 58 */	lfs f0, lit_3949(r2)
/* 80248AD4  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 80248AD8  38 60 00 6C */	li r3, 0x6c
/* 80248ADC  48 08 61 71 */	bl __nw__FUl
/* 80248AE0  7C 60 1B 79 */	or. r0, r3, r3
/* 80248AE4  41 82 00 24 */	beq lbl_80248B08
/* 80248AE8  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248AEC  3C A0 73 69 */	lis r5, 0x7369 /* 0x73697A65@ha */
/* 80248AF0  38 C5 7A 65 */	addi r6, r5, 0x7A65 /* 0x73697A65@l */
/* 80248AF4  38 A0 6E 5F */	li r5, 0x6e5f
/* 80248AF8  38 E0 00 02 */	li r7, 2
/* 80248AFC  39 00 00 00 */	li r8, 0
/* 80248B00  48 00 AE 85 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80248B04  7C 60 1B 78 */	mr r0, r3
lbl_80248B08:
/* 80248B08  90 1F 00 08 */	stw r0, 8(r31)
/* 80248B0C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B10  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B14  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80248B18  81 83 00 00 */	lwz r12, 0(r3)
/* 80248B1C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80248B20  7D 89 03 A6 */	mtctr r12
/* 80248B24  4E 80 04 21 */	bctrl 
/* 80248B28  C0 02 B3 5C */	lfs f0, lit_3950(r2)
/* 80248B2C  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80248B30  D0 04 00 08 */	stfs f0, 8(r4)
/* 80248B34  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B38  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B3C  48 0A F4 91 */	bl animationTransform__7J2DPaneFv
/* 80248B40  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B44  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B48  38 80 00 00 */	li r4, 0
/* 80248B4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80248B50  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80248B54  7D 89 03 A6 */	mtctr r12
/* 80248B58  4E 80 04 21 */	bctrl 
/* 80248B5C  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80248B60  38 A4 02 8C */	addi r5, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80248B64  C0 25 00 B0 */	lfs f1, 0xb0(r5)
/* 80248B68  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B6C  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B70  C0 05 00 84 */	lfs f0, 0x84(r5)
/* 80248B74  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80248B78  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80248B7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80248B80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80248B84  7D 89 03 A6 */	mtctr r12
/* 80248B88  4E 80 04 21 */	bctrl 
/* 80248B8C  38 60 00 6C */	li r3, 0x6c
/* 80248B90  48 08 60 BD */	bl __nw__FUl
/* 80248B94  7C 60 1B 79 */	or. r0, r3, r3
/* 80248B98  41 82 00 24 */	beq lbl_80248BBC
/* 80248B9C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248BA0  3C A0 63 6B */	lis r5, 0x636B /* 0x636B5F62@ha */
/* 80248BA4  38 C5 5F 62 */	addi r6, r5, 0x5F62 /* 0x636B5F62@l */
/* 80248BA8  38 A0 62 61 */	li r5, 0x6261
/* 80248BAC  38 E0 00 00 */	li r7, 0
/* 80248BB0  39 00 00 00 */	li r8, 0
/* 80248BB4  48 00 AD D1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80248BB8  7C 60 1B 78 */	mr r0, r3
lbl_80248BBC:
/* 80248BBC  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 80248BC0  38 60 00 6C */	li r3, 0x6c
/* 80248BC4  48 08 60 89 */	bl __nw__FUl
/* 80248BC8  7C 60 1B 79 */	or. r0, r3, r3
/* 80248BCC  41 82 00 24 */	beq lbl_80248BF0
/* 80248BD0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248BD4  3C A0 6F 74 */	lis r5, 0x6F74 /* 0x6F743030@ha */
/* 80248BD8  38 C5 30 30 */	addi r6, r5, 0x3030 /* 0x6F743030@l */
/* 80248BDC  38 A0 73 70 */	li r5, 0x7370
/* 80248BE0  38 E0 00 00 */	li r7, 0
/* 80248BE4  39 00 00 00 */	li r8, 0
/* 80248BE8  48 00 AD 9D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80248BEC  7C 60 1B 78 */	mr r0, r3
lbl_80248BF0:
/* 80248BF0  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80248BF4  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80248BF8  80 64 00 04 */	lwz r3, 4(r4)
/* 80248BFC  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 80248C00  81 83 00 00 */	lwz r12, 0(r3)
/* 80248C04  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80248C08  7D 89 03 A6 */	mtctr r12
/* 80248C0C  4E 80 04 21 */	bctrl 
/* 80248C10  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248C14  3C 80 74 65 */	lis r4, 0x7465 /* 0x74655F6D@ha */
/* 80248C18  38 C4 5F 6D */	addi r6, r4, 0x5F6D /* 0x74655F6D@l */
/* 80248C1C  3C 80 00 77 */	lis r4, 0x0077 /* 0x00776869@ha */
/* 80248C20  38 A4 68 69 */	addi r5, r4, 0x6869 /* 0x00776869@l */
/* 80248C24  81 83 00 00 */	lwz r12, 0(r3)
/* 80248C28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248C2C  7D 89 03 A6 */	mtctr r12
/* 80248C30  4E 80 04 21 */	bctrl 
/* 80248C34  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 80248C38  81 83 00 00 */	lwz r12, 0(r3)
/* 80248C3C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80248C40  7D 89 03 A6 */	mtctr r12
/* 80248C44  4E 80 04 21 */	bctrl 
/* 80248C48  3B C0 00 00 */	li r30, 0
/* 80248C4C  3B A0 00 00 */	li r29, 0
/* 80248C50  3B 80 00 00 */	li r28, 0
/* 80248C54  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_tree__stringBase0@ha /* 0x80399C30@ha */
/* 80248C58  3B 64 9C 30 */	addi r27, r4, msg_scrn_d_msg_scrn_tree__stringBase0@l /* 0x80399C30@l */
lbl_80248C5C:
/* 80248C5C  38 60 00 6C */	li r3, 0x6c
/* 80248C60  48 08 5F ED */	bl __nw__FUl
/* 80248C64  7C 64 1B 79 */	or. r4, r3, r3
/* 80248C68  41 82 00 2C */	beq lbl_80248C94
/* 80248C6C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248C70  3C A0 80 3A */	lis r5, t_tag@ha /* 0x80399C18@ha */
/* 80248C74  38 05 9C 18 */	addi r0, r5, t_tag@l /* 0x80399C18@l */
/* 80248C78  7C C0 E2 14 */	add r6, r0, r28
/* 80248C7C  80 A6 00 00 */	lwz r5, 0(r6)
/* 80248C80  80 C6 00 04 */	lwz r6, 4(r6)
/* 80248C84  38 E0 00 00 */	li r7, 0
/* 80248C88  39 00 00 00 */	li r8, 0
/* 80248C8C  48 00 AC F9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80248C90  7C 64 1B 78 */	mr r4, r3
lbl_80248C94:
/* 80248C94  38 1D 00 0C */	addi r0, r29, 0xc
/* 80248C98  7C 9F 01 2E */	stwx r4, r31, r0
/* 80248C9C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248CA0  80 64 00 04 */	lwz r3, 4(r4)
/* 80248CA4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 80248CA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80248CAC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80248CB0  7D 89 03 A6 */	mtctr r12
/* 80248CB4  4E 80 04 21 */	bctrl 
/* 80248CB8  38 1D 00 0C */	addi r0, r29, 0xc
/* 80248CBC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248CC0  80 64 00 04 */	lwz r3, 4(r4)
/* 80248CC4  38 80 02 00 */	li r4, 0x200
/* 80248CC8  38 BB 00 63 */	addi r5, r27, 0x63
/* 80248CCC  4C C6 31 82 */	crclr 6
/* 80248CD0  48 0B 7A 7D */	bl setString__10J2DTextBoxFsPCce
/* 80248CD4  3B DE 00 01 */	addi r30, r30, 1
/* 80248CD8  2C 1E 00 03 */	cmpwi r30, 3
/* 80248CDC  3B BD 00 04 */	addi r29, r29, 4
/* 80248CE0  3B 9C 00 08 */	addi r28, r28, 8
/* 80248CE4  41 80 FF 78 */	blt lbl_80248C5C
/* 80248CE8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248CEC  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80248CF0  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80248CF4  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 80248CF8  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 80248CFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80248D00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248D04  7D 89 03 A6 */	mtctr r12
/* 80248D08  4E 80 04 21 */	bctrl 
/* 80248D0C  38 00 00 00 */	li r0, 0
/* 80248D10  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80248D14  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248D18  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80248D1C  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80248D20  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 80248D24  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 80248D28  81 83 00 00 */	lwz r12, 0(r3)
/* 80248D2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248D30  7D 89 03 A6 */	mtctr r12
/* 80248D34  4E 80 04 21 */	bctrl 
/* 80248D38  38 00 00 00 */	li r0, 0
/* 80248D3C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80248D40  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248D44  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80248D48  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80248D4C  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 80248D50  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 80248D54  81 83 00 00 */	lwz r12, 0(r3)
/* 80248D58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248D5C  7D 89 03 A6 */	mtctr r12
/* 80248D60  4E 80 04 21 */	bctrl 
/* 80248D64  38 00 00 01 */	li r0, 1
/* 80248D68  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80248D6C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248D70  80 84 00 04 */	lwz r4, 4(r4)
/* 80248D74  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80248D78  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80248D7C  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 80248D80  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80248D84  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248D88  80 84 00 04 */	lwz r4, 4(r4)
/* 80248D8C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80248D90  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80248D94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248D98  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80248D9C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248DA0  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DA4  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80248DA8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80248DAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248DB0  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80248DB4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248DB8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DBC  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 80248DC0  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80248DC4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248DC8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DCC  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80248DD0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80248DD4  3B 60 00 00 */	li r27, 0
/* 80248DD8  3B C0 00 00 */	li r30, 0
/* 80248DDC  C3 E2 B3 60 */	lfs f31, lit_3951(r2)
lbl_80248DE0:
/* 80248DE0  38 1E 00 0C */	addi r0, r30, 0xc
/* 80248DE4  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248DE8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DEC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80248DF0  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 80248DF4  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248DF8  80 64 00 04 */	lwz r3, 4(r4)
/* 80248DFC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80248E00  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80248E04  EC 41 00 28 */	fsubs f2, f1, f0
/* 80248E08  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80248E0C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80248E10  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248E14  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80248E18  81 83 00 00 */	lwz r12, 0(r3)
/* 80248E1C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80248E20  7D 89 03 A6 */	mtctr r12
/* 80248E24  4E 80 04 21 */	bctrl 
/* 80248E28  3B 7B 00 01 */	addi r27, r27, 1
/* 80248E2C  2C 1B 00 03 */	cmpwi r27, 3
/* 80248E30  3B DE 00 04 */	addi r30, r30, 4
/* 80248E34  41 80 FF AC */	blt lbl_80248DE0
/* 80248E38  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80248E3C  48 00 B4 AD */	bl getGlobalPosX__8CPaneMgrFv
/* 80248E40  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 80248E44  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80248E48  48 00 B5 1D */	bl getGlobalPosY__8CPaneMgrFv
/* 80248E4C  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 80248E50  C0 02 B3 58 */	lfs f0, lit_3949(r2)
/* 80248E54  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80248E58  3B 60 00 00 */	li r27, 0
/* 80248E5C  3B C0 00 00 */	li r30, 0
lbl_80248E60:
/* 80248E60  38 1E 00 28 */	addi r0, r30, 0x28
/* 80248E64  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248E68  28 04 00 00 */	cmplwi r4, 0
/* 80248E6C  41 82 00 74 */	beq lbl_80248EE0
/* 80248E70  80 84 00 04 */	lwz r4, 4(r4)
/* 80248E74  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80248E78  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 80248E7C  2C 1B 00 00 */	cmpwi r27, 0
/* 80248E80  40 82 00 24 */	bne lbl_80248EA4
/* 80248E84  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80248E88  80 84 00 04 */	lwz r4, 4(r4)
/* 80248E8C  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80248E90  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80248E94  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80248E98  80 84 00 04 */	lwz r4, 4(r4)
/* 80248E9C  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80248EA0  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_80248EA4:
/* 80248EA4  38 1E 00 28 */	addi r0, r30, 0x28
/* 80248EA8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248EAC  80 64 00 04 */	lwz r3, 4(r4)
/* 80248EB0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80248EB4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80248EB8  EC 41 00 28 */	fsubs f2, f1, f0
/* 80248EBC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80248EC0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80248EC4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80248EC8  C0 02 B3 60 */	lfs f0, lit_3951(r2)
/* 80248ECC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80248ED0  81 83 00 00 */	lwz r12, 0(r3)
/* 80248ED4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80248ED8  7D 89 03 A6 */	mtctr r12
/* 80248EDC  4E 80 04 21 */	bctrl 
lbl_80248EE0:
/* 80248EE0  3B 7B 00 01 */	addi r27, r27, 1
/* 80248EE4  2C 1B 00 03 */	cmpwi r27, 3
/* 80248EE8  3B DE 00 04 */	addi r30, r30, 4
/* 80248EEC  41 80 FF 74 */	blt lbl_80248E60
/* 80248EF0  7F E3 FB 78 */	mr r3, r31
/* 80248EF4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80248EF8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80248EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80248F00  48 11 93 21 */	bl _restgpr_27
/* 80248F04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80248F08  7C 08 03 A6 */	mtlr r0
/* 80248F0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80248F10  4E 80 00 20 */	blr 
