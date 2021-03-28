lbl_80256198:
/* 80256198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025619C  7C 08 02 A6 */	mflr r0
/* 802561A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802561A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802561A8  7C 7F 1B 78 */	mr r31, r3
/* 802561AC  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 802561B0  88 03 00 13 */	lbz r0, 0x13(r3)
/* 802561B4  28 00 00 00 */	cmplwi r0, 0
/* 802561B8  40 82 00 44 */	bne lbl_802561FC
/* 802561BC  48 0F 79 49 */	bl VIGetDTVStatus
/* 802561C0  28 03 00 00 */	cmplwi r3, 0
/* 802561C4  41 82 00 38 */	beq lbl_802561FC
/* 802561C8  7F E3 FB 78 */	mr r3, r31
/* 802561CC  48 00 23 55 */	bl isProgressiveMode__10dScnLogo_cFv
/* 802561D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802561D4  40 82 00 18 */	bne lbl_802561EC
/* 802561D8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 802561DC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 802561E0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802561E4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 802561E8  41 82 00 14 */	beq lbl_802561FC
lbl_802561EC:
/* 802561EC  38 00 00 01 */	li r0, 1
/* 802561F0  98 1F 02 0A */	stb r0, 0x20a(r31)
/* 802561F4  38 00 00 00 */	li r0, 0
/* 802561F8  98 1F 02 09 */	stb r0, 0x209(r31)
lbl_802561FC:
/* 802561FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256204  7C 08 03 A6 */	mtlr r0
/* 80256208  38 21 00 10 */	addi r1, r1, 0x10
/* 8025620C  4E 80 00 20 */	blr 
