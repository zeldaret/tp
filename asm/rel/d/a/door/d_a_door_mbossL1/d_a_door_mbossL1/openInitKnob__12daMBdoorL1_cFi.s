lbl_80675470:
/* 80675470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80675474  7C 08 02 A6 */	mflr r0
/* 80675478  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067547C  39 61 00 20 */	addi r11, r1, 0x20
/* 80675480  4B CE CD 58 */	b _savegpr_28
/* 80675484  7C 7D 1B 78 */	mr r29, r3
/* 80675488  7C 9E 23 78 */	mr r30, r4
/* 8067548C  3C 80 80 67 */	lis r4, l_staff_name@ha
/* 80675490  3B E4 75 58 */	addi r31, r4, l_staff_name@l
/* 80675494  57 C0 10 3A */	slwi r0, r30, 2
/* 80675498  3C 80 80 67 */	lis r4, bck_table@ha
/* 8067549C  38 84 7B C0 */	addi r4, r4, bck_table@l
/* 806754A0  7F 84 00 2E */	lwzx r28, r4, r0
/* 806754A4  4B FF DA D1 */	bl getAlwaysArcName__12daMBdoorL1_cFv
/* 806754A8  7F 84 E3 78 */	mr r4, r28
/* 806754AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806754B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806754B4  3C A5 00 02 */	addis r5, r5, 2
/* 806754B8  38 C0 00 80 */	li r6, 0x80
/* 806754BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806754C0  4B 9C 6E BC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 806754C4  7C 64 1B 78 */	mr r4, r3
/* 806754C8  88 1D 05 DF */	lbz r0, 0x5df(r29)
/* 806754CC  28 00 00 00 */	cmplwi r0, 0
/* 806754D0  40 82 00 0C */	bne lbl_806754DC
/* 806754D4  2C 1E 00 00 */	cmpwi r30, 0
/* 806754D8  41 82 00 14 */	beq lbl_806754EC
lbl_806754DC:
/* 806754DC  28 00 00 01 */	cmplwi r0, 1
/* 806754E0  40 82 00 18 */	bne lbl_806754F8
/* 806754E4  2C 1E 00 02 */	cmpwi r30, 2
/* 806754E8  40 82 00 10 */	bne lbl_806754F8
lbl_806754EC:
/* 806754EC  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 806754F0  90 1D 05 90 */	stw r0, 0x590(r29)
/* 806754F4  48 00 00 84 */	b lbl_80675578
lbl_806754F8:
/* 806754F8  28 00 00 01 */	cmplwi r0, 1
/* 806754FC  40 82 00 0C */	bne lbl_80675508
/* 80675500  2C 1E 00 00 */	cmpwi r30, 0
/* 80675504  41 82 00 14 */	beq lbl_80675518
lbl_80675508:
/* 80675508  28 00 00 00 */	cmplwi r0, 0
/* 8067550C  40 82 00 18 */	bne lbl_80675524
/* 80675510  2C 1E 00 02 */	cmpwi r30, 2
/* 80675514  40 82 00 10 */	bne lbl_80675524
lbl_80675518:
/* 80675518  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 8067551C  90 1D 05 90 */	stw r0, 0x590(r29)
/* 80675520  48 00 00 58 */	b lbl_80675578
lbl_80675524:
/* 80675524  28 00 00 00 */	cmplwi r0, 0
/* 80675528  40 82 00 0C */	bne lbl_80675534
/* 8067552C  2C 1E 00 01 */	cmpwi r30, 1
/* 80675530  41 82 00 14 */	beq lbl_80675544
lbl_80675534:
/* 80675534  28 00 00 01 */	cmplwi r0, 1
/* 80675538  40 82 00 18 */	bne lbl_80675550
/* 8067553C  2C 1E 00 03 */	cmpwi r30, 3
/* 80675540  40 82 00 10 */	bne lbl_80675550
lbl_80675544:
/* 80675544  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80675548  90 1D 05 90 */	stw r0, 0x590(r29)
/* 8067554C  48 00 00 2C */	b lbl_80675578
lbl_80675550:
/* 80675550  28 00 00 01 */	cmplwi r0, 1
/* 80675554  40 82 00 0C */	bne lbl_80675560
/* 80675558  2C 1E 00 01 */	cmpwi r30, 1
/* 8067555C  41 82 00 14 */	beq lbl_80675570
lbl_80675560:
/* 80675560  28 00 00 00 */	cmplwi r0, 0
/* 80675564  40 82 00 14 */	bne lbl_80675578
/* 80675568  2C 1E 00 03 */	cmpwi r30, 3
/* 8067556C  40 82 00 0C */	bne lbl_80675578
lbl_80675570:
/* 80675570  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80675574  90 1D 05 90 */	stw r0, 0x590(r29)
lbl_80675578:
/* 80675578  80 7D 05 90 */	lwz r3, 0x590(r29)
/* 8067557C  38 A0 00 01 */	li r5, 1
/* 80675580  38 C0 00 00 */	li r6, 0
/* 80675584  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80675588  38 E0 00 00 */	li r7, 0
/* 8067558C  39 00 FF FF */	li r8, -1
/* 80675590  39 20 00 01 */	li r9, 1
/* 80675594  4B 99 82 48 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80675598  2C 1E 00 02 */	cmpwi r30, 2
/* 8067559C  41 80 00 60 */	blt lbl_806755FC
/* 806755A0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806755A4  80 7D 05 90 */	lwz r3, 0x590(r29)
/* 806755A8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806755AC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806755B0  7C 03 07 74 */	extsb r3, r0
/* 806755B4  4B 9B 7A B8 */	b dComIfGp_getReverb__Fi
/* 806755B8  7C 67 1B 78 */	mr r7, r3
/* 806755BC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080025@ha */
/* 806755C0  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00080025@l */
/* 806755C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806755C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806755CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806755D0  80 63 00 00 */	lwz r3, 0(r3)
/* 806755D4  38 81 00 0C */	addi r4, r1, 0xc
/* 806755D8  38 BD 05 38 */	addi r5, r29, 0x538
/* 806755DC  38 C0 00 00 */	li r6, 0
/* 806755E0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806755E4  FC 40 08 90 */	fmr f2, f1
/* 806755E8  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 806755EC  FC 80 18 90 */	fmr f4, f3
/* 806755F0  39 00 00 00 */	li r8, 0
/* 806755F4  4B C3 63 90 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806755F8  48 00 00 64 */	b lbl_8067565C
lbl_806755FC:
/* 806755FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80675600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80675604  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80675608  80 9D 05 98 */	lwz r4, 0x598(r29)
/* 8067560C  4B 9F EC 44 */	b Release__4cBgSFP9dBgW_Base
/* 80675610  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80675614  7C 03 07 74 */	extsb r3, r0
/* 80675618  4B 9B 7A 54 */	b dComIfGp_getReverb__Fi
/* 8067561C  7C 67 1B 78 */	mr r7, r3
/* 80675620  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080024@ha */
/* 80675624  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00080024@l */
/* 80675628  90 01 00 08 */	stw r0, 8(r1)
/* 8067562C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80675630  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80675634  80 63 00 00 */	lwz r3, 0(r3)
/* 80675638  38 81 00 08 */	addi r4, r1, 8
/* 8067563C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80675640  38 C0 00 00 */	li r6, 0
/* 80675644  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80675648  FC 40 08 90 */	fmr f2, f1
/* 8067564C  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80675650  FC 80 18 90 */	fmr f4, f3
/* 80675654  39 00 00 00 */	li r8, 0
/* 80675658  4B C3 63 2C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8067565C:
/* 8067565C  38 60 00 01 */	li r3, 1
/* 80675660  39 61 00 20 */	addi r11, r1, 0x20
/* 80675664  4B CE CB C0 */	b _restgpr_28
/* 80675668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067566C  7C 08 03 A6 */	mtlr r0
/* 80675670  38 21 00 20 */	addi r1, r1, 0x20
/* 80675674  4E 80 00 20 */	blr 
