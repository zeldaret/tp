lbl_80187ED4:
/* 80187ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187ED8  7C 08 02 A6 */	mflr r0
/* 80187EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187EE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80187EE4  7C 7F 1B 78 */	mr r31, r3
/* 80187EE8  80 63 02 54 */	lwz r3, 0x254(r3)
/* 80187EEC  4B EA A2 B1 */	bl checkTrigger__9STControlFv
/* 80187EF0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80187EF4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80187EF8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80187EFC  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80187F00  41 82 00 10 */	beq lbl_80187F10
/* 80187F04  7F E3 FB 78 */	mr r3, r31
/* 80187F08  48 00 01 15 */	bl copyDataToSelectStart__14dFile_select_cFv
/* 80187F0C  48 00 00 FC */	b lbl_80188008
lbl_80187F10:
/* 80187F10  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80187F14  41 82 00 10 */	beq lbl_80187F24
/* 80187F18  7F E3 FB 78 */	mr r3, r31
/* 80187F1C  48 00 03 19 */	bl copyDataToSelectCansel__14dFile_select_cFv
/* 80187F20  48 00 00 E8 */	b lbl_80188008
lbl_80187F24:
/* 80187F24  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 80187F28  4B EA A5 FD */	bl checkUpTrigger__9STControlFv
/* 80187F2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80187F30  41 82 00 68 */	beq lbl_80187F98
/* 80187F34  88 1F 02 6B */	lbz r0, 0x26b(r31)
/* 80187F38  28 00 00 00 */	cmplwi r0, 0
/* 80187F3C  41 82 00 CC */	beq lbl_80188008
/* 80187F40  38 00 00 04 */	li r0, 4
/* 80187F44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80187F48  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80187F4C  38 81 00 0C */	addi r4, r1, 0xc
/* 80187F50  38 A0 00 00 */	li r5, 0
/* 80187F54  38 C0 00 00 */	li r6, 0
/* 80187F58  38 E0 00 00 */	li r7, 0
/* 80187F5C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80187F60  FC 40 08 90 */	fmr f2, f1
/* 80187F64  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80187F68  FC 80 18 90 */	fmr f4, f3
/* 80187F6C  39 00 00 00 */	li r8, 0
/* 80187F70  48 12 3A 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80187F74  88 1F 02 6B */	lbz r0, 0x26b(r31)
/* 80187F78  98 1F 02 6C */	stb r0, 0x26c(r31)
/* 80187F7C  38 00 00 00 */	li r0, 0
/* 80187F80  98 1F 02 6B */	stb r0, 0x26b(r31)
/* 80187F84  7F E3 FB 78 */	mr r3, r31
/* 80187F88  48 00 03 A5 */	bl copyDataToSelectMoveAnmSet__14dFile_select_cFv
/* 80187F8C  38 00 00 17 */	li r0, 0x17
/* 80187F90  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80187F94  48 00 00 74 */	b lbl_80188008
lbl_80187F98:
/* 80187F98  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 80187F9C  4B EA A6 05 */	bl checkDownTrigger__9STControlFv
/* 80187FA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80187FA4  41 82 00 64 */	beq lbl_80188008
/* 80187FA8  88 1F 02 6B */	lbz r0, 0x26b(r31)
/* 80187FAC  28 00 00 01 */	cmplwi r0, 1
/* 80187FB0  41 82 00 58 */	beq lbl_80188008
/* 80187FB4  38 00 00 04 */	li r0, 4
/* 80187FB8  90 01 00 08 */	stw r0, 8(r1)
/* 80187FBC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80187FC0  38 81 00 08 */	addi r4, r1, 8
/* 80187FC4  38 A0 00 00 */	li r5, 0
/* 80187FC8  38 C0 00 00 */	li r6, 0
/* 80187FCC  38 E0 00 00 */	li r7, 0
/* 80187FD0  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80187FD4  FC 40 08 90 */	fmr f2, f1
/* 80187FD8  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80187FDC  FC 80 18 90 */	fmr f4, f3
/* 80187FE0  39 00 00 00 */	li r8, 0
/* 80187FE4  48 12 39 A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80187FE8  88 1F 02 6B */	lbz r0, 0x26b(r31)
/* 80187FEC  98 1F 02 6C */	stb r0, 0x26c(r31)
/* 80187FF0  38 00 00 01 */	li r0, 1
/* 80187FF4  98 1F 02 6B */	stb r0, 0x26b(r31)
/* 80187FF8  7F E3 FB 78 */	mr r3, r31
/* 80187FFC  48 00 03 31 */	bl copyDataToSelectMoveAnmSet__14dFile_select_cFv
/* 80188000  38 00 00 17 */	li r0, 0x17
/* 80188004  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80188008:
/* 80188008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018800C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80188010  7C 08 03 A6 */	mtlr r0
/* 80188014  38 21 00 20 */	addi r1, r1, 0x20
/* 80188018  4E 80 00 20 */	blr 
