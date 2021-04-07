lbl_801F7D94:
/* 801F7D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F7D98  7C 08 02 A6 */	mflr r0
/* 801F7D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F7DA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F7DA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F7DA8  7C 7E 1B 78 */	mr r30, r3
/* 801F7DAC  8B E3 02 06 */	lbz r31, 0x206(r3)
/* 801F7DB0  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801F7DB4  80 03 00 04 */	lwz r0, 4(r3)
/* 801F7DB8  2C 00 00 01 */	cmpwi r0, 1
/* 801F7DBC  40 82 01 50 */	bne lbl_801F7F0C
/* 801F7DC0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801F7DC4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801F7DC8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F7DCC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801F7DD0  41 82 00 20 */	beq lbl_801F7DF0
/* 801F7DD4  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 801F7DD8  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801F7DDC  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801F7DE0  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801F7DE4  38 00 00 03 */	li r0, 3
/* 801F7DE8  98 1E 02 04 */	stb r0, 0x204(r30)
/* 801F7DEC  48 00 01 0C */	b lbl_801F7EF8
lbl_801F7DF0:
/* 801F7DF0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801F7DF4  41 82 00 48 */	beq lbl_801F7E3C
/* 801F7DF8  38 00 00 01 */	li r0, 1
/* 801F7DFC  98 1E 02 05 */	stb r0, 0x205(r30)
/* 801F7E00  38 00 00 51 */	li r0, 0x51
/* 801F7E04  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F7E08  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F7E0C  38 81 00 10 */	addi r4, r1, 0x10
/* 801F7E10  38 A0 00 00 */	li r5, 0
/* 801F7E14  38 C0 00 00 */	li r6, 0
/* 801F7E18  38 E0 00 00 */	li r7, 0
/* 801F7E1C  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F7E20  FC 40 08 90 */	fmr f2, f1
/* 801F7E24  C0 62 AA A8 */	lfs f3, lit_3946(r2)
/* 801F7E28  FC 80 18 90 */	fmr f4, f3
/* 801F7E2C  39 00 00 00 */	li r8, 0
/* 801F7E30  48 0B 3B 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F7E34  48 02 6B 9D */	bl dMeter2Info_set2DVibration__Fv
/* 801F7E38  48 00 00 C0 */	b lbl_801F7EF8
lbl_801F7E3C:
/* 801F7E3C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801F7E40  4B E3 A6 E5 */	bl checkUpTrigger__9STControlFv
/* 801F7E44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F7E48  41 82 00 50 */	beq lbl_801F7E98
/* 801F7E4C  88 7E 02 06 */	lbz r3, 0x206(r30)
/* 801F7E50  28 03 00 00 */	cmplwi r3, 0
/* 801F7E54  41 82 00 A4 */	beq lbl_801F7EF8
/* 801F7E58  38 03 FF FF */	addi r0, r3, -1
/* 801F7E5C  98 1E 02 06 */	stb r0, 0x206(r30)
/* 801F7E60  38 00 00 4D */	li r0, 0x4d
/* 801F7E64  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F7E68  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F7E6C  38 81 00 0C */	addi r4, r1, 0xc
/* 801F7E70  38 A0 00 00 */	li r5, 0
/* 801F7E74  38 C0 00 00 */	li r6, 0
/* 801F7E78  38 E0 00 00 */	li r7, 0
/* 801F7E7C  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F7E80  FC 40 08 90 */	fmr f2, f1
/* 801F7E84  C0 62 AA A8 */	lfs f3, lit_3946(r2)
/* 801F7E88  FC 80 18 90 */	fmr f4, f3
/* 801F7E8C  39 00 00 00 */	li r8, 0
/* 801F7E90  48 0B 3A F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F7E94  48 00 00 64 */	b lbl_801F7EF8
lbl_801F7E98:
/* 801F7E98  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801F7E9C  4B E3 A7 05 */	bl checkDownTrigger__9STControlFv
/* 801F7EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F7EA4  41 82 00 54 */	beq lbl_801F7EF8
/* 801F7EA8  88 9E 02 06 */	lbz r4, 0x206(r30)
/* 801F7EAC  88 7E 02 07 */	lbz r3, 0x207(r30)
/* 801F7EB0  38 03 FF FF */	addi r0, r3, -1
/* 801F7EB4  7C 04 00 00 */	cmpw r4, r0
/* 801F7EB8  40 80 00 40 */	bge lbl_801F7EF8
/* 801F7EBC  38 04 00 01 */	addi r0, r4, 1
/* 801F7EC0  98 1E 02 06 */	stb r0, 0x206(r30)
/* 801F7EC4  38 00 00 4D */	li r0, 0x4d
/* 801F7EC8  90 01 00 08 */	stw r0, 8(r1)
/* 801F7ECC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F7ED0  38 81 00 08 */	addi r4, r1, 8
/* 801F7ED4  38 A0 00 00 */	li r5, 0
/* 801F7ED8  38 C0 00 00 */	li r6, 0
/* 801F7EDC  38 E0 00 00 */	li r7, 0
/* 801F7EE0  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F7EE4  FC 40 08 90 */	fmr f2, f1
/* 801F7EE8  C0 62 AA A8 */	lfs f3, lit_3946(r2)
/* 801F7EEC  FC 80 18 90 */	fmr f4, f3
/* 801F7EF0  39 00 00 00 */	li r8, 0
/* 801F7EF4  48 0B 3A 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801F7EF8:
/* 801F7EF8  88 1E 02 06 */	lbz r0, 0x206(r30)
/* 801F7EFC  7C 1F 00 40 */	cmplw r31, r0
/* 801F7F00  41 82 00 0C */	beq lbl_801F7F0C
/* 801F7F04  7F C3 F3 78 */	mr r3, r30
/* 801F7F08  48 00 10 21 */	bl changeActiveColor__13dMenu_Skill_cFv
lbl_801F7F0C:
/* 801F7F0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F7F10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F7F14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F7F18  7C 08 03 A6 */	mtlr r0
/* 801F7F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F7F20  4E 80 00 20 */	blr 
