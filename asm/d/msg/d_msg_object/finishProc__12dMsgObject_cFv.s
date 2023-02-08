lbl_80235AD4:
/* 80235AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80235AD8  7C 08 02 A6 */	mflr r0
/* 80235ADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80235AE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80235AE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80235AE8  7C 7F 1B 78 */	mr r31, r3
/* 80235AEC  A0 03 01 68 */	lhz r0, 0x168(r3)
/* 80235AF0  28 00 00 10 */	cmplwi r0, 0x10
/* 80235AF4  41 82 00 60 */	beq lbl_80235B54
/* 80235AF8  88 1F 04 CB */	lbz r0, 0x4cb(r31)
/* 80235AFC  28 00 00 00 */	cmplwi r0, 0
/* 80235B00  41 82 00 54 */	beq lbl_80235B54
/* 80235B04  48 00 17 39 */	bl isTalkMessage__12dMsgObject_cFv
/* 80235B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235B0C  41 82 00 48 */	beq lbl_80235B54
/* 80235B10  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80235B14  88 03 12 47 */	lbz r0, 0x1247(r3)
/* 80235B18  28 00 00 01 */	cmplwi r0, 1
/* 80235B1C  41 82 00 38 */	beq lbl_80235B54
/* 80235B20  38 00 00 60 */	li r0, 0x60
/* 80235B24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80235B28  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80235B2C  38 81 00 0C */	addi r4, r1, 0xc
/* 80235B30  38 A0 00 00 */	li r5, 0
/* 80235B34  38 C0 00 00 */	li r6, 0
/* 80235B38  38 E0 00 00 */	li r7, 0
/* 80235B3C  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 80235B40  FC 40 08 90 */	fmr f2, f1
/* 80235B44  C0 62 B1 10 */	lfs f3, lit_4145(r2)
/* 80235B48  FC 80 18 90 */	fmr f4, f3
/* 80235B4C  39 00 00 00 */	li r8, 0
/* 80235B50  48 07 5E 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80235B54:
/* 80235B54  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80235B58  4B FF 36 11 */	bl selectMessage__19jmessage_tReferenceFv
/* 80235B5C  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 80235B60  80 63 00 04 */	lwz r3, 4(r3)
/* 80235B64  88 03 12 4C */	lbz r0, 0x124c(r3)
/* 80235B68  28 00 00 01 */	cmplwi r0, 1
/* 80235B6C  41 82 00 30 */	beq lbl_80235B9C
/* 80235B70  28 00 00 03 */	cmplwi r0, 3
/* 80235B74  41 82 00 28 */	beq lbl_80235B9C
/* 80235B78  28 00 00 04 */	cmplwi r0, 4
/* 80235B7C  41 82 00 20 */	beq lbl_80235B9C
/* 80235B80  28 00 00 06 */	cmplwi r0, 6
/* 80235B84  41 82 00 18 */	beq lbl_80235B9C
/* 80235B88  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235B8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80235B90  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80235B94  7D 89 03 A6 */	mtctr r12
/* 80235B98  4E 80 04 21 */	bctrl 
lbl_80235B9C:
/* 80235B9C  7F E3 FB 78 */	mr r3, r31
/* 80235BA0  48 00 15 49 */	bl isHowlMessage__12dMsgObject_cFv
/* 80235BA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235BA8  41 82 00 2C */	beq lbl_80235BD4
/* 80235BAC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235BB0  48 00 C4 D1 */	bl isKeyCheck__14dMsgScrnHowl_cFv
/* 80235BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235BB8  41 82 00 1C */	beq lbl_80235BD4
/* 80235BBC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80235BC0  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80235BC4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80235BC8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80235BCC  41 82 00 08 */	beq lbl_80235BD4
/* 80235BD0  48 00 27 51 */	bl onMsgSend__12dMsgObject_cFv
lbl_80235BD4:
/* 80235BD4  7F E3 FB 78 */	mr r3, r31
/* 80235BD8  48 00 0E 01 */	bl isSend__12dMsgObject_cFv
/* 80235BDC  7C 7E 1B 78 */	mr r30, r3
/* 80235BE0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80235BE4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80235BE8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80235BEC  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80235BF0  40 82 00 1C */	bne lbl_80235C0C
/* 80235BF4  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80235BF8  41 82 00 24 */	beq lbl_80235C1C
/* 80235BFC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235C00  48 00 C4 81 */	bl isKeyCheck__14dMsgScrnHowl_cFv
/* 80235C04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235C08  40 82 00 14 */	bne lbl_80235C1C
lbl_80235C0C:
/* 80235C0C  7F E3 FB 78 */	mr r3, r31
/* 80235C10  48 00 14 D9 */	bl isHowlMessage__12dMsgObject_cFv
/* 80235C14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235C18  40 82 00 90 */	bne lbl_80235CA8
lbl_80235C1C:
/* 80235C1C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80235C20  41 82 00 88 */	beq lbl_80235CA8
/* 80235C24  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80235C28  A0 03 05 DE */	lhz r0, 0x5de(r3)
/* 80235C2C  28 00 0C 4E */	cmplwi r0, 0xc4e
/* 80235C30  40 82 00 14 */	bne lbl_80235C44
/* 80235C34  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80235C38  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80235C3C  38 80 00 02 */	li r4, 2
/* 80235C40  48 07 A3 4D */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_80235C44:
/* 80235C44  38 00 00 00 */	li r0, 0
/* 80235C48  B0 1F 01 6A */	sth r0, 0x16a(r31)
/* 80235C4C  7F E3 FB 78 */	mr r3, r31
/* 80235C50  38 80 00 11 */	li r4, 0x11
/* 80235C54  48 00 0C 91 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80235C58  7F E3 FB 78 */	mr r3, r31
/* 80235C5C  48 00 15 E1 */	bl isTalkMessage__12dMsgObject_cFv
/* 80235C60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235C64  41 82 00 44 */	beq lbl_80235CA8
/* 80235C68  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80235C6C  28 00 00 02 */	cmplwi r0, 2
/* 80235C70  40 82 00 38 */	bne lbl_80235CA8
/* 80235C74  38 00 00 62 */	li r0, 0x62
/* 80235C78  90 01 00 08 */	stw r0, 8(r1)
/* 80235C7C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80235C80  38 81 00 08 */	addi r4, r1, 8
/* 80235C84  38 A0 00 00 */	li r5, 0
/* 80235C88  38 C0 00 00 */	li r6, 0
/* 80235C8C  38 E0 00 00 */	li r7, 0
/* 80235C90  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 80235C94  FC 40 08 90 */	fmr f2, f1
/* 80235C98  C0 62 B1 10 */	lfs f3, lit_4145(r2)
/* 80235C9C  FC 80 18 90 */	fmr f4, f3
/* 80235CA0  39 00 00 00 */	li r8, 0
/* 80235CA4  48 07 5C E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80235CA8:
/* 80235CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80235CAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80235CB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80235CB4  7C 08 03 A6 */	mtlr r0
/* 80235CB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80235CBC  4E 80 00 20 */	blr 
