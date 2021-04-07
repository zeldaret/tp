lbl_8057A54C:
/* 8057A54C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A550  7C 08 02 A6 */	mflr r0
/* 8057A554  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A558  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057A55C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057A560  7C 7E 1B 78 */	mr r30, r3
/* 8057A564  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8057A568  28 00 00 02 */	cmplwi r0, 2
/* 8057A56C  40 82 00 64 */	bne lbl_8057A5D0
/* 8057A570  38 00 02 F2 */	li r0, 0x2f2
/* 8057A574  B0 01 00 08 */	sth r0, 8(r1)
/* 8057A578  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8057A57C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8057A580  38 81 00 08 */	addi r4, r1, 8
/* 8057A584  4B A9 F2 75 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8057A588  7C 64 1B 78 */	mr r4, r3
/* 8057A58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057A590  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057A594  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8057A598  4B AC 90 F5 */	bl setPtT__14dEvt_control_cFPv
/* 8057A59C  38 00 00 02 */	li r0, 2
/* 8057A5A0  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057A5A4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8057A5A8  3C 80 80 58 */	lis r4, d_a_obj_bosswarp__stringBase0@ha /* 0x8057B4EC@ha */
/* 8057A5AC  38 84 B4 EC */	addi r4, r4, d_a_obj_bosswarp__stringBase0@l /* 0x8057B4EC@l */
/* 8057A5B0  38 84 00 C3 */	addi r4, r4, 0xc3
/* 8057A5B4  38 A0 00 00 */	li r5, 0
/* 8057A5B8  38 C0 00 00 */	li r6, 0
/* 8057A5BC  4B AC D5 61 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8057A5C0  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 8057A5C4  7F C3 F3 78 */	mr r3, r30
/* 8057A5C8  48 00 04 CD */	bl demoProc__15daObjBossWarp_cFv
/* 8057A5CC  48 00 00 2C */	b lbl_8057A5F8
lbl_8057A5D0:
/* 8057A5D0  A8 9E 05 92 */	lha r4, 0x592(r30)
/* 8057A5D4  88 BE 05 94 */	lbz r5, 0x594(r30)
/* 8057A5D8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A5DC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A5E0  38 E0 00 03 */	li r7, 3
/* 8057A5E4  39 00 00 01 */	li r8, 1
/* 8057A5E8  4B AA 10 95 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A5EC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8057A5F0  60 00 00 02 */	ori r0, r0, 2
/* 8057A5F4  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_8057A5F8:
/* 8057A5F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057A5FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057A600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A604  7C 08 03 A6 */	mtlr r0
/* 8057A608  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A60C  4E 80 00 20 */	blr 
