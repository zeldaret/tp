lbl_80241D5C:
/* 80241D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80241D60  7C 08 02 A6 */	mflr r0
/* 80241D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80241D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80241D6C  7C 7F 1B 78 */	mr r31, r3
/* 80241D70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80241D74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80241D78  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80241D7C  80 04 2E 0C */	lwz r0, 0x2e0c(r4)
/* 80241D80  28 00 00 00 */	cmplwi r0, 0
/* 80241D84  40 82 00 44 */	bne lbl_80241DC8
/* 80241D88  88 1F 21 95 */	lbz r0, 0x2195(r31)
/* 80241D8C  28 00 00 01 */	cmplwi r0, 1
/* 80241D90  40 82 00 0C */	bne lbl_80241D9C
/* 80241D94  38 00 00 02 */	li r0, 2
/* 80241D98  98 1F 21 95 */	stb r0, 0x2195(r31)
lbl_80241D9C:
/* 80241D9C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80241DA0  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80241DA4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80241DA8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80241DAC  41 82 00 3C */	beq lbl_80241DE8
/* 80241DB0  88 1F 21 95 */	lbz r0, 0x2195(r31)
/* 80241DB4  28 00 00 02 */	cmplwi r0, 2
/* 80241DB8  40 82 00 30 */	bne lbl_80241DE8
/* 80241DBC  7F E3 FB 78 */	mr r3, r31
/* 80241DC0  48 00 03 15 */	bl resetLine__14dMsgScrnHowl_cFv
/* 80241DC4  48 00 00 24 */	b lbl_80241DE8
lbl_80241DC8:
/* 80241DC8  88 1F 21 95 */	lbz r0, 0x2195(r31)
/* 80241DCC  28 00 00 02 */	cmplwi r0, 2
/* 80241DD0  40 82 00 08 */	bne lbl_80241DD8
/* 80241DD4  48 00 03 01 */	bl resetLine__14dMsgScrnHowl_cFv
lbl_80241DD8:
/* 80241DD8  38 00 00 01 */	li r0, 1
/* 80241DDC  98 1F 21 95 */	stb r0, 0x2195(r31)
/* 80241DE0  7F E3 FB 78 */	mr r3, r31
/* 80241DE4  48 00 1A 55 */	bl calcMain__14dMsgScrnHowl_cFv
lbl_80241DE8:
/* 80241DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80241DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80241DF0  7C 08 03 A6 */	mtlr r0
/* 80241DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80241DF8  4E 80 00 20 */	blr 
