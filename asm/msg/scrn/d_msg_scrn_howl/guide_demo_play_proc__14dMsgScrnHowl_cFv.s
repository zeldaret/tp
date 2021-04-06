lbl_80241F34:
/* 80241F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80241F38  7C 08 02 A6 */	mflr r0
/* 80241F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80241F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80241F44  93 C1 00 08 */	stw r30, 8(r1)
/* 80241F48  7C 7F 1B 78 */	mr r31, r3
/* 80241F4C  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80241F50  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80241F54  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80241F58  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80241F5C  41 82 00 28 */	beq lbl_80241F84
/* 80241F60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80241F64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80241F68  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80241F6C  80 04 2E 0C */	lwz r0, 0x2e0c(r4)
/* 80241F70  28 00 00 00 */	cmplwi r0, 0
/* 80241F74  41 82 00 10 */	beq lbl_80241F84
/* 80241F78  48 00 01 5D */	bl resetLine__14dMsgScrnHowl_cFv
/* 80241F7C  38 00 00 01 */	li r0, 1
/* 80241F80  98 1F 27 98 */	stb r0, 0x2798(r31)
lbl_80241F84:
/* 80241F84  7F E3 FB 78 */	mr r3, r31
/* 80241F88  48 00 18 B1 */	bl calcMain__14dMsgScrnHowl_cFv
/* 80241F8C  3B C0 00 00 */	li r30, 0
/* 80241F90  A8 1F 21 2A */	lha r0, 0x212a(r31)
/* 80241F94  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80241F98  40 82 00 08 */	bne lbl_80241FA0
/* 80241F9C  3B C0 00 01 */	li r30, 1
lbl_80241FA0:
/* 80241FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80241FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80241FA8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80241FAC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80241FB0  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80241FB4  7D 89 03 A6 */	mtctr r12
/* 80241FB8  4E 80 04 21 */	bctrl 
/* 80241FBC  7F C4 F3 78 */	mr r4, r30
/* 80241FC0  48 08 9A C9 */	bl startGuideMelody__13Z2WolfHowlMgrFb
/* 80241FC4  90 7F 01 7C */	stw r3, 0x17c(r31)
/* 80241FC8  A8 1F 21 2A */	lha r0, 0x212a(r31)
/* 80241FCC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80241FD0  41 80 00 44 */	blt lbl_80242014
/* 80241FD4  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80241FD8  28 00 00 00 */	cmplwi r0, 0
/* 80241FDC  40 82 00 24 */	bne lbl_80242000
/* 80241FE0  88 1F 27 9A */	lbz r0, 0x279a(r31)
/* 80241FE4  28 00 00 00 */	cmplwi r0, 0
/* 80241FE8  41 82 00 2C */	beq lbl_80242014
/* 80241FEC  7F E3 FB 78 */	mr r3, r31
/* 80241FF0  48 00 00 E5 */	bl resetLine__14dMsgScrnHowl_cFv
/* 80241FF4  38 00 00 00 */	li r0, 0
/* 80241FF8  98 1F 27 9A */	stb r0, 0x279a(r31)
/* 80241FFC  48 00 00 18 */	b lbl_80242014
lbl_80242000:
/* 80242000  88 1F 27 9A */	lbz r0, 0x279a(r31)
/* 80242004  28 00 00 00 */	cmplwi r0, 0
/* 80242008  40 82 00 0C */	bne lbl_80242014
/* 8024200C  38 00 00 01 */	li r0, 1
/* 80242010  98 1F 27 9A */	stb r0, 0x279a(r31)
lbl_80242014:
/* 80242014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80242018  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024201C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242020  7C 08 03 A6 */	mtlr r0
/* 80242024  38 21 00 10 */	addi r1, r1, 0x10
/* 80242028  4E 80 00 20 */	blr 
