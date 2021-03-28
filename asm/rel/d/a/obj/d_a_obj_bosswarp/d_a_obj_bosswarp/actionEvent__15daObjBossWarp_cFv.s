lbl_8057A610:
/* 8057A610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A614  7C 08 02 A6 */	mflr r0
/* 8057A618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A620  93 C1 00 08 */	stw r30, 8(r1)
/* 8057A624  7C 7E 1B 78 */	mr r30, r3
/* 8057A628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A62C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8057A630  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8057A634  A8 9E 05 92 */	lha r4, 0x592(r30)
/* 8057A638  4B AC D4 40 */	b endCheck__16dEvent_manager_cFs
/* 8057A63C  2C 03 00 00 */	cmpwi r3, 0
/* 8057A640  41 82 00 18 */	beq lbl_8057A658
/* 8057A644  38 00 00 03 */	li r0, 3
/* 8057A648  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057A64C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8057A650  4B AC 7E 18 */	b reset__14dEvt_control_cFv
/* 8057A654  48 00 00 0C */	b lbl_8057A660
lbl_8057A658:
/* 8057A658  7F C3 F3 78 */	mr r3, r30
/* 8057A65C  48 00 04 39 */	bl demoProc__15daObjBossWarp_cFv
lbl_8057A660:
/* 8057A660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A664  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057A668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A66C  7C 08 03 A6 */	mtlr r0
/* 8057A670  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A674  4E 80 00 20 */	blr 
