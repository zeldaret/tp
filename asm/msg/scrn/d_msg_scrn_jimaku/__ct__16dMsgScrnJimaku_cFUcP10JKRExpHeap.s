lbl_80244558:
/* 80244558  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8024455C  7C 08 02 A6 */	mflr r0
/* 80244560  90 01 00 54 */	stw r0, 0x54(r1)
/* 80244564  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80244568  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8024456C  39 61 00 40 */	addi r11, r1, 0x40
/* 80244570  48 11 DC 55 */	bl _savegpr_23
/* 80244574  7C 7F 1B 78 */	mr r31, r3
/* 80244578  7C 98 23 78 */	mr r24, r4
/* 8024457C  7C B7 2B 78 */	mr r23, r5
/* 80244580  4B FF 7B 5D */	bl __ct__14dMsgScrnBase_cFv
/* 80244584  3C 60 80 3C */	lis r3, __vt__16dMsgScrnJimaku_c@ha /* 0x803C11E8@ha */
/* 80244588  38 03 11 E8 */	addi r0, r3, __vt__16dMsgScrnJimaku_c@l /* 0x803C11E8@l */
/* 8024458C  90 1F 00 00 */	stw r0, 0(r31)
/* 80244590  28 17 00 00 */	cmplwi r23, 0
/* 80244594  41 82 00 0C */	beq lbl_802445A0
/* 80244598  92 FF 00 C8 */	stw r23, 0xc8(r31)
/* 8024459C  48 00 00 10 */	b lbl_802445AC
lbl_802445A0:
/* 802445A0  38 60 00 07 */	li r3, 7
/* 802445A4  4B DE 9E 2D */	bl dComIfGp_getSubHeap2D__Fi
/* 802445A8  90 7F 00 C8 */	stw r3, 0xc8(r31)
lbl_802445AC:
/* 802445AC  7F E3 FB 78 */	mr r3, r31
/* 802445B0  4B FF 7B BD */	bl init__14dMsgScrnBase_cFv
/* 802445B4  38 60 01 18 */	li r3, 0x118
/* 802445B8  48 08 A6 95 */	bl __nw__FUl
/* 802445BC  7C 60 1B 79 */	or. r0, r3, r3
/* 802445C0  41 82 00 0C */	beq lbl_802445CC
/* 802445C4  48 0B 3E D5 */	bl __ct__9J2DScreenFv
/* 802445C8  7C 60 1B 78 */	mr r0, r3
lbl_802445CC:
/* 802445CC  90 1F 00 04 */	stw r0, 4(r31)
/* 802445D0  80 7F 00 04 */	lwz r3, 4(r31)
/* 802445D4  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_jimaku__stringBase0@ha /* 0x80399A80@ha */
/* 802445D8  38 84 9A 80 */	addi r4, r4, msg_scrn_d_msg_scrn_jimaku__stringBase0@l /* 0x80399A80@l */
/* 802445DC  3C A0 00 02 */	lis r5, 2
/* 802445E0  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802445E4  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802445E8  80 C6 5C E4 */	lwz r6, 0x5ce4(r6)
/* 802445EC  48 0B 40 5D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 802445F0  80 7F 00 04 */	lwz r3, 4(r31)
/* 802445F4  48 01 0A F5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 802445F8  38 60 00 24 */	li r3, 0x24
/* 802445FC  48 08 A6 51 */	bl __nw__FUl
/* 80244600  7C 60 1B 79 */	or. r0, r3, r3
/* 80244604  41 82 00 14 */	beq lbl_80244618
/* 80244608  38 80 00 00 */	li r4, 0
/* 8024460C  7F 05 C3 78 */	mr r5, r24
/* 80244610  48 00 13 25 */	bl __ct__15dMsgScrnLight_cFUcUc
/* 80244614  7C 60 1B 78 */	mr r0, r3
lbl_80244618:
/* 80244618  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8024461C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80244620  38 80 10 6A */	li r4, 0x106a
/* 80244624  38 A0 00 20 */	li r5, 0x20
/* 80244628  48 08 9E AD */	bl alloc__7JKRHeapFUli
/* 8024462C  7C 78 1B 78 */	mr r24, r3
/* 80244630  38 80 00 00 */	li r4, 0
/* 80244634  38 A0 10 6A */	li r5, 0x106a
/* 80244638  4B DB EE 21 */	bl memset
/* 8024463C  93 1F 00 50 */	stw r24, 0x50(r31)
/* 80244640  38 60 00 6C */	li r3, 0x6c
/* 80244644  48 08 A6 09 */	bl __nw__FUl
/* 80244648  7C 60 1B 79 */	or. r0, r3, r3
/* 8024464C  41 82 00 28 */	beq lbl_80244674
/* 80244650  80 9F 00 04 */	lwz r4, 4(r31)
/* 80244654  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 80244658  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 8024465C  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 80244660  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 80244664  38 E0 00 03 */	li r7, 3
/* 80244668  39 00 00 00 */	li r8, 0
/* 8024466C  48 00 F3 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80244670  7C 60 1B 78 */	mr r0, r3
lbl_80244674:
/* 80244674  90 1F 00 08 */	stw r0, 8(r31)
/* 80244678  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8024467C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80244680  C0 24 00 C0 */	lfs f1, 0xc0(r4)
/* 80244684  80 7F 00 08 */	lwz r3, 8(r31)
/* 80244688  80 63 00 04 */	lwz r3, 4(r3)
/* 8024468C  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 80244690  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80244694  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80244698  81 83 00 00 */	lwz r12, 0(r3)
/* 8024469C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802446A0  7D 89 03 A6 */	mtctr r12
/* 802446A4  4E 80 04 21 */	bctrl 
/* 802446A8  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802446AC  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802446B0  C0 03 02 60 */	lfs f0, 0x260(r3)
/* 802446B4  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 802446B8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802446BC  C0 22 B2 B0 */	lfs f1, lit_3941(r2)
/* 802446C0  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 802446C4  48 00 FE ED */	bl paneTrans__8CPaneMgrFff
/* 802446C8  38 60 00 6C */	li r3, 0x6c
/* 802446CC  48 08 A5 81 */	bl __nw__FUl
/* 802446D0  7C 60 1B 79 */	or. r0, r3, r3
/* 802446D4  41 82 00 28 */	beq lbl_802446FC
/* 802446D8  80 9F 00 04 */	lwz r4, 4(r31)
/* 802446DC  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 802446E0  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 802446E4  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 802446E8  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 802446EC  38 E0 00 00 */	li r7, 0
/* 802446F0  39 00 00 00 */	li r8, 0
/* 802446F4  48 00 F2 91 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802446F8  7C 60 1B 78 */	mr r0, r3
lbl_802446FC:
/* 802446FC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80244700  38 60 00 6C */	li r3, 0x6c
/* 80244704  48 08 A5 49 */	bl __nw__FUl
/* 80244708  7C 60 1B 79 */	or. r0, r3, r3
/* 8024470C  41 82 00 24 */	beq lbl_80244730
/* 80244710  80 9F 00 04 */	lwz r4, 4(r31)
/* 80244714  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F73@ha */
/* 80244718  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74345F73@l */
/* 8024471C  38 A0 00 00 */	li r5, 0
/* 80244720  38 E0 00 00 */	li r7, 0
/* 80244724  39 00 00 00 */	li r8, 0
/* 80244728  48 00 F2 5D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8024472C  7C 60 1B 78 */	mr r0, r3
lbl_80244730:
/* 80244730  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80244734  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244738  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8024473C  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80244740  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 80244744  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 80244748  81 83 00 00 */	lwz r12, 0(r3)
/* 8024474C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80244750  7D 89 03 A6 */	mtctr r12
/* 80244754  4E 80 04 21 */	bctrl 
/* 80244758  38 00 00 00 */	li r0, 0
/* 8024475C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80244760  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244764  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80244768  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8024476C  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 80244770  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 80244774  81 83 00 00 */	lwz r12, 0(r3)
/* 80244778  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024477C  7D 89 03 A6 */	mtctr r12
/* 80244780  4E 80 04 21 */	bctrl 
/* 80244784  38 00 00 00 */	li r0, 0
/* 80244788  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8024478C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244790  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80244794  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80244798  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 8024479C  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 802447A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802447A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802447A8  7D 89 03 A6 */	mtctr r12
/* 802447AC  4E 80 04 21 */	bctrl 
/* 802447B0  38 00 00 01 */	li r0, 1
/* 802447B4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802447B8  3B 40 00 00 */	li r26, 0
/* 802447BC  3B 20 00 00 */	li r25, 0
/* 802447C0  3B 00 00 00 */	li r24, 0
/* 802447C4  3C 60 80 3A */	lis r3, msg_scrn_d_msg_scrn_jimaku__stringBase0@ha /* 0x80399A80@ha */
/* 802447C8  3B A3 9A 80 */	addi r29, r3, msg_scrn_d_msg_scrn_jimaku__stringBase0@l /* 0x80399A80@l */
/* 802447CC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802447D0  3B C3 02 8C */	addi r30, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
lbl_802447D4:
/* 802447D4  38 18 00 0C */	addi r0, r24, 0xc
/* 802447D8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802447DC  83 63 00 04 */	lwz r27, 4(r3)
/* 802447E0  4B DD 02 11 */	bl mDoExt_getMesgFont__Fv
/* 802447E4  7C 64 1B 78 */	mr r4, r3
/* 802447E8  7F 63 DB 78 */	mr r3, r27
/* 802447EC  81 9B 00 00 */	lwz r12, 0(r27)
/* 802447F0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802447F4  7D 89 03 A6 */	mtctr r12
/* 802447F8  4E 80 04 21 */	bctrl 
/* 802447FC  38 18 00 0C */	addi r0, r24, 0xc
/* 80244800  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244804  80 63 00 04 */	lwz r3, 4(r3)
/* 80244808  38 80 02 00 */	li r4, 0x200
/* 8024480C  38 BD 00 1E */	addi r5, r29, 0x1e
/* 80244810  4C C6 31 82 */	crclr 6
/* 80244814  48 0B BF 39 */	bl setString__10J2DTextBoxFsPCce
/* 80244818  7C 7E CA 14 */	add r3, r30, r25
/* 8024481C  3B 83 01 48 */	addi r28, r3, 0x148
/* 80244820  80 03 01 48 */	lwz r0, 0x148(r3)
/* 80244824  90 01 00 10 */	stw r0, 0x10(r1)
/* 80244828  3B 63 00 F8 */	addi r27, r3, 0xf8
/* 8024482C  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 80244830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244834  38 18 00 0C */	addi r0, r24, 0xc
/* 80244838  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8024483C  38 81 00 14 */	addi r4, r1, 0x14
/* 80244840  38 A1 00 10 */	addi r5, r1, 0x10
/* 80244844  48 00 FC 15 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80244848  38 18 00 28 */	addi r0, r24, 0x28
/* 8024484C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244850  28 03 00 00 */	cmplwi r3, 0
/* 80244854  41 82 00 6C */	beq lbl_802448C0
/* 80244858  82 E3 00 04 */	lwz r23, 4(r3)
/* 8024485C  4B DD 01 95 */	bl mDoExt_getMesgFont__Fv
/* 80244860  7C 64 1B 78 */	mr r4, r3
/* 80244864  7E E3 BB 78 */	mr r3, r23
/* 80244868  81 97 00 00 */	lwz r12, 0(r23)
/* 8024486C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80244870  7D 89 03 A6 */	mtctr r12
/* 80244874  4E 80 04 21 */	bctrl 
/* 80244878  38 18 00 28 */	addi r0, r24, 0x28
/* 8024487C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244880  80 63 00 04 */	lwz r3, 4(r3)
/* 80244884  38 80 02 00 */	li r4, 0x200
/* 80244888  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_jimaku__stringBase0@ha /* 0x80399A80@ha */
/* 8024488C  38 A5 9A 80 */	addi r5, r5, msg_scrn_d_msg_scrn_jimaku__stringBase0@l /* 0x80399A80@l */
/* 80244890  38 A5 00 1E */	addi r5, r5, 0x1e
/* 80244894  4C C6 31 82 */	crclr 6
/* 80244898  48 0B BE B5 */	bl setString__10J2DTextBoxFsPCce
/* 8024489C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802448A0  90 01 00 08 */	stw r0, 8(r1)
/* 802448A4  80 1B 00 00 */	lwz r0, 0(r27)
/* 802448A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802448AC  38 18 00 28 */	addi r0, r24, 0x28
/* 802448B0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802448B4  38 81 00 0C */	addi r4, r1, 0xc
/* 802448B8  38 A1 00 08 */	addi r5, r1, 8
/* 802448BC  48 00 FB 9D */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_802448C0:
/* 802448C0  3B 5A 00 01 */	addi r26, r26, 1
/* 802448C4  2C 1A 00 02 */	cmpwi r26, 2
/* 802448C8  3B 39 00 28 */	addi r25, r25, 0x28
/* 802448CC  3B 18 00 04 */	addi r24, r24, 4
/* 802448D0  41 80 FF 04 */	blt lbl_802447D4
/* 802448D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802448D8  80 63 00 04 */	lwz r3, 4(r3)
/* 802448DC  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 802448E0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802448E4  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 802448E8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802448EC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802448F0  80 63 00 04 */	lwz r3, 4(r3)
/* 802448F4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802448F8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802448FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80244900  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80244904  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80244908  80 63 00 04 */	lwz r3, 4(r3)
/* 8024490C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80244910  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80244914  EC 01 00 28 */	fsubs f0, f1, f0
/* 80244918  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8024491C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80244920  80 63 00 04 */	lwz r3, 4(r3)
/* 80244924  C0 03 01 18 */	lfs f0, 0x118(r3)
/* 80244928  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8024492C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80244930  80 63 00 04 */	lwz r3, 4(r3)
/* 80244934  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80244938  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8024493C  3A E0 00 00 */	li r23, 0
/* 80244940  3B 40 00 00 */	li r26, 0
/* 80244944  C3 E2 B2 B4 */	lfs f31, lit_3942(r2)
lbl_80244948:
/* 80244948  38 1A 00 0C */	addi r0, r26, 0xc
/* 8024494C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244950  80 63 00 04 */	lwz r3, 4(r3)
/* 80244954  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80244958  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 8024495C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244960  80 63 00 04 */	lwz r3, 4(r3)
/* 80244964  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80244968  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8024496C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80244970  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80244974  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80244978  EC 01 00 28 */	fsubs f0, f1, f0
/* 8024497C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244980  81 83 00 00 */	lwz r12, 0(r3)
/* 80244984  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80244988  7D 89 03 A6 */	mtctr r12
/* 8024498C  4E 80 04 21 */	bctrl 
/* 80244990  3A F7 00 01 */	addi r23, r23, 1
/* 80244994  2C 17 00 02 */	cmpwi r23, 2
/* 80244998  3B 5A 00 04 */	addi r26, r26, 4
/* 8024499C  41 80 FF AC */	blt lbl_80244948
/* 802449A0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802449A4  48 00 F9 45 */	bl getGlobalPosX__8CPaneMgrFv
/* 802449A8  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 802449AC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802449B0  48 00 F9 B5 */	bl getGlobalPosY__8CPaneMgrFv
/* 802449B4  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 802449B8  3A E0 00 00 */	li r23, 0
/* 802449BC  3B 40 00 00 */	li r26, 0
lbl_802449C0:
/* 802449C0  38 1A 00 28 */	addi r0, r26, 0x28
/* 802449C4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802449C8  28 03 00 00 */	cmplwi r3, 0
/* 802449CC  41 82 00 74 */	beq lbl_80244A40
/* 802449D0  80 63 00 04 */	lwz r3, 4(r3)
/* 802449D4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 802449D8  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 802449DC  2C 17 00 00 */	cmpwi r23, 0
/* 802449E0  40 82 00 24 */	bne lbl_80244A04
/* 802449E4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802449E8  80 63 00 04 */	lwz r3, 4(r3)
/* 802449EC  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 802449F0  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 802449F4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802449F8  80 63 00 04 */	lwz r3, 4(r3)
/* 802449FC  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80244A00  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_80244A04:
/* 80244A04  38 1A 00 28 */	addi r0, r26, 0x28
/* 80244A08  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244A0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80244A10  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80244A14  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80244A18  EC 41 00 28 */	fsubs f2, f1, f0
/* 80244A1C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80244A20  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80244A24  EC 21 00 28 */	fsubs f1, f1, f0
/* 80244A28  C0 02 B2 B4 */	lfs f0, lit_3942(r2)
/* 80244A2C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80244A30  81 83 00 00 */	lwz r12, 0(r3)
/* 80244A34  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80244A38  7D 89 03 A6 */	mtctr r12
/* 80244A3C  4E 80 04 21 */	bctrl 
lbl_80244A40:
/* 80244A40  3A F7 00 01 */	addi r23, r23, 1
/* 80244A44  2C 17 00 02 */	cmpwi r23, 2
/* 80244A48  3B 5A 00 04 */	addi r26, r26, 4
/* 80244A4C  41 80 FF 74 */	blt lbl_802449C0
/* 80244A50  7F E3 FB 78 */	mr r3, r31
/* 80244A54  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80244A58  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80244A5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80244A60  48 11 D7 B1 */	bl _restgpr_23
/* 80244A64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80244A68  7C 08 03 A6 */	mtlr r0
/* 80244A6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80244A70  4E 80 00 20 */	blr 
