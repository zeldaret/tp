lbl_8022FDF0:
/* 8022FDF0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8022FDF4  7C 08 02 A6 */	mflr r0
/* 8022FDF8  90 01 01 34 */	stw r0, 0x134(r1)
/* 8022FDFC  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8022FE00  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 8022FE04  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8022FE08  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 8022FE0C  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8022FE10  93 C1 01 08 */	stw r30, 0x108(r1)
/* 8022FE14  7C 7F 1B 78 */	mr r31, r3
/* 8022FE18  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8022FE1C  80 E3 00 08 */	lwz r7, 8(r3)
/* 8022FE20  28 07 00 00 */	cmplwi r7, 0
/* 8022FE24  41 82 00 10 */	beq lbl_8022FE34
/* 8022FE28  C3 C7 01 14 */	lfs f30, 0x114(r7)
/* 8022FE2C  C3 E7 01 1C */	lfs f31, 0x11c(r7)
/* 8022FE30  48 00 00 0C */	b lbl_8022FE3C
lbl_8022FE34:
/* 8022FE34  C3 C2 B0 60 */	lfs f30, lit_4027(r2)
/* 8022FE38  C3 E2 B0 98 */	lfs f31, lit_7190(r2)
lbl_8022FE3C:
/* 8022FE3C  54 88 02 1E */	rlwinm r8, r4, 0, 8, 0xf
/* 8022FE40  3C 00 00 05 */	lis r0, 5
/* 8022FE44  7C 08 00 00 */	cmpw r8, r0
/* 8022FE48  41 82 05 A0 */	beq lbl_802303E8
/* 8022FE4C  40 80 00 30 */	bge lbl_8022FE7C
/* 8022FE50  3C 00 00 03 */	lis r0, 3
/* 8022FE54  7C 08 00 00 */	cmpw r8, r0
/* 8022FE58  41 82 0A 00 */	beq lbl_80230858
/* 8022FE5C  40 80 00 10 */	bge lbl_8022FE6C
/* 8022FE60  2C 08 00 00 */	cmpwi r8, 0
/* 8022FE64  41 82 00 70 */	beq lbl_8022FED4
/* 8022FE68  48 00 0A F8 */	b lbl_80230960
lbl_8022FE6C:
/* 8022FE6C  3C 00 00 04 */	lis r0, 4
/* 8022FE70  7C 08 00 00 */	cmpw r8, r0
/* 8022FE74  41 82 03 C0 */	beq lbl_80230234
/* 8022FE78  48 00 0A E8 */	b lbl_80230960
lbl_8022FE7C:
/* 8022FE7C  3C E0 00 FF */	lis r7, 0xff
/* 8022FE80  7C 08 38 00 */	cmpw r8, r7
/* 8022FE84  41 82 00 18 */	beq lbl_8022FE9C
/* 8022FE88  40 80 0A D8 */	bge lbl_80230960
/* 8022FE8C  3C 00 00 06 */	lis r0, 6
/* 8022FE90  7C 08 00 00 */	cmpw r8, r0
/* 8022FE94  41 82 08 78 */	beq lbl_8023070C
/* 8022FE98  48 00 0A C8 */	b lbl_80230960
lbl_8022FE9C:
/* 8022FE9C  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FFFF02@ha */
/* 8022FEA0  38 03 FF 02 */	addi r0, r3, 0xFF02 /* 0x00FFFF02@l */
/* 8022FEA4  7C 04 00 00 */	cmpw r4, r0
/* 8022FEA8  41 82 00 18 */	beq lbl_8022FEC0
/* 8022FEAC  40 80 0A B4 */	bge lbl_80230960
/* 8022FEB0  38 07 00 02 */	addi r0, r7, 2
/* 8022FEB4  7C 04 00 00 */	cmpw r4, r0
/* 8022FEB8  41 82 00 08 */	beq lbl_8022FEC0
/* 8022FEBC  48 00 0A A4 */	b lbl_80230960
lbl_8022FEC0:
/* 8022FEC0  7F E3 FB 78 */	mr r3, r31
/* 8022FEC4  7C A4 2B 78 */	mr r4, r5
/* 8022FEC8  7C C5 33 78 */	mr r5, r6
/* 8022FECC  48 00 0A C1 */	bl do_rubyset__33jmessage_string_tMeasureProcessorFPCvUl
/* 8022FED0  48 00 0A 90 */	b lbl_80230960
lbl_8022FED4:
/* 8022FED4  28 04 00 3F */	cmplwi r4, 0x3f
/* 8022FED8  41 81 0A 88 */	bgt lbl_80230960
/* 8022FEDC  3C C0 80 3C */	lis r6, lit_7484@ha /* 0x803C0610@ha */
/* 8022FEE0  38 C6 06 10 */	addi r6, r6, lit_7484@l /* 0x803C0610@l */
/* 8022FEE4  54 80 10 3A */	slwi r0, r4, 2
/* 8022FEE8  7C 06 00 2E */	lwzx r0, r6, r0
/* 8022FEEC  7C 09 03 A6 */	mtctr r0
/* 8022FEF0  4E 80 04 20 */	bctr 
/* 8022FEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FEF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FEFC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8022FF00  7F E3 FB 78 */	mr r3, r31
/* 8022FF04  48 07 7C F5 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FF08  48 00 0A 58 */	b lbl_80230960
/* 8022FF0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FF10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FF14  38 83 01 C5 */	addi r4, r3, 0x1c5
/* 8022FF18  7F E3 FB 78 */	mr r3, r31
/* 8022FF1C  48 07 7C DD */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FF20  48 00 0A 40 */	b lbl_80230960
/* 8022FF24  48 00 85 F1 */	bl getWord__12dMsgObject_cFv
/* 8022FF28  7C 64 1B 78 */	mr r4, r3
/* 8022FF2C  7F E3 FB 78 */	mr r3, r31
/* 8022FF30  48 07 7C C9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FF34  48 00 0A 2C */	b lbl_80230960
/* 8022FF38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FF3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FF40  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8022FF44  48 00 73 89 */	bl getSmellName__12dMsgObject_cFv
/* 8022FF48  7C 64 1B 78 */	mr r4, r3
/* 8022FF4C  7F E3 FB 78 */	mr r3, r31
/* 8022FF50  48 07 7C A9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FF54  48 00 0A 0C */	b lbl_80230960
/* 8022FF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FF5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FF60  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8022FF64  48 00 73 D1 */	bl getPortalName__12dMsgObject_cFv
/* 8022FF68  7C 64 1B 78 */	mr r4, r3
/* 8022FF6C  7F E3 FB 78 */	mr r3, r31
/* 8022FF70  48 07 7C 89 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FF74  48 00 09 EC */	b lbl_80230960
/* 8022FF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FF80  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8022FF84  48 00 74 09 */	bl getBombName__12dMsgObject_cFv
/* 8022FF88  7C 64 1B 78 */	mr r4, r3
/* 8022FF8C  7F E3 FB 78 */	mr r3, r31
/* 8022FF90  48 07 7C 69 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FF94  48 00 09 CC */	b lbl_80230960
/* 8022FF98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FF9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FFA0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8022FFA4  48 00 74 79 */	bl getInsectName__12dMsgObject_cFv
/* 8022FFA8  7C 64 1B 78 */	mr r4, r3
/* 8022FFAC  7F E3 FB 78 */	mr r3, r31
/* 8022FFB0  48 07 7C 49 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FFB4  48 00 09 AC */	b lbl_80230960
/* 8022FFB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FFBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FFC0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8022FFC4  48 00 74 B5 */	bl getLetterName__12dMsgObject_cFv
/* 8022FFC8  7C 64 1B 78 */	mr r4, r3
/* 8022FFCC  7F E3 FB 78 */	mr r3, r31
/* 8022FFD0  48 07 7C 29 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022FFD4  48 00 09 8C */	b lbl_80230960
/* 8022FFD8  38 61 00 0C */	addi r3, r1, 0xc
/* 8022FFDC  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022FFE0  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022FFE4  38 84 00 04 */	addi r4, r4, 4
/* 8022FFE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022FFEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022FFF0  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022FFF4  38 00 00 64 */	li r0, 0x64
/* 8022FFF8  7C A5 03 D6 */	divw r5, r5, r0
/* 8022FFFC  4C C6 31 82 */	crclr 6
/* 80230000  48 13 64 DD */	bl sprintf
/* 80230004  7F E3 FB 78 */	mr r3, r31
/* 80230008  38 81 00 0C */	addi r4, r1, 0xc
/* 8023000C  48 07 7B ED */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230010  48 00 09 50 */	b lbl_80230960
/* 80230014  38 61 00 08 */	addi r3, r1, 8
/* 80230018  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8023001C  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 80230020  38 84 00 04 */	addi r4, r4, 4
/* 80230024  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80230028  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023002C  80 C5 5E 0C */	lwz r6, 0x5e0c(r5)
/* 80230030  38 A0 00 64 */	li r5, 0x64
/* 80230034  7C 06 2B D6 */	divw r0, r6, r5
/* 80230038  7C 00 29 D6 */	mullw r0, r0, r5
/* 8023003C  7C A0 30 50 */	subf r5, r0, r6
/* 80230040  4C C6 31 82 */	crclr 6
/* 80230044  48 13 64 99 */	bl sprintf
/* 80230048  7F E3 FB 78 */	mr r3, r31
/* 8023004C  38 81 00 08 */	addi r4, r1, 8
/* 80230050  48 07 7B A9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230054  48 00 09 0C */	b lbl_80230960
/* 80230058  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8023005C  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80230060  4B FF F9 CD */	bl setCharactor__26jmessage_string_tReferenceFUs
/* 80230064  EF DF F0 2A */	fadds f30, f31, f30
/* 80230068  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023006C  4B FF FA B9 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230070  7C 64 07 34 */	extsh r4, r3
/* 80230074  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230078  FC 20 F0 90 */	fmr f1, f30
/* 8023007C  4B FF F9 F1 */	bl addLineLength__26jmessage_string_tReferenceFif
/* 80230080  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230084  4B FF FA A1 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230088  7C 64 07 34 */	extsh r4, r3
/* 8023008C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230090  FC 20 F0 90 */	fmr f1, f30
/* 80230094  4B FF FA 39 */	bl setOutfontLength__26jmessage_string_tReferenceFif
/* 80230098  48 00 08 C8 */	b lbl_80230960
/* 8023009C  3B C0 00 00 */	li r30, 0
/* 802300A0  EF FF F0 2A */	fadds f31, f31, f30
lbl_802300A4:
/* 802300A4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802300A8  4B FF FA 7D */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802300AC  7C 64 07 34 */	extsh r4, r3
/* 802300B0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802300B4  FC 20 F8 90 */	fmr f1, f31
/* 802300B8  4B FF F9 B5 */	bl addLineLength__26jmessage_string_tReferenceFif
/* 802300BC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802300C0  4B FF FA 65 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802300C4  7C 64 07 34 */	extsh r4, r3
/* 802300C8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802300CC  FC 20 F8 90 */	fmr f1, f31
/* 802300D0  4B FF F9 FD */	bl setOutfontLength__26jmessage_string_tReferenceFif
/* 802300D4  3B DE 00 01 */	addi r30, r30, 1
/* 802300D8  2C 1E 00 04 */	cmpwi r30, 4
/* 802300DC  41 80 FF C8 */	blt lbl_802300A4
/* 802300E0  48 00 08 80 */	b lbl_80230960
/* 802300E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802300E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802300EC  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802300F0  48 00 73 E1 */	bl getSelectBombNum__12dMsgObject_cFv
/* 802300F4  7C 60 1B 78 */	mr r0, r3
/* 802300F8  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802300FC  38 80 00 07 */	li r4, 7
/* 80230100  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80230104  38 C1 00 D8 */	addi r6, r1, 0xd8
/* 80230108  38 E0 00 01 */	li r7, 1
/* 8023010C  48 00 8B E1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230110  7F E3 FB 78 */	mr r3, r31
/* 80230114  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80230118  48 07 7A E1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023011C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230120  4B FF FA 05 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230124  7C 64 07 34 */	extsh r4, r3
/* 80230128  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023012C  4B FF F9 C5 */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 80230130  48 00 08 30 */	b lbl_80230960
/* 80230134  48 00 84 AD */	bl getSelectBombPrice__12dMsgObject_cFv
/* 80230138  7C 60 1B 78 */	mr r0, r3
/* 8023013C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230140  38 80 00 01 */	li r4, 1
/* 80230144  7C 05 07 34 */	extsh r5, r0
/* 80230148  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 8023014C  38 E0 00 01 */	li r7, 1
/* 80230150  48 00 8B 9D */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230154  7F E3 FB 78 */	mr r3, r31
/* 80230158  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8023015C  48 07 7A 9D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230160  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230164  4B FF F9 C1 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230168  7C 64 07 34 */	extsh r4, r3
/* 8023016C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230170  4B FF F9 81 */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 80230174  48 00 07 EC */	b lbl_80230960
/* 80230178  38 80 00 70 */	li r4, 0x70
/* 8023017C  88 05 00 00 */	lbz r0, 0(r5)
/* 80230180  28 00 00 01 */	cmplwi r0, 1
/* 80230184  40 82 00 0C */	bne lbl_80230190
/* 80230188  38 80 00 71 */	li r4, 0x71
/* 8023018C  48 00 00 14 */	b lbl_802301A0
lbl_80230190:
/* 80230190  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80230194  28 00 00 02 */	cmplwi r0, 2
/* 80230198  40 82 00 08 */	bne lbl_802301A0
/* 8023019C  38 80 00 72 */	li r4, 0x72
lbl_802301A0:
/* 802301A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802301A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802301A8  38 63 00 F8 */	addi r3, r3, 0xf8
/* 802301AC  4B E0 3F 4D */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 802301B0  7C 60 1B 78 */	mr r0, r3
/* 802301B4  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802301B8  38 80 00 07 */	li r4, 7
/* 802301BC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802301C0  38 C1 00 88 */	addi r6, r1, 0x88
/* 802301C4  38 E0 00 01 */	li r7, 1
/* 802301C8  48 00 8B 25 */	bl setTag__10dMsgUnit_cFiiPcb
/* 802301CC  7F E3 FB 78 */	mr r3, r31
/* 802301D0  38 81 00 88 */	addi r4, r1, 0x88
/* 802301D4  48 07 7A 25 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802301D8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802301DC  4B FF F9 49 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802301E0  7C 64 07 34 */	extsh r4, r3
/* 802301E4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802301E8  4B FF F9 09 */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 802301EC  48 00 07 74 */	b lbl_80230960
/* 802301F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802301F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802301F8  88 A3 00 F8 */	lbz r5, 0xf8(r3)
/* 802301FC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230200  38 80 00 00 */	li r4, 0
/* 80230204  38 C1 00 60 */	addi r6, r1, 0x60
/* 80230208  38 E0 00 01 */	li r7, 1
/* 8023020C  48 00 8A E1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230210  7F E3 FB 78 */	mr r3, r31
/* 80230214  38 81 00 60 */	addi r4, r1, 0x60
/* 80230218  48 07 79 E1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023021C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230220  4B FF F9 05 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230224  7C 64 07 34 */	extsh r4, r3
/* 80230228  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023022C  4B FF F8 C5 */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 80230230  48 00 07 30 */	b lbl_80230960
lbl_80230234:
/* 80230234  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 80230238  28 00 00 0D */	cmplwi r0, 0xd
/* 8023023C  41 81 01 94 */	bgt lbl_802303D0
/* 80230240  3C 60 80 3C */	lis r3, lit_7485@ha /* 0x803C05D8@ha */
/* 80230244  38 63 05 D8 */	addi r3, r3, lit_7485@l /* 0x803C05D8@l */
/* 80230248  54 00 10 3A */	slwi r0, r0, 2
/* 8023024C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80230250  7C 09 03 A6 */	mtctr r0
/* 80230254  4E 80 04 20 */	bctr 
/* 80230258  38 60 00 24 */	li r3, 0x24
/* 8023025C  4B FF 83 71 */	bl changeCodeToChar__FUs
/* 80230260  7C 64 1B 78 */	mr r4, r3
/* 80230264  7F E3 FB 78 */	mr r3, r31
/* 80230268  48 07 79 91 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023026C  48 00 01 64 */	b lbl_802303D0
/* 80230270  38 60 00 5C */	li r3, 0x5c
/* 80230274  4B FF 83 59 */	bl changeCodeToChar__FUs
/* 80230278  7C 64 1B 78 */	mr r4, r3
/* 8023027C  7F E3 FB 78 */	mr r3, r31
/* 80230280  48 07 79 79 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230284  48 00 01 4C */	b lbl_802303D0
/* 80230288  38 60 00 40 */	li r3, 0x40
/* 8023028C  4B FF 83 41 */	bl changeCodeToChar__FUs
/* 80230290  7C 64 1B 78 */	mr r4, r3
/* 80230294  7F E3 FB 78 */	mr r3, r31
/* 80230298  48 07 79 61 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023029C  48 00 01 34 */	b lbl_802303D0
/* 802302A0  3C 60 00 01 */	lis r3, 0x0001 /* 0x000081F2@ha */
/* 802302A4  38 63 81 F2 */	addi r3, r3, 0x81F2 /* 0x000081F2@l */
/* 802302A8  4B FF 83 25 */	bl changeCodeToChar__FUs
/* 802302AC  7C 64 1B 78 */	mr r4, r3
/* 802302B0  7F E3 FB 78 */	mr r3, r31
/* 802302B4  48 07 79 45 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802302B8  48 00 01 18 */	b lbl_802303D0
/* 802302BC  3C 60 00 01 */	lis r3, 0x0001 /* 0x000081F3@ha */
/* 802302C0  38 63 81 F3 */	addi r3, r3, 0x81F3 /* 0x000081F3@l */
/* 802302C4  4B FF 83 09 */	bl changeCodeToChar__FUs
/* 802302C8  7C 64 1B 78 */	mr r4, r3
/* 802302CC  7F E3 FB 78 */	mr r3, r31
/* 802302D0  48 07 79 29 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802302D4  48 00 00 FC */	b lbl_802303D0
/* 802302D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x000081E3@ha */
/* 802302DC  38 63 81 E3 */	addi r3, r3, 0x81E3 /* 0x000081E3@l */
/* 802302E0  4B FF 82 ED */	bl changeCodeToChar__FUs
/* 802302E4  7C 64 1B 78 */	mr r4, r3
/* 802302E8  7F E3 FB 78 */	mr r3, r31
/* 802302EC  48 07 79 0D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802302F0  48 00 00 E0 */	b lbl_802303D0
/* 802302F4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000876C@ha */
/* 802302F8  38 63 87 6C */	addi r3, r3, 0x876C /* 0x0000876C@l */
/* 802302FC  4B FF 82 D1 */	bl changeCodeToChar__FUs
/* 80230300  7C 64 1B 78 */	mr r4, r3
/* 80230304  7F E3 FB 78 */	mr r3, r31
/* 80230308  48 07 78 F1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023030C  48 00 00 C4 */	b lbl_802303D0
/* 80230310  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008766@ha */
/* 80230314  38 63 87 66 */	addi r3, r3, 0x8766 /* 0x00008766@l */
/* 80230318  4B FF 82 B5 */	bl changeCodeToChar__FUs
/* 8023031C  7C 64 1B 78 */	mr r4, r3
/* 80230320  7F E3 FB 78 */	mr r3, r31
/* 80230324  48 07 78 D5 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230328  48 00 00 A8 */	b lbl_802303D0
/* 8023032C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008765@ha */
/* 80230330  38 63 87 65 */	addi r3, r3, 0x8765 /* 0x00008765@l */
/* 80230334  4B FF 82 99 */	bl changeCodeToChar__FUs
/* 80230338  7C 64 1B 78 */	mr r4, r3
/* 8023033C  7F E3 FB 78 */	mr r3, r31
/* 80230340  48 07 78 B9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230344  48 00 00 8C */	b lbl_802303D0
/* 80230348  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008767@ha */
/* 8023034C  38 63 87 67 */	addi r3, r3, 0x8767 /* 0x00008767@l */
/* 80230350  4B FF 82 7D */	bl changeCodeToChar__FUs
/* 80230354  7C 64 1B 78 */	mr r4, r3
/* 80230358  7F E3 FB 78 */	mr r3, r31
/* 8023035C  48 07 78 9D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230360  48 00 00 70 */	b lbl_802303D0
/* 80230364  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008768@ha */
/* 80230368  38 63 87 68 */	addi r3, r3, 0x8768 /* 0x00008768@l */
/* 8023036C  4B FF 82 61 */	bl changeCodeToChar__FUs
/* 80230370  7C 64 1B 78 */	mr r4, r3
/* 80230374  7F E3 FB 78 */	mr r3, r31
/* 80230378  48 07 78 81 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023037C  48 00 00 54 */	b lbl_802303D0
/* 80230380  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008769@ha */
/* 80230384  38 63 87 69 */	addi r3, r3, 0x8769 /* 0x00008769@l */
/* 80230388  4B FF 82 45 */	bl changeCodeToChar__FUs
/* 8023038C  7C 64 1B 78 */	mr r4, r3
/* 80230390  7F E3 FB 78 */	mr r3, r31
/* 80230394  48 07 78 65 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230398  48 00 00 38 */	b lbl_802303D0
/* 8023039C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000876A@ha */
/* 802303A0  38 63 87 6A */	addi r3, r3, 0x876A /* 0x0000876A@l */
/* 802303A4  4B FF 82 29 */	bl changeCodeToChar__FUs
/* 802303A8  7C 64 1B 78 */	mr r4, r3
/* 802303AC  7F E3 FB 78 */	mr r3, r31
/* 802303B0  48 07 78 49 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802303B4  48 00 00 1C */	b lbl_802303D0
/* 802303B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000876B@ha */
/* 802303BC  38 63 87 6B */	addi r3, r3, 0x876B /* 0x0000876B@l */
/* 802303C0  4B FF 82 0D */	bl changeCodeToChar__FUs
/* 802303C4  7C 64 1B 78 */	mr r4, r3
/* 802303C8  7F E3 FB 78 */	mr r3, r31
/* 802303CC  48 07 78 2D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
lbl_802303D0:
/* 802303D0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802303D4  4B FF F7 51 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802303D8  7C 64 07 34 */	extsh r4, r3
/* 802303DC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802303E0  4B FF F7 11 */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 802303E4  48 00 05 7C */	b lbl_80230960
lbl_802303E8:
/* 802303E8  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 802303EC  28 00 00 0E */	cmplwi r0, 0xe
/* 802303F0  41 81 02 F0 */	bgt lbl_802306E0
/* 802303F4  3C 60 80 3C */	lis r3, lit_7486@ha /* 0x803C059C@ha */
/* 802303F8  38 63 05 9C */	addi r3, r3, lit_7486@l /* 0x803C059C@l */
/* 802303FC  54 00 10 3A */	slwi r0, r0, 2
/* 80230400  7C 03 00 2E */	lwzx r0, r3, r0
/* 80230404  7C 09 03 A6 */	mtctr r0
/* 80230408  4E 80 04 20 */	bctr 
/* 8023040C  88 05 00 00 */	lbz r0, 0(r5)
/* 80230410  28 00 00 00 */	cmplwi r0, 0
/* 80230414  40 82 00 28 */	bne lbl_8023043C
/* 80230418  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8023041C  38 80 00 04 */	li r4, 4
/* 80230420  3C A0 80 43 */	lis r5, g_meter2_info@ha /* 0x80430188@ha */
/* 80230424  38 A5 01 88 */	addi r5, r5, g_meter2_info@l /* 0x80430188@l */
/* 80230428  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 8023042C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230430  38 E0 00 01 */	li r7, 1
/* 80230434  48 00 88 B9 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230438  48 00 02 B0 */	b lbl_802306E8
lbl_8023043C:
/* 8023043C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80230440  28 00 00 02 */	cmplwi r0, 2
/* 80230444  40 82 00 28 */	bne lbl_8023046C
/* 80230448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023044C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80230450  80 A3 09 4C */	lwz r5, 0x94c(r3)
/* 80230454  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230458  38 80 00 04 */	li r4, 4
/* 8023045C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230460  38 E0 00 01 */	li r7, 1
/* 80230464  48 00 88 89 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230468  48 00 02 80 */	b lbl_802306E8
lbl_8023046C:
/* 8023046C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230470  38 80 00 04 */	li r4, 4
/* 80230474  3C A0 80 43 */	lis r5, g_meter2_info@ha /* 0x80430188@ha */
/* 80230478  38 A5 01 88 */	addi r5, r5, g_meter2_info@l /* 0x80430188@l */
/* 8023047C  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 80230480  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230484  38 E0 00 01 */	li r7, 1
/* 80230488  48 00 88 65 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8023048C  48 00 02 5C */	b lbl_802306E8
/* 80230490  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230494  38 80 00 00 */	li r4, 0
/* 80230498  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023049C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802304A0  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 802304A4  38 C1 00 38 */	addi r6, r1, 0x38
/* 802304A8  38 E0 00 01 */	li r7, 1
/* 802304AC  48 00 88 41 */	bl setTag__10dMsgUnit_cFiiPcb
/* 802304B0  48 00 02 38 */	b lbl_802306E8
/* 802304B4  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802304B8  38 80 00 01 */	li r4, 1
/* 802304BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802304C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802304C4  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 802304C8  38 C1 00 38 */	addi r6, r1, 0x38
/* 802304CC  38 E0 00 01 */	li r7, 1
/* 802304D0  48 00 88 1D */	bl setTag__10dMsgUnit_cFiiPcb
/* 802304D4  48 00 02 14 */	b lbl_802306E8
/* 802304D8  80 05 00 00 */	lwz r0, 0(r5)
/* 802304DC  7C 1E 07 34 */	extsh r30, r0
/* 802304E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802304E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802304E8  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802304EC  B0 03 01 76 */	sth r0, 0x176(r3)
/* 802304F0  48 00 84 39 */	bl dMsgObject_getFundRaising__Fv
/* 802304F4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802304F8  7C A0 F0 50 */	subf r5, r0, r30
/* 802304FC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230500  38 80 00 0A */	li r4, 0xa
/* 80230504  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230508  38 E0 00 01 */	li r7, 1
/* 8023050C  48 00 87 E1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230510  48 00 01 D8 */	b lbl_802306E8
/* 80230514  4B FE E2 41 */	bl dMeter2Info_getNewLetterNum__Fv
/* 80230518  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8023051C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230520  38 80 00 0B */	li r4, 0xb
/* 80230524  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230528  38 E0 00 01 */	li r7, 1
/* 8023052C  48 00 87 C1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230530  48 00 01 B8 */	b lbl_802306E8
/* 80230534  4B FF 85 99 */	bl getPohNum__Fv
/* 80230538  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8023053C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230540  38 80 00 0C */	li r4, 0xc
/* 80230544  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230548  38 E0 00 01 */	li r7, 1
/* 8023054C  48 00 87 A1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230550  48 00 01 98 */	b lbl_802306E8
/* 80230554  88 05 00 00 */	lbz r0, 0(r5)
/* 80230558  28 00 00 00 */	cmplwi r0, 0
/* 8023055C  40 82 00 14 */	bne lbl_80230570
/* 80230560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80230564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80230568  80 A3 5E 0C */	lwz r5, 0x5e0c(r3)
/* 8023056C  48 00 00 10 */	b lbl_8023057C
lbl_80230570:
/* 80230570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80230574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80230578  80 A3 09 48 */	lwz r5, 0x948(r3)
lbl_8023057C:
/* 8023057C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230580  38 80 00 0D */	li r4, 0xd
/* 80230584  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230588  38 E0 00 01 */	li r7, 1
/* 8023058C  48 00 87 61 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230590  48 00 01 58 */	b lbl_802306E8
/* 80230594  88 05 00 00 */	lbz r0, 0(r5)
/* 80230598  28 00 00 00 */	cmplwi r0, 0
/* 8023059C  40 82 00 10 */	bne lbl_802305AC
/* 802305A0  4B DF DE 89 */	bl dComIfGs_checkGetInsectNum__Fv
/* 802305A4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 802305A8  48 00 00 10 */	b lbl_802305B8
lbl_802305AC:
/* 802305AC  4B DF DE 7D */	bl dComIfGs_checkGetInsectNum__Fv
/* 802305B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802305B4  20 A0 00 18 */	subfic r5, r0, 0x18
lbl_802305B8:
/* 802305B8  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802305BC  38 80 00 02 */	li r4, 2
/* 802305C0  38 C1 00 38 */	addi r6, r1, 0x38
/* 802305C4  38 E0 00 01 */	li r7, 1
/* 802305C8  48 00 87 25 */	bl setTag__10dMsgUnit_cFiiPcb
/* 802305CC  48 00 01 1C */	b lbl_802306E8
/* 802305D0  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802305D4  38 80 00 03 */	li r4, 3
/* 802305D8  38 A0 00 00 */	li r5, 0
/* 802305DC  38 C1 00 38 */	addi r6, r1, 0x38
/* 802305E0  38 E0 00 01 */	li r7, 1
/* 802305E4  48 00 87 09 */	bl setTag__10dMsgUnit_cFiiPcb
/* 802305E8  48 00 01 00 */	b lbl_802306E8
/* 802305EC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802305F0  3C 80 00 01 */	lis r4, 1
/* 802305F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802305F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802305FC  88 A5 5E A1 */	lbz r5, 0x5ea1(r5)
/* 80230600  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230604  38 E0 00 01 */	li r7, 1
/* 80230608  48 00 86 E5 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8023060C  48 00 00 DC */	b lbl_802306E8
/* 80230610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80230614  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80230618  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8023061C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF1F@ha */
/* 80230620  38 84 FF 1F */	addi r4, r4, 0xFF1F /* 0x0000FF1F@l */
/* 80230624  4B E0 43 E1 */	bl getEventReg__11dSv_event_cCFUs
/* 80230628  7C 60 1B 78 */	mr r0, r3
/* 8023062C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230630  38 80 00 06 */	li r4, 6
/* 80230634  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80230638  20 A0 00 14 */	subfic r5, r0, 0x14
/* 8023063C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230640  38 E0 00 01 */	li r7, 1
/* 80230644  48 00 86 A9 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230648  48 00 00 A0 */	b lbl_802306E8
/* 8023064C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230650  38 80 00 09 */	li r4, 9
/* 80230654  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80230658  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023065C  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 80230660  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230664  38 E0 00 01 */	li r7, 1
/* 80230668  48 00 86 85 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8023066C  48 00 00 7C */	b lbl_802306E8
/* 80230670  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230674  38 80 00 0E */	li r4, 0xe
/* 80230678  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023067C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80230680  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 80230684  38 C1 00 38 */	addi r6, r1, 0x38
/* 80230688  38 E0 00 01 */	li r7, 1
/* 8023068C  48 00 86 61 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80230690  48 00 00 58 */	b lbl_802306E8
/* 80230694  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 80230698  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010001@ha */
/* 8023069C  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00010001@l */
/* 802306A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802306A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802306A8  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 802306AC  38 C1 00 38 */	addi r6, r1, 0x38
/* 802306B0  38 E0 00 01 */	li r7, 1
/* 802306B4  48 00 86 39 */	bl setTag__10dMsgUnit_cFiiPcb
/* 802306B8  48 00 00 30 */	b lbl_802306E8
/* 802306BC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 802306C0  38 80 00 08 */	li r4, 8
/* 802306C4  3C A0 80 43 */	lis r5, g_meter2_info@ha /* 0x80430188@ha */
/* 802306C8  38 A5 01 88 */	addi r5, r5, g_meter2_info@l /* 0x80430188@l */
/* 802306CC  88 A5 00 BC */	lbz r5, 0xbc(r5)
/* 802306D0  38 C1 00 38 */	addi r6, r1, 0x38
/* 802306D4  38 E0 00 01 */	li r7, 1
/* 802306D8  48 00 86 15 */	bl setTag__10dMsgUnit_cFiiPcb
/* 802306DC  48 00 00 0C */	b lbl_802306E8
lbl_802306E0:
/* 802306E0  38 60 00 00 */	li r3, 0
/* 802306E4  48 00 02 80 */	b lbl_80230964
lbl_802306E8:
/* 802306E8  7F E3 FB 78 */	mr r3, r31
/* 802306EC  38 81 00 38 */	addi r4, r1, 0x38
/* 802306F0  48 07 75 09 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802306F4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802306F8  4B FF F4 2D */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802306FC  7C 64 07 34 */	extsh r4, r3
/* 80230700  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230704  4B FF F3 ED */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 80230708  48 00 02 58 */	b lbl_80230960
lbl_8023070C:
/* 8023070C  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 80230710  28 00 00 0B */	cmplwi r0, 0xb
/* 80230714  41 81 01 2C */	bgt lbl_80230840
/* 80230718  3C 80 80 3C */	lis r4, lit_7487@ha /* 0x803C056C@ha */
/* 8023071C  38 84 05 6C */	addi r4, r4, lit_7487@l /* 0x803C056C@l */
/* 80230720  54 00 10 3A */	slwi r0, r0, 2
/* 80230724  7C 04 00 2E */	lwzx r0, r4, r0
/* 80230728  7C 09 03 A6 */	mtctr r0
/* 8023072C  4E 80 04 20 */	bctr 
/* 80230730  7F E3 FB 78 */	mr r3, r31
/* 80230734  38 81 00 10 */	addi r4, r1, 0x10
/* 80230738  48 07 74 C1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023073C  48 00 01 04 */	b lbl_80230840
/* 80230740  7F E3 FB 78 */	mr r3, r31
/* 80230744  38 81 00 10 */	addi r4, r1, 0x10
/* 80230748  48 07 74 B1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023074C  48 00 00 F4 */	b lbl_80230840
/* 80230750  38 60 00 B2 */	li r3, 0xb2
/* 80230754  4B FF 7E 79 */	bl changeCodeToChar__FUs
/* 80230758  7C 64 1B 78 */	mr r4, r3
/* 8023075C  7F E3 FB 78 */	mr r3, r31
/* 80230760  48 07 74 99 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230764  48 00 00 DC */	b lbl_80230840
/* 80230768  38 60 00 B3 */	li r3, 0xb3
/* 8023076C  4B FF 7E 61 */	bl changeCodeToChar__FUs
/* 80230770  7C 64 1B 78 */	mr r4, r3
/* 80230774  7F E3 FB 78 */	mr r3, r31
/* 80230778  48 07 74 81 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023077C  48 00 00 C4 */	b lbl_80230840
/* 80230780  38 60 00 B1 */	li r3, 0xb1
/* 80230784  4B FF 7E 49 */	bl changeCodeToChar__FUs
/* 80230788  7C 64 1B 78 */	mr r4, r3
/* 8023078C  7F E3 FB 78 */	mr r3, r31
/* 80230790  48 07 74 69 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 80230794  48 00 00 AC */	b lbl_80230840
/* 80230798  38 60 00 89 */	li r3, 0x89
/* 8023079C  4B FF 7E 31 */	bl changeCodeToChar__FUs
/* 802307A0  7C 64 1B 78 */	mr r4, r3
/* 802307A4  7F E3 FB 78 */	mr r3, r31
/* 802307A8  48 07 74 51 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802307AC  48 00 00 94 */	b lbl_80230840
/* 802307B0  38 60 00 B9 */	li r3, 0xb9
/* 802307B4  4B FF 7E 19 */	bl changeCodeToChar__FUs
/* 802307B8  7C 64 1B 78 */	mr r4, r3
/* 802307BC  7F E3 FB 78 */	mr r3, r31
/* 802307C0  48 07 74 39 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802307C4  48 00 00 7C */	b lbl_80230840
/* 802307C8  38 60 00 BC */	li r3, 0xbc
/* 802307CC  4B FF 7E 01 */	bl changeCodeToChar__FUs
/* 802307D0  7C 64 1B 78 */	mr r4, r3
/* 802307D4  7F E3 FB 78 */	mr r3, r31
/* 802307D8  48 07 74 21 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802307DC  48 00 00 64 */	b lbl_80230840
/* 802307E0  38 60 00 BD */	li r3, 0xbd
/* 802307E4  4B FF 7D E9 */	bl changeCodeToChar__FUs
/* 802307E8  7C 64 1B 78 */	mr r4, r3
/* 802307EC  7F E3 FB 78 */	mr r3, r31
/* 802307F0  48 07 74 09 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802307F4  48 00 00 4C */	b lbl_80230840
/* 802307F8  38 60 00 BE */	li r3, 0xbe
/* 802307FC  4B FF 7D D1 */	bl changeCodeToChar__FUs
/* 80230800  7C 64 1B 78 */	mr r4, r3
/* 80230804  7F E3 FB 78 */	mr r3, r31
/* 80230808  48 07 73 F1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8023080C  48 00 00 34 */	b lbl_80230840
/* 80230810  EF FF F0 2A */	fadds f31, f31, f30
/* 80230814  4B FF F3 11 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230818  7C 64 07 34 */	extsh r4, r3
/* 8023081C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230820  FC 20 F8 90 */	fmr f1, f31
/* 80230824  4B FF F2 49 */	bl addLineLength__26jmessage_string_tReferenceFif
/* 80230828  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023082C  4B FF F2 F9 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230830  7C 64 07 34 */	extsh r4, r3
/* 80230834  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230838  FC 20 F8 90 */	fmr f1, f31
/* 8023083C  4B FF F2 91 */	bl setOutfontLength__26jmessage_string_tReferenceFif
lbl_80230840:
/* 80230840  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230844  4B FF F2 E1 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230848  7C 64 07 34 */	extsh r4, r3
/* 8023084C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230850  4B FF F2 A1 */	bl clearOutfontLength__26jmessage_string_tReferenceFi
/* 80230854  48 00 01 0C */	b lbl_80230960
lbl_80230858:
/* 80230858  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8023085C  2C 00 00 06 */	cmpwi r0, 6
/* 80230860  40 80 00 1C */	bge lbl_8023087C
/* 80230864  2C 00 00 00 */	cmpwi r0, 0
/* 80230868  41 82 00 F8 */	beq lbl_80230960
/* 8023086C  41 80 00 F4 */	blt lbl_80230960
/* 80230870  2C 00 00 03 */	cmpwi r0, 3
/* 80230874  40 80 00 68 */	bge lbl_802308DC
/* 80230878  48 00 00 20 */	b lbl_80230898
lbl_8023087C:
/* 8023087C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80230880  40 80 00 10 */	bge lbl_80230890
/* 80230884  2C 00 00 08 */	cmpwi r0, 8
/* 80230888  40 80 00 98 */	bge lbl_80230920
/* 8023088C  48 00 00 0C */	b lbl_80230898
lbl_80230890:
/* 80230890  2C 00 00 15 */	cmpwi r0, 0x15
/* 80230894  40 80 00 CC */	bge lbl_80230960
lbl_80230898:
/* 80230898  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8023089C  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802308A0  4B FF F1 8D */	bl setCharactor__26jmessage_string_tReferenceFUs
/* 802308A4  EF FF F0 2A */	fadds f31, f31, f30
/* 802308A8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802308AC  4B FF F2 79 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802308B0  7C 64 07 34 */	extsh r4, r3
/* 802308B4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802308B8  FC 20 F8 90 */	fmr f1, f31
/* 802308BC  4B FF F1 B1 */	bl addLineLength__26jmessage_string_tReferenceFif
/* 802308C0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802308C4  4B FF F2 61 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802308C8  7C 64 07 34 */	extsh r4, r3
/* 802308CC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802308D0  FC 20 F8 90 */	fmr f1, f31
/* 802308D4  4B FF F1 F9 */	bl setOutfontLength__26jmessage_string_tReferenceFif
/* 802308D8  48 00 00 88 */	b lbl_80230960
lbl_802308DC:
/* 802308DC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802308E0  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802308E4  4B FF F1 49 */	bl setCharactor__26jmessage_string_tReferenceFUs
/* 802308E8  EF FF F0 2A */	fadds f31, f31, f30
/* 802308EC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802308F0  4B FF F2 35 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 802308F4  7C 64 07 34 */	extsh r4, r3
/* 802308F8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802308FC  FC 20 F8 90 */	fmr f1, f31
/* 80230900  4B FF F1 6D */	bl addLineLength__26jmessage_string_tReferenceFif
/* 80230904  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230908  4B FF F2 1D */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 8023090C  7C 64 07 34 */	extsh r4, r3
/* 80230910  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230914  FC 20 F8 90 */	fmr f1, f31
/* 80230918  4B FF F1 B5 */	bl setOutfontLength__26jmessage_string_tReferenceFif
/* 8023091C  48 00 00 44 */	b lbl_80230960
lbl_80230920:
/* 80230920  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80230924  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80230928  4B FF F1 05 */	bl setCharactor__26jmessage_string_tReferenceFUs
/* 8023092C  EF FF F0 2A */	fadds f31, f31, f30
/* 80230930  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230934  4B FF F1 F1 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230938  7C 64 07 34 */	extsh r4, r3
/* 8023093C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230940  FC 20 F8 90 */	fmr f1, f31
/* 80230944  4B FF F1 29 */	bl addLineLength__26jmessage_string_tReferenceFif
/* 80230948  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023094C  4B FF F1 D9 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80230950  7C 64 07 34 */	extsh r4, r3
/* 80230954  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230958  FC 20 F8 90 */	fmr f1, f31
/* 8023095C  4B FF F1 71 */	bl setOutfontLength__26jmessage_string_tReferenceFif
lbl_80230960:
/* 80230960  38 60 00 01 */	li r3, 1
lbl_80230964:
/* 80230964  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80230968  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8023096C  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 80230970  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80230974  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 80230978  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8023097C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80230980  7C 08 03 A6 */	mtlr r0
/* 80230984  38 21 01 30 */	addi r1, r1, 0x130
/* 80230988  4E 80 00 20 */	blr 
