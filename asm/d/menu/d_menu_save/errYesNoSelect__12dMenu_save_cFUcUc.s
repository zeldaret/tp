lbl_801F4E48:
/* 801F4E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4E4C  7C 08 02 A6 */	mflr r0
/* 801F4E50  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4E54  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4E58  48 16 D3 81 */	bl _savegpr_28
/* 801F4E5C  7C 7F 1B 78 */	mr r31, r3
/* 801F4E60  7C 9C 23 78 */	mr r28, r4
/* 801F4E64  7C BD 2B 78 */	mr r29, r5
/* 801F4E68  3B C0 00 00 */	li r30, 0
/* 801F4E6C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 801F4E70  80 03 00 00 */	lwz r0, 0(r3)
/* 801F4E74  2C 00 00 00 */	cmpwi r0, 0
/* 801F4E78  41 82 00 0C */	beq lbl_801F4E84
/* 801F4E7C  38 60 00 00 */	li r3, 0
/* 801F4E80  48 00 01 1C */	b lbl_801F4F9C
lbl_801F4E84:
/* 801F4E84  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F4E88  4B E3 D3 15 */	bl checkTrigger__9STControlFv
/* 801F4E8C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801F4E90  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801F4E94  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801F4E98  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801F4E9C  41 82 00 A0 */	beq lbl_801F4F3C
/* 801F4EA0  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F4EA4  28 00 00 00 */	cmplwi r0, 0
/* 801F4EA8  41 82 00 44 */	beq lbl_801F4EEC
/* 801F4EAC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801F4EB0  40 82 00 78 */	bne lbl_801F4F28
/* 801F4EB4  38 00 00 6D */	li r0, 0x6d
/* 801F4EB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F4EBC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F4EC0  38 81 00 0C */	addi r4, r1, 0xc
/* 801F4EC4  38 A0 00 00 */	li r5, 0
/* 801F4EC8  38 C0 00 00 */	li r6, 0
/* 801F4ECC  38 E0 00 00 */	li r7, 0
/* 801F4ED0  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4ED4  FC 40 08 90 */	fmr f2, f1
/* 801F4ED8  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F4EDC  FC 80 18 90 */	fmr f4, f3
/* 801F4EE0  39 00 00 00 */	li r8, 0
/* 801F4EE4  48 0B 6A A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F4EE8  48 00 00 40 */	b lbl_801F4F28
lbl_801F4EEC:
/* 801F4EEC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801F4EF0  40 82 00 38 */	bne lbl_801F4F28
/* 801F4EF4  38 00 00 6E */	li r0, 0x6e
/* 801F4EF8  90 01 00 08 */	stw r0, 8(r1)
/* 801F4EFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F4F00  38 81 00 08 */	addi r4, r1, 8
/* 801F4F04  38 A0 00 00 */	li r5, 0
/* 801F4F08  38 C0 00 00 */	li r6, 0
/* 801F4F0C  38 E0 00 00 */	li r7, 0
/* 801F4F10  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4F14  FC 40 08 90 */	fmr f2, f1
/* 801F4F18  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F4F1C  FC 80 18 90 */	fmr f4, f3
/* 801F4F20  39 00 00 00 */	li r8, 0
/* 801F4F24  48 0B 6A 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801F4F28:
/* 801F4F28  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F4F2C  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F4F30  4B FA 03 71 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F4F34  3B C0 00 01 */	li r30, 1
/* 801F4F38  48 00 00 60 */	b lbl_801F4F98
lbl_801F4F3C:
/* 801F4F3C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F4F40  4B E3 D5 69 */	bl checkRightTrigger__9STControlFv
/* 801F4F44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F4F48  41 82 00 24 */	beq lbl_801F4F6C
/* 801F4F4C  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F4F50  28 00 00 00 */	cmplwi r0, 0
/* 801F4F54  41 82 00 44 */	beq lbl_801F4F98
/* 801F4F58  7F E3 FB 78 */	mr r3, r31
/* 801F4F5C  7F 84 E3 78 */	mr r4, r28
/* 801F4F60  38 A0 00 00 */	li r5, 0
/* 801F4F64  48 00 00 51 */	bl errCurMove__12dMenu_save_cFUcUc
/* 801F4F68  48 00 00 30 */	b lbl_801F4F98
lbl_801F4F6C:
/* 801F4F6C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F4F70  4B E3 D4 BD */	bl checkLeftTrigger__9STControlFv
/* 801F4F74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F4F78  41 82 00 20 */	beq lbl_801F4F98
/* 801F4F7C  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F4F80  28 00 00 01 */	cmplwi r0, 1
/* 801F4F84  41 82 00 14 */	beq lbl_801F4F98
/* 801F4F88  7F E3 FB 78 */	mr r3, r31
/* 801F4F8C  7F 84 E3 78 */	mr r4, r28
/* 801F4F90  38 A0 00 00 */	li r5, 0
/* 801F4F94  48 00 00 21 */	bl errCurMove__12dMenu_save_cFUcUc
lbl_801F4F98:
/* 801F4F98  7F C3 F3 78 */	mr r3, r30
lbl_801F4F9C:
/* 801F4F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4FA0  48 16 D2 85 */	bl _restgpr_28
/* 801F4FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F4FA8  7C 08 03 A6 */	mtlr r0
/* 801F4FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4FB0  4E 80 00 20 */	blr 
