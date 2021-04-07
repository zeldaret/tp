lbl_80244E38:
/* 80244E38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80244E3C  7C 08 02 A6 */	mflr r0
/* 80244E40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80244E44  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80244E48  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80244E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80244E50  48 11 D3 85 */	bl _savegpr_27
/* 80244E54  7C 7F 1B 78 */	mr r31, r3
/* 80244E58  7C 9B 23 78 */	mr r27, r4
/* 80244E5C  4B FF 72 81 */	bl __ct__14dMsgScrnBase_cFv
/* 80244E60  3C 80 80 3C */	lis r4, __vt__16dMsgScrnKanban_c@ha /* 0x803C1240@ha */
/* 80244E64  38 04 12 40 */	addi r0, r4, __vt__16dMsgScrnKanban_c@l /* 0x803C1240@l */
/* 80244E68  90 1F 00 00 */	stw r0, 0(r31)
/* 80244E6C  28 1B 00 00 */	cmplwi r27, 0
/* 80244E70  41 82 00 0C */	beq lbl_80244E7C
/* 80244E74  93 7F 00 D4 */	stw r27, 0xd4(r31)
/* 80244E78  48 00 00 10 */	b lbl_80244E88
lbl_80244E7C:
/* 80244E7C  38 60 00 07 */	li r3, 7
/* 80244E80  4B DE 95 51 */	bl dComIfGp_getSubHeap2D__Fi
/* 80244E84  90 7F 00 D4 */	stw r3, 0xd4(r31)
lbl_80244E88:
/* 80244E88  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80244E8C  48 08 98 F9 */	bl getTotalFreeSize__7JKRHeapFv
/* 80244E90  7F E3 FB 78 */	mr r3, r31
/* 80244E94  4B FF 72 D9 */	bl init__14dMsgScrnBase_cFv
/* 80244E98  38 60 01 18 */	li r3, 0x118
/* 80244E9C  48 08 9D B1 */	bl __nw__FUl
/* 80244EA0  7C 60 1B 79 */	or. r0, r3, r3
/* 80244EA4  41 82 00 0C */	beq lbl_80244EB0
/* 80244EA8  48 0B 35 F1 */	bl __ct__9J2DScreenFv
/* 80244EAC  7C 60 1B 78 */	mr r0, r3
lbl_80244EB0:
/* 80244EB0  90 1F 00 04 */	stw r0, 4(r31)
/* 80244EB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244EB8  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_kanban__stringBase0@ha /* 0x80399AB8@ha */
/* 80244EBC  38 84 9A B8 */	addi r4, r4, msg_scrn_d_msg_scrn_kanban__stringBase0@l /* 0x80399AB8@l */
/* 80244EC0  3C A0 01 02 */	lis r5, 0x102
/* 80244EC4  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80244EC8  3B A6 61 C0 */	addi r29, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80244ECC  80 DD 5C 74 */	lwz r6, 0x5c74(r29)
/* 80244ED0  48 0B 37 79 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80244ED4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244ED8  48 01 02 11 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80244EDC  38 60 00 04 */	li r3, 4
/* 80244EE0  64 63 00 04 */	oris r3, r3, 4
/* 80244EE4  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80244EE8  38 60 00 05 */	li r3, 5
/* 80244EEC  64 63 00 05 */	oris r3, r3, 5
/* 80244EF0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80244EF4  38 60 00 06 */	li r3, 6
/* 80244EF8  64 63 00 06 */	oris r3, r3, 6
/* 80244EFC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80244F00  38 60 00 07 */	li r3, 7
/* 80244F04  64 63 00 07 */	oris r3, r3, 7
/* 80244F08  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80244F0C  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_kanban__stringBase0@ha /* 0x80399AB8@ha */
/* 80244F10  38 84 9A B8 */	addi r4, r4, msg_scrn_d_msg_scrn_kanban__stringBase0@l /* 0x80399AB8@l */
/* 80244F14  38 64 00 19 */	addi r3, r4, 0x19
/* 80244F18  80 9D 5C 74 */	lwz r4, 0x5c74(r29)
/* 80244F1C  48 08 F3 55 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80244F20  48 0C 3B 4D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80244F24  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 80244F28  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_kanban__stringBase0@ha /* 0x80399AB8@ha */
/* 80244F2C  38 84 9A B8 */	addi r4, r4, msg_scrn_d_msg_scrn_kanban__stringBase0@l /* 0x80399AB8@l */
/* 80244F30  38 64 00 32 */	addi r3, r4, 0x32
/* 80244F34  80 9D 5C 74 */	lwz r4, 0x5c74(r29)
/* 80244F38  48 08 F3 39 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80244F3C  48 0C 3B 31 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80244F40  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80244F44  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80244F48  80 9F 00 04 */	lwz r4, 4(r31)
/* 80244F4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80244F50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80244F54  7D 89 03 A6 */	mtctr r12
/* 80244F58  4E 80 04 21 */	bctrl 
/* 80244F5C  C0 02 B2 C0 */	lfs f0, lit_3944(r2)
/* 80244F60  D0 1F 00 D8 */	stfs f0, 0xd8(r31)
/* 80244F64  38 60 00 6C */	li r3, 0x6c
/* 80244F68  48 08 9C E5 */	bl __nw__FUl
/* 80244F6C  7C 60 1B 79 */	or. r0, r3, r3
/* 80244F70  41 82 00 24 */	beq lbl_80244F94
/* 80244F74  80 9F 00 04 */	lwz r4, 4(r31)
/* 80244F78  3C A0 73 69 */	lis r5, 0x7369 /* 0x73697A65@ha */
/* 80244F7C  38 C5 7A 65 */	addi r6, r5, 0x7A65 /* 0x73697A65@l */
/* 80244F80  38 A0 6E 5F */	li r5, 0x6e5f
/* 80244F84  38 E0 00 02 */	li r7, 2
/* 80244F88  39 00 00 00 */	li r8, 0
/* 80244F8C  48 00 E9 F9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80244F90  7C 60 1B 78 */	mr r0, r3
lbl_80244F94:
/* 80244F94  90 1F 00 08 */	stw r0, 8(r31)
/* 80244F98  80 9F 00 08 */	lwz r4, 8(r31)
/* 80244F9C  80 64 00 04 */	lwz r3, 4(r4)
/* 80244FA0  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80244FA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80244FA8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80244FAC  7D 89 03 A6 */	mtctr r12
/* 80244FB0  4E 80 04 21 */	bctrl 
/* 80244FB4  C0 02 B2 C4 */	lfs f0, lit_3945(r2)
/* 80244FB8  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80244FBC  D0 04 00 08 */	stfs f0, 8(r4)
/* 80244FC0  80 9F 00 08 */	lwz r4, 8(r31)
/* 80244FC4  80 64 00 04 */	lwz r3, 4(r4)
/* 80244FC8  48 0B 30 05 */	bl animationTransform__7J2DPaneFv
/* 80244FCC  80 9F 00 08 */	lwz r4, 8(r31)
/* 80244FD0  80 64 00 04 */	lwz r3, 4(r4)
/* 80244FD4  38 80 00 00 */	li r4, 0
/* 80244FD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80244FDC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80244FE0  7D 89 03 A6 */	mtctr r12
/* 80244FE4  4E 80 04 21 */	bctrl 
/* 80244FE8  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80244FEC  38 A4 02 8C */	addi r5, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80244FF0  C0 25 00 AC */	lfs f1, 0xac(r5)
/* 80244FF4  80 9F 00 08 */	lwz r4, 8(r31)
/* 80244FF8  80 64 00 04 */	lwz r3, 4(r4)
/* 80244FFC  C0 05 00 80 */	lfs f0, 0x80(r5)
/* 80245000  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80245004  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80245008  81 83 00 00 */	lwz r12, 0(r3)
/* 8024500C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80245010  7D 89 03 A6 */	mtctr r12
/* 80245014  4E 80 04 21 */	bctrl 
/* 80245018  38 60 00 6C */	li r3, 0x6c
/* 8024501C  48 08 9C 31 */	bl __nw__FUl
/* 80245020  7C 60 1B 79 */	or. r0, r3, r3
/* 80245024  41 82 00 24 */	beq lbl_80245048
/* 80245028  80 9F 00 04 */	lwz r4, 4(r31)
/* 8024502C  3C A0 63 6B */	lis r5, 0x636B /* 0x636B5F62@ha */
/* 80245030  38 C5 5F 62 */	addi r6, r5, 0x5F62 /* 0x636B5F62@l */
/* 80245034  38 A0 62 61 */	li r5, 0x6261
/* 80245038  38 E0 00 00 */	li r7, 0
/* 8024503C  39 00 00 00 */	li r8, 0
/* 80245040  48 00 E9 45 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80245044  7C 60 1B 78 */	mr r0, r3
lbl_80245048:
/* 80245048  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8024504C  38 60 00 6C */	li r3, 0x6c
/* 80245050  48 08 9B FD */	bl __nw__FUl
/* 80245054  7C 60 1B 79 */	or. r0, r3, r3
/* 80245058  41 82 00 24 */	beq lbl_8024507C
/* 8024505C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80245060  3C A0 6F 74 */	lis r5, 0x6F74 /* 0x6F743030@ha */
/* 80245064  38 C5 30 30 */	addi r6, r5, 0x3030 /* 0x6F743030@l */
/* 80245068  38 A0 73 70 */	li r5, 0x7370
/* 8024506C  38 E0 00 00 */	li r7, 0
/* 80245070  39 00 00 00 */	li r8, 0
/* 80245074  48 00 E9 11 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80245078  7C 60 1B 78 */	mr r0, r3
lbl_8024507C:
/* 8024507C  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80245080  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80245084  80 64 00 04 */	lwz r3, 4(r4)
/* 80245088  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 8024508C  81 83 00 00 */	lwz r12, 0(r3)
/* 80245090  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80245094  7D 89 03 A6 */	mtctr r12
/* 80245098  4E 80 04 21 */	bctrl 
/* 8024509C  3B 60 00 00 */	li r27, 0
/* 802450A0  3B C0 00 00 */	li r30, 0
/* 802450A4  3B A0 00 00 */	li r29, 0
lbl_802450A8:
/* 802450A8  38 60 00 6C */	li r3, 0x6c
/* 802450AC  48 08 9B A1 */	bl __nw__FUl
/* 802450B0  7C 64 1B 79 */	or. r4, r3, r3
/* 802450B4  41 82 00 2C */	beq lbl_802450E0
/* 802450B8  80 9F 00 04 */	lwz r4, 4(r31)
/* 802450BC  3C A0 80 3A */	lis r5, t_tag@ha /* 0x80399AA0@ha */
/* 802450C0  38 05 9A A0 */	addi r0, r5, t_tag@l /* 0x80399AA0@l */
/* 802450C4  7C C0 EA 14 */	add r6, r0, r29
/* 802450C8  80 A6 00 00 */	lwz r5, 0(r6)
/* 802450CC  80 C6 00 04 */	lwz r6, 4(r6)
/* 802450D0  38 E0 00 00 */	li r7, 0
/* 802450D4  39 00 00 00 */	li r8, 0
/* 802450D8  48 00 E8 AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802450DC  7C 64 1B 78 */	mr r4, r3
lbl_802450E0:
/* 802450E0  38 1E 00 0C */	addi r0, r30, 0xc
/* 802450E4  7C 9F 01 2E */	stwx r4, r31, r0
/* 802450E8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802450EC  83 84 00 04 */	lwz r28, 4(r4)
/* 802450F0  4B DC F9 01 */	bl mDoExt_getMesgFont__Fv
/* 802450F4  7C 64 1B 78 */	mr r4, r3
/* 802450F8  7F 83 E3 78 */	mr r3, r28
/* 802450FC  81 9C 00 00 */	lwz r12, 0(r28)
/* 80245100  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80245104  7D 89 03 A6 */	mtctr r12
/* 80245108  4E 80 04 21 */	bctrl 
/* 8024510C  3B 7B 00 01 */	addi r27, r27, 1
/* 80245110  2C 1B 00 03 */	cmpwi r27, 3
/* 80245114  3B DE 00 04 */	addi r30, r30, 4
/* 80245118  3B BD 00 08 */	addi r29, r29, 8
/* 8024511C  41 80 FF 8C */	blt lbl_802450A8
/* 80245120  80 7F 00 04 */	lwz r3, 4(r31)
/* 80245124  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80245128  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8024512C  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 80245130  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 80245134  81 83 00 00 */	lwz r12, 0(r3)
/* 80245138  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024513C  7D 89 03 A6 */	mtctr r12
/* 80245140  4E 80 04 21 */	bctrl 
/* 80245144  38 00 00 00 */	li r0, 0
/* 80245148  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8024514C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80245150  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80245154  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80245158  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 8024515C  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 80245160  81 83 00 00 */	lwz r12, 0(r3)
/* 80245164  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80245168  7D 89 03 A6 */	mtctr r12
/* 8024516C  4E 80 04 21 */	bctrl 
/* 80245170  38 00 00 00 */	li r0, 0
/* 80245174  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80245178  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024517C  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80245180  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80245184  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 80245188  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 8024518C  81 83 00 00 */	lwz r12, 0(r3)
/* 80245190  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80245194  7D 89 03 A6 */	mtctr r12
/* 80245198  4E 80 04 21 */	bctrl 
/* 8024519C  38 00 00 01 */	li r0, 1
/* 802451A0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802451A4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802451A8  80 84 00 04 */	lwz r4, 4(r4)
/* 802451AC  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 802451B0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802451B4  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 802451B8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802451BC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802451C0  80 84 00 04 */	lwz r4, 4(r4)
/* 802451C4  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 802451C8  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802451CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 802451D0  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 802451D4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802451D8  80 84 00 04 */	lwz r4, 4(r4)
/* 802451DC  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 802451E0  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802451E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 802451E8  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 802451EC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802451F0  80 84 00 04 */	lwz r4, 4(r4)
/* 802451F4  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 802451F8  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 802451FC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80245200  80 84 00 04 */	lwz r4, 4(r4)
/* 80245204  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80245208  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8024520C  3B 60 00 00 */	li r27, 0
/* 80245210  3B C0 00 00 */	li r30, 0
/* 80245214  C3 E2 B2 C8 */	lfs f31, lit_3946(r2)
lbl_80245218:
/* 80245218  38 1E 00 0C */	addi r0, r30, 0xc
/* 8024521C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80245220  80 84 00 04 */	lwz r4, 4(r4)
/* 80245224  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80245228  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 8024522C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80245230  80 64 00 04 */	lwz r3, 4(r4)
/* 80245234  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80245238  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8024523C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80245240  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80245244  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80245248  EC 01 00 28 */	fsubs f0, f1, f0
/* 8024524C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80245250  81 83 00 00 */	lwz r12, 0(r3)
/* 80245254  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80245258  7D 89 03 A6 */	mtctr r12
/* 8024525C  4E 80 04 21 */	bctrl 
/* 80245260  3B 7B 00 01 */	addi r27, r27, 1
/* 80245264  2C 1B 00 03 */	cmpwi r27, 3
/* 80245268  3B DE 00 04 */	addi r30, r30, 4
/* 8024526C  41 80 FF AC */	blt lbl_80245218
/* 80245270  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80245274  48 00 F0 75 */	bl getGlobalPosX__8CPaneMgrFv
/* 80245278  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 8024527C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80245280  48 00 F0 E5 */	bl getGlobalPosY__8CPaneMgrFv
/* 80245284  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 80245288  C0 02 B2 C0 */	lfs f0, lit_3944(r2)
/* 8024528C  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80245290  3B 60 00 00 */	li r27, 0
/* 80245294  3B C0 00 00 */	li r30, 0
lbl_80245298:
/* 80245298  38 1E 00 28 */	addi r0, r30, 0x28
/* 8024529C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802452A0  28 04 00 00 */	cmplwi r4, 0
/* 802452A4  41 82 00 74 */	beq lbl_80245318
/* 802452A8  80 84 00 04 */	lwz r4, 4(r4)
/* 802452AC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 802452B0  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 802452B4  2C 1B 00 00 */	cmpwi r27, 0
/* 802452B8  40 82 00 24 */	bne lbl_802452DC
/* 802452BC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802452C0  80 84 00 04 */	lwz r4, 4(r4)
/* 802452C4  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 802452C8  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 802452CC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802452D0  80 84 00 04 */	lwz r4, 4(r4)
/* 802452D4  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 802452D8  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_802452DC:
/* 802452DC  38 1E 00 28 */	addi r0, r30, 0x28
/* 802452E0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802452E4  80 64 00 04 */	lwz r3, 4(r4)
/* 802452E8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802452EC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802452F0  EC 41 00 28 */	fsubs f2, f1, f0
/* 802452F4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802452F8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802452FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80245300  C0 02 B2 C8 */	lfs f0, lit_3946(r2)
/* 80245304  EC 20 00 72 */	fmuls f1, f0, f1
/* 80245308  81 83 00 00 */	lwz r12, 0(r3)
/* 8024530C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80245310  7D 89 03 A6 */	mtctr r12
/* 80245314  4E 80 04 21 */	bctrl 
lbl_80245318:
/* 80245318  3B 7B 00 01 */	addi r27, r27, 1
/* 8024531C  2C 1B 00 03 */	cmpwi r27, 3
/* 80245320  3B DE 00 04 */	addi r30, r30, 4
/* 80245324  41 80 FF 74 */	blt lbl_80245298
/* 80245328  7F E3 FB 78 */	mr r3, r31
/* 8024532C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80245330  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80245334  39 61 00 20 */	addi r11, r1, 0x20
/* 80245338  48 11 CE E9 */	bl _restgpr_27
/* 8024533C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80245340  7C 08 03 A6 */	mtlr r0
/* 80245344  38 21 00 30 */	addi r1, r1, 0x30
/* 80245348  4E 80 00 20 */	blr 
