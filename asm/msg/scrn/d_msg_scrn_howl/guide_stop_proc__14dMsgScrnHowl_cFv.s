lbl_80241E80:
/* 80241E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80241E84  7C 08 02 A6 */	mflr r0
/* 80241E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80241E8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80241E90  7C 7F 1B 78 */	mr r31, r3
/* 80241E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80241E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80241E9C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80241EA0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80241EA4  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80241EA8  7D 89 03 A6 */	mtctr r12
/* 80241EAC  4E 80 04 21 */	bctrl 
/* 80241EB0  48 08 8E 1D */	bl getNowInputValue__13Z2WolfHowlMgrFv
/* 80241EB4  FC 20 08 50 */	fneg f1, f1
/* 80241EB8  7F E3 FB 78 */	mr r3, r31
/* 80241EBC  48 00 20 D9 */	bl getNowPlotPitch__14dMsgScrnHowl_cFf
/* 80241EC0  A8 1F 21 24 */	lha r0, 0x2124(r31)
/* 80241EC4  54 00 10 3A */	slwi r0, r0, 2
/* 80241EC8  7C 7F 02 14 */	add r3, r31, r0
/* 80241ECC  D0 23 01 80 */	stfs f1, 0x180(r3)
/* 80241ED0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80241ED4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80241ED8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80241EDC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80241EE0  41 82 00 18 */	beq lbl_80241EF8
/* 80241EE4  7F E3 FB 78 */	mr r3, r31
/* 80241EE8  48 00 01 ED */	bl resetLine__14dMsgScrnHowl_cFv
/* 80241EEC  38 00 00 01 */	li r0, 1
/* 80241EF0  98 1F 27 98 */	stb r0, 0x2798(r31)
/* 80241EF4  48 00 00 20 */	b lbl_80241F14
lbl_80241EF8:
/* 80241EF8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80241EFC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80241F00  41 82 00 14 */	beq lbl_80241F14
/* 80241F04  7F E3 FB 78 */	mr r3, r31
/* 80241F08  48 00 01 CD */	bl resetLine__14dMsgScrnHowl_cFv
/* 80241F0C  38 00 00 03 */	li r0, 3
/* 80241F10  98 1F 27 98 */	stb r0, 0x2798(r31)
lbl_80241F14:
/* 80241F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80241F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80241F1C  7C 08 03 A6 */	mtlr r0
/* 80241F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80241F24  4E 80 00 20 */	blr 
