lbl_80486D88:
/* 80486D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486D8C  7C 08 02 A6 */	mflr r0
/* 80486D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80486D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80486D98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80486D9C  7C 7F 1B 78 */	mr r31, r3
/* 80486DA0  88 83 07 4E */	lbz r4, 0x74e(r3)
/* 80486DA4  28 04 00 00 */	cmplwi r4, 0
/* 80486DA8  41 82 00 A4 */	beq lbl_80486E4C
/* 80486DAC  38 04 FF FF */	addi r0, r4, -1
/* 80486DB0  98 1F 07 4E */	stb r0, 0x74e(r31)
/* 80486DB4  88 1F 07 4E */	lbz r0, 0x74e(r31)
/* 80486DB8  28 00 00 00 */	cmplwi r0, 0
/* 80486DBC  40 82 00 90 */	bne lbl_80486E4C
/* 80486DC0  4B FF F2 39 */	bl getSwNo__10daSwhit0_cFv
/* 80486DC4  7C 64 1B 78 */	mr r4, r3
/* 80486DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486DD0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486DD4  7C 05 07 74 */	extsb r5, r0
/* 80486DD8  4B BA E5 88 */	b isSwitch__10dSv_info_cCFii
/* 80486DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80486DE0  41 82 00 10 */	beq lbl_80486DF0
/* 80486DE4  7F E3 FB 78 */	mr r3, r31
/* 80486DE8  4B FF FA 71 */	bl offSwitch__10daSwhit0_cFv
/* 80486DEC  48 00 00 0C */	b lbl_80486DF8
lbl_80486DF0:
/* 80486DF0  7F E3 FB 78 */	mr r3, r31
/* 80486DF4  4B FF FA 0D */	bl onSwitch__10daSwhit0_cFv
lbl_80486DF8:
/* 80486DF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80486DFC  7C 03 07 74 */	extsb r3, r0
/* 80486E00  4B BA 62 6C */	b dComIfGp_getReverb__Fi
/* 80486E04  7C 67 1B 78 */	mr r7, r3
/* 80486E08  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008017B@ha */
/* 80486E0C  38 03 01 7B */	addi r0, r3, 0x017B /* 0x0008017B@l */
/* 80486E10  90 01 00 08 */	stw r0, 8(r1)
/* 80486E14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80486E18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80486E1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80486E20  38 81 00 08 */	addi r4, r1, 8
/* 80486E24  38 BF 05 38 */	addi r5, r31, 0x538
/* 80486E28  38 C0 00 00 */	li r6, 0
/* 80486E2C  3D 00 80 48 */	lis r8, lit_3685@ha
/* 80486E30  C0 28 73 70 */	lfs f1, lit_3685@l(r8)
/* 80486E34  FC 40 08 90 */	fmr f2, f1
/* 80486E38  3D 00 80 48 */	lis r8, lit_3982@ha
/* 80486E3C  C0 68 73 78 */	lfs f3, lit_3982@l(r8)
/* 80486E40  FC 80 18 90 */	fmr f4, f3
/* 80486E44  39 00 00 00 */	li r8, 0
/* 80486E48  4B E2 4B 3C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80486E4C:
/* 80486E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486E50  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80486E54  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80486E58  A8 9F 07 56 */	lha r4, 0x756(r31)
/* 80486E5C  4B BC 0C 1C */	b endCheck__16dEvent_manager_cFs
/* 80486E60  2C 03 00 00 */	cmpwi r3, 0
/* 80486E64  41 82 00 44 */	beq lbl_80486EA8
/* 80486E68  88 1F 07 4D */	lbz r0, 0x74d(r31)
/* 80486E6C  28 00 00 05 */	cmplwi r0, 5
/* 80486E70  40 82 00 18 */	bne lbl_80486E88
/* 80486E74  38 00 00 06 */	li r0, 6
/* 80486E78  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486E7C  7F E3 FB 78 */	mr r3, r31
/* 80486E80  4B FF F9 81 */	bl onSwitch__10daSwhit0_cFv
/* 80486E84  48 00 00 14 */	b lbl_80486E98
lbl_80486E88:
/* 80486E88  38 00 00 01 */	li r0, 1
/* 80486E8C  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486E90  7F E3 FB 78 */	mr r3, r31
/* 80486E94  4B FF F9 C5 */	bl offSwitch__10daSwhit0_cFv
lbl_80486E98:
/* 80486E98  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80486E9C  4B BB B5 CC */	b reset__14dEvt_control_cFv
/* 80486EA0  38 60 00 01 */	li r3, 1
/* 80486EA4  48 00 00 08 */	b lbl_80486EAC
lbl_80486EA8:
/* 80486EA8  38 60 00 01 */	li r3, 1
lbl_80486EAC:
/* 80486EAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80486EB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80486EB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80486EB8  7C 08 03 A6 */	mtlr r0
/* 80486EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80486EC0  4E 80 00 20 */	blr 
