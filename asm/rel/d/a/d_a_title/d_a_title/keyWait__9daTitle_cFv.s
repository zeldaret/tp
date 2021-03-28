lbl_80D674B4:
/* 80D674B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D674B8  7C 08 02 A6 */	mflr r0
/* 80D674BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D674C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D674C4  7C 7F 1B 78 */	mr r31, r3
/* 80D674C8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80D674CC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80D674D0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80D674D4  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80D674D8  40 82 00 0C */	bne lbl_80D674E4
/* 80D674DC  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80D674E0  41 82 00 50 */	beq lbl_80D67530
lbl_80D674E4:
/* 80D674E4  38 00 00 03 */	li r0, 3
/* 80D674E8  90 01 00 08 */	stw r0, 8(r1)
/* 80D674EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D674F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D674F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D674F8  38 81 00 08 */	addi r4, r1, 8
/* 80D674FC  38 A0 00 00 */	li r5, 0
/* 80D67500  38 C0 00 00 */	li r6, 0
/* 80D67504  38 E0 00 00 */	li r7, 0
/* 80D67508  3D 00 80 D6 */	lis r8, lit_4003@ha
/* 80D6750C  C0 28 7B E8 */	lfs f1, lit_4003@l(r8)
/* 80D67510  FC 40 08 90 */	fmr f2, f1
/* 80D67514  3D 00 80 D6 */	lis r8, lit_4287@ha
/* 80D67518  C0 68 7B FC */	lfs f3, lit_4287@l(r8)
/* 80D6751C  FC 80 18 90 */	fmr f4, f3
/* 80D67520  39 00 00 00 */	li r8, 0
/* 80D67524  4B 54 44 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D67528  7F E3 FB 78 */	mr r3, r31
/* 80D6752C  48 00 00 19 */	bl nextScene_init__9daTitle_cFv
lbl_80D67530:
/* 80D67530  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D67534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D67538  7C 08 03 A6 */	mtlr r0
/* 80D6753C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D67540  4E 80 00 20 */	blr 
