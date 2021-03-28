lbl_804868A8:
/* 804868A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804868AC  7C 08 02 A6 */	mflr r0
/* 804868B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804868B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804868B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804868BC  7C 7E 1B 78 */	mr r30, r3
/* 804868C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804868C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804868C8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 804868CC  7F E3 FB 78 */	mr r3, r31
/* 804868D0  80 9E 07 58 */	lwz r4, 0x758(r30)
/* 804868D4  4B BC 14 78 */	b getIsAddvance__16dEvent_manager_cFi
/* 804868D8  2C 03 00 00 */	cmpwi r3, 0
/* 804868DC  41 82 00 C0 */	beq lbl_8048699C
/* 804868E0  7F E3 FB 78 */	mr r3, r31
/* 804868E4  80 9E 07 58 */	lwz r4, 0x758(r30)
/* 804868E8  3C A0 80 48 */	lis r5, action_table@ha
/* 804868EC  38 A5 74 00 */	addi r5, r5, action_table@l
/* 804868F0  38 C0 00 02 */	li r6, 2
/* 804868F4  38 E0 00 00 */	li r7, 0
/* 804868F8  39 00 00 00 */	li r8, 0
/* 804868FC  4B BC 15 14 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80486900  2C 03 00 01 */	cmpwi r3, 1
/* 80486904  41 82 00 08 */	beq lbl_8048690C
/* 80486908  48 00 00 94 */	b lbl_8048699C
lbl_8048690C:
/* 8048690C  7F C3 F3 78 */	mr r3, r30
/* 80486910  4B FF F6 E9 */	bl getSwNo__10daSwhit0_cFv
/* 80486914  7C 64 1B 78 */	mr r4, r3
/* 80486918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048691C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486920  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80486924  7C 05 07 74 */	extsb r5, r0
/* 80486928  4B BA EA 38 */	b isSwitch__10dSv_info_cCFii
/* 8048692C  2C 03 00 00 */	cmpwi r3, 0
/* 80486930  41 82 00 10 */	beq lbl_80486940
/* 80486934  7F C3 F3 78 */	mr r3, r30
/* 80486938  4B FF FF 21 */	bl offSwitch__10daSwhit0_cFv
/* 8048693C  48 00 00 0C */	b lbl_80486948
lbl_80486940:
/* 80486940  7F C3 F3 78 */	mr r3, r30
/* 80486944  4B FF FE BD */	bl onSwitch__10daSwhit0_cFv
lbl_80486948:
/* 80486948  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8048694C  7C 03 07 74 */	extsb r3, r0
/* 80486950  4B BA 67 1C */	b dComIfGp_getReverb__Fi
/* 80486954  7C 67 1B 78 */	mr r7, r3
/* 80486958  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008017B@ha */
/* 8048695C  38 03 01 7B */	addi r0, r3, 0x017B /* 0x0008017B@l */
/* 80486960  90 01 00 08 */	stw r0, 8(r1)
/* 80486964  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80486968  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8048696C  80 63 00 00 */	lwz r3, 0(r3)
/* 80486970  38 81 00 08 */	addi r4, r1, 8
/* 80486974  38 BE 05 38 */	addi r5, r30, 0x538
/* 80486978  38 C0 00 00 */	li r6, 0
/* 8048697C  3D 00 80 48 */	lis r8, lit_3685@ha
/* 80486980  C0 28 73 70 */	lfs f1, lit_3685@l(r8)
/* 80486984  FC 40 08 90 */	fmr f2, f1
/* 80486988  3D 00 80 48 */	lis r8, lit_3982@ha
/* 8048698C  C0 68 73 78 */	lfs f3, lit_3982@l(r8)
/* 80486990  FC 80 18 90 */	fmr f4, f3
/* 80486994  39 00 00 00 */	li r8, 0
/* 80486998  4B E2 4F EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8048699C:
/* 8048699C  7F E3 FB 78 */	mr r3, r31
/* 804869A0  80 9E 07 58 */	lwz r4, 0x758(r30)
/* 804869A4  4B BC 17 D8 */	b cutEnd__16dEvent_manager_cFi
/* 804869A8  38 60 00 01 */	li r3, 1
/* 804869AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804869B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804869B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804869B8  7C 08 03 A6 */	mtlr r0
/* 804869BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804869C0  4E 80 00 20 */	blr 
