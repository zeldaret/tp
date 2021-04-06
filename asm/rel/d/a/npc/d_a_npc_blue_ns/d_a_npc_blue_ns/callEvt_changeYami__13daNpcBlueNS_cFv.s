lbl_80969468:
/* 80969468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096946C  7C 08 02 A6 */	mflr r0
/* 80969470  90 01 00 24 */	stw r0, 0x24(r1)
/* 80969474  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80969478  7C 7F 1B 78 */	mr r31, r3
/* 8096947C  80 03 0C B0 */	lwz r0, 0xcb0(r3)
/* 80969480  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80969484  90 03 0C B0 */	stw r0, 0xcb0(r3)
/* 80969488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096948C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80969490  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80969494  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80969498  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8096949C  7C 05 07 74 */	extsb r5, r0
/* 809694A0  4B 6C BD 61 */	bl onSwitch__10dSv_info_cFii
/* 809694A4  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 809694A8  54 00 08 3C */	slwi r0, r0, 1
/* 809694AC  3C 60 80 97 */	lis r3, sCallEvtName@ha /* 0x8096C9F8@ha */
/* 809694B0  38 63 C9 F8 */	addi r3, r3, sCallEvtName@l /* 0x8096C9F8@l */
/* 809694B4  7C 03 02 2E */	lhzx r0, r3, r0
/* 809694B8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809694BC  38 00 00 01 */	li r0, 1
/* 809694C0  98 1F 00 FF */	stb r0, 0xff(r31)
/* 809694C4  3C 60 80 97 */	lis r3, lit_4401@ha /* 0x8096CCEC@ha */
/* 809694C8  38 83 CC EC */	addi r4, r3, lit_4401@l /* 0x8096CCEC@l */
/* 809694CC  80 64 00 00 */	lwz r3, 0(r4)
/* 809694D0  80 04 00 04 */	lwz r0, 4(r4)
/* 809694D4  90 61 00 08 */	stw r3, 8(r1)
/* 809694D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809694DC  80 04 00 08 */	lwz r0, 8(r4)
/* 809694E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809694E4  7F E3 FB 78 */	mr r3, r31
/* 809694E8  38 81 00 08 */	addi r4, r1, 8
/* 809694EC  48 00 12 65 */	bl setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i
/* 809694F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809694F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809694F8  7C 08 03 A6 */	mtlr r0
/* 809694FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80969500  4E 80 00 20 */	blr 
