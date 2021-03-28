lbl_80486EC4:
/* 80486EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486EC8  7C 08 02 A6 */	mflr r0
/* 80486ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80486ED0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80486ED4  7C 7F 1B 78 */	mr r31, r3
/* 80486ED8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80486EDC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80486EE0  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80486EE4  28 00 00 00 */	cmplwi r0, 0
/* 80486EE8  41 82 00 0C */	beq lbl_80486EF4
/* 80486EEC  38 60 00 00 */	li r3, 0
/* 80486EF0  48 00 00 BC */	b lbl_80486FAC
lbl_80486EF4:
/* 80486EF4  A8 9F 07 52 */	lha r4, 0x752(r31)
/* 80486EF8  38 04 00 01 */	addi r0, r4, 1
/* 80486EFC  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80486F00  7C 00 07 34 */	extsh r0, r0
/* 80486F04  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80486F08  40 81 00 A0 */	ble lbl_80486FA8
/* 80486F0C  4B FF F0 ED */	bl getSwNo__10daSwhit0_cFv
/* 80486F10  7C 64 1B 78 */	mr r4, r3
/* 80486F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486F1C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486F20  7C 05 07 74 */	extsb r5, r0
/* 80486F24  4B BA E4 3C */	b isSwitch__10dSv_info_cCFii
/* 80486F28  2C 03 00 00 */	cmpwi r3, 0
/* 80486F2C  40 82 00 18 */	bne lbl_80486F44
/* 80486F30  38 00 00 06 */	li r0, 6
/* 80486F34  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486F38  7F E3 FB 78 */	mr r3, r31
/* 80486F3C  4B FF F8 C5 */	bl onSwitch__10daSwhit0_cFv
/* 80486F40  48 00 00 14 */	b lbl_80486F54
lbl_80486F44:
/* 80486F44  38 00 00 01 */	li r0, 1
/* 80486F48  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486F4C  7F E3 FB 78 */	mr r3, r31
/* 80486F50  4B FF F9 09 */	bl offSwitch__10daSwhit0_cFv
lbl_80486F54:
/* 80486F54  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80486F58  7C 03 07 74 */	extsb r3, r0
/* 80486F5C  4B BA 61 10 */	b dComIfGp_getReverb__Fi
/* 80486F60  7C 67 1B 78 */	mr r7, r3
/* 80486F64  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008017B@ha */
/* 80486F68  38 03 01 7B */	addi r0, r3, 0x017B /* 0x0008017B@l */
/* 80486F6C  90 01 00 08 */	stw r0, 8(r1)
/* 80486F70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80486F74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80486F78  80 63 00 00 */	lwz r3, 0(r3)
/* 80486F7C  38 81 00 08 */	addi r4, r1, 8
/* 80486F80  38 BF 05 38 */	addi r5, r31, 0x538
/* 80486F84  38 C0 00 00 */	li r6, 0
/* 80486F88  3D 00 80 48 */	lis r8, lit_3685@ha
/* 80486F8C  C0 28 73 70 */	lfs f1, lit_3685@l(r8)
/* 80486F90  FC 40 08 90 */	fmr f2, f1
/* 80486F94  3D 00 80 48 */	lis r8, lit_3982@ha
/* 80486F98  C0 68 73 78 */	lfs f3, lit_3982@l(r8)
/* 80486F9C  FC 80 18 90 */	fmr f4, f3
/* 80486FA0  39 00 00 00 */	li r8, 0
/* 80486FA4  4B E2 49 E0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80486FA8:
/* 80486FA8  38 60 00 01 */	li r3, 1
lbl_80486FAC:
/* 80486FAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80486FB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80486FB4  7C 08 03 A6 */	mtlr r0
/* 80486FB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80486FBC  4E 80 00 20 */	blr 
