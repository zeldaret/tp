lbl_80D166E0:
/* 80D166E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D166E4  7C 08 02 A6 */	mflr r0
/* 80D166E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D166EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D166F0  7C 7F 1B 78 */	mr r31, r3
/* 80D166F4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D166F8  28 00 00 02 */	cmplwi r0, 2
/* 80D166FC  40 82 00 78 */	bne lbl_80D16774
/* 80D16700  3C 60 80 D1 */	lis r3, s_b_sub__FPvPv@ha /* 0x80D15AAC@ha */
/* 80D16704  38 63 5A AC */	addi r3, r3, s_b_sub__FPvPv@l /* 0x80D15AAC@l */
/* 80D16708  7F E4 FB 78 */	mr r4, r31
/* 80D1670C  4B 30 AC 2D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80D16710  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D16714  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D16718  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1671C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80D16720  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000023@ha */
/* 80D16724  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x02000023@l */
/* 80D16728  4B 59 94 6D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80D1672C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D16730  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D16734  80 63 00 00 */	lwz r3, 0(r3)
/* 80D16738  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80D1673C  4B 59 96 DD */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80D16740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D16744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16748  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D1674C  3C 80 80 D1 */	lis r4, l_staff_name@ha /* 0x80D17880@ha */
/* 80D16750  38 84 78 80 */	addi r4, r4, l_staff_name@l /* 0x80D17880@l */
/* 80D16754  80 84 00 00 */	lwz r4, 0(r4)
/* 80D16758  38 A0 00 00 */	li r5, 0
/* 80D1675C  38 C0 00 00 */	li r6, 0
/* 80D16760  4B 33 13 BD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D16764  90 7F 05 CC */	stw r3, 0x5cc(r31)
/* 80D16768  38 00 00 02 */	li r0, 2
/* 80D1676C  98 1F 05 DD */	stb r0, 0x5dd(r31)
/* 80D16770  48 00 00 38 */	b lbl_80D167A8
lbl_80D16774:
/* 80D16774  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80D16778  54 00 08 3C */	slwi r0, r0, 1
/* 80D1677C  7C 9F 02 14 */	add r4, r31, r0
/* 80D16780  A8 84 05 D4 */	lha r4, 0x5d4(r4)
/* 80D16784  38 A0 00 FF */	li r5, 0xff
/* 80D16788  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D1678C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D16790  38 E0 00 00 */	li r7, 0
/* 80D16794  39 00 00 01 */	li r8, 1
/* 80D16798  4B 30 4E E5 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D1679C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D167A0  60 00 00 02 */	ori r0, r0, 2
/* 80D167A4  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D167A8:
/* 80D167A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D167AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D167B0  7C 08 03 A6 */	mtlr r0
/* 80D167B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D167B8  4E 80 00 20 */	blr 
