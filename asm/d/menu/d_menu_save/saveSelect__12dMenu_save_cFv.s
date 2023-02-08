lbl_801F3934:
/* 801F3934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F3938  7C 08 02 A6 */	mflr r0
/* 801F393C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F3940  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F3944  7C 7F 1B 78 */	mr r31, r3
/* 801F3948  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 801F394C  80 03 00 00 */	lwz r0, 0(r3)
/* 801F3950  2C 00 00 00 */	cmpwi r0, 0
/* 801F3954  40 82 01 2C */	bne lbl_801F3A80
/* 801F3958  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F395C  4B E3 E8 41 */	bl checkTrigger__9STControlFv
/* 801F3960  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801F3964  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801F3968  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F396C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801F3970  41 82 00 10 */	beq lbl_801F3980
/* 801F3974  7F E3 FB 78 */	mr r3, r31
/* 801F3978  48 00 01 1D */	bl saveSelectStart__12dMenu_save_cFv
/* 801F397C  48 00 01 04 */	b lbl_801F3A80
lbl_801F3980:
/* 801F3980  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801F3984  41 82 00 10 */	beq lbl_801F3994
/* 801F3988  7F E3 FB 78 */	mr r3, r31
/* 801F398C  4B FF E1 AD */	bl closeSelect__12dMenu_save_cFv
/* 801F3990  48 00 00 F0 */	b lbl_801F3A80
lbl_801F3994:
/* 801F3994  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F3998  4B E3 EB 8D */	bl checkUpTrigger__9STControlFv
/* 801F399C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F39A0  41 82 00 6C */	beq lbl_801F3A0C
/* 801F39A4  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F39A8  28 00 00 00 */	cmplwi r0, 0
/* 801F39AC  41 82 00 D4 */	beq lbl_801F3A80
/* 801F39B0  38 00 00 04 */	li r0, 4
/* 801F39B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F39B8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F39BC  38 81 00 0C */	addi r4, r1, 0xc
/* 801F39C0  38 A0 00 00 */	li r5, 0
/* 801F39C4  38 C0 00 00 */	li r6, 0
/* 801F39C8  38 E0 00 00 */	li r7, 0
/* 801F39CC  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F39D0  FC 40 08 90 */	fmr f2, f1
/* 801F39D4  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F39D8  FC 80 18 90 */	fmr f4, f3
/* 801F39DC  39 00 00 00 */	li r8, 0
/* 801F39E0  48 0B 7F A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F39E4  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F39E8  98 1F 00 55 */	stb r0, 0x55(r31)
/* 801F39EC  88 7F 00 54 */	lbz r3, 0x54(r31)
/* 801F39F0  38 03 FF FF */	addi r0, r3, -1
/* 801F39F4  98 1F 00 54 */	stb r0, 0x54(r31)
/* 801F39F8  7F E3 FB 78 */	mr r3, r31
/* 801F39FC  48 00 02 81 */	bl dataSelectAnmSet__12dMenu_save_cFv
/* 801F3A00  38 00 00 32 */	li r0, 0x32
/* 801F3A04  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F3A08  48 00 00 78 */	b lbl_801F3A80
lbl_801F3A0C:
/* 801F3A0C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F3A10  4B E3 EB 91 */	bl checkDownTrigger__9STControlFv
/* 801F3A14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F3A18  41 82 00 68 */	beq lbl_801F3A80
/* 801F3A1C  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3A20  28 00 00 02 */	cmplwi r0, 2
/* 801F3A24  41 82 00 5C */	beq lbl_801F3A80
/* 801F3A28  38 00 00 04 */	li r0, 4
/* 801F3A2C  90 01 00 08 */	stw r0, 8(r1)
/* 801F3A30  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F3A34  38 81 00 08 */	addi r4, r1, 8
/* 801F3A38  38 A0 00 00 */	li r5, 0
/* 801F3A3C  38 C0 00 00 */	li r6, 0
/* 801F3A40  38 E0 00 00 */	li r7, 0
/* 801F3A44  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F3A48  FC 40 08 90 */	fmr f2, f1
/* 801F3A4C  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F3A50  FC 80 18 90 */	fmr f4, f3
/* 801F3A54  39 00 00 00 */	li r8, 0
/* 801F3A58  48 0B 7F 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F3A5C  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3A60  98 1F 00 55 */	stb r0, 0x55(r31)
/* 801F3A64  88 7F 00 54 */	lbz r3, 0x54(r31)
/* 801F3A68  38 03 00 01 */	addi r0, r3, 1
/* 801F3A6C  98 1F 00 54 */	stb r0, 0x54(r31)
/* 801F3A70  7F E3 FB 78 */	mr r3, r31
/* 801F3A74  48 00 02 09 */	bl dataSelectAnmSet__12dMenu_save_cFv
/* 801F3A78  38 00 00 32 */	li r0, 0x32
/* 801F3A7C  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F3A80:
/* 801F3A80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F3A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F3A88  7C 08 03 A6 */	mtlr r0
/* 801F3A8C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F3A90  4E 80 00 20 */	blr 
