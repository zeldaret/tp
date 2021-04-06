lbl_8057A778:
/* 8057A778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A77C  7C 08 02 A6 */	mflr r0
/* 8057A780  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A788  7C 7F 1B 78 */	mr r31, r3
/* 8057A78C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057A790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057A794  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8057A798  A8 9F 05 96 */	lha r4, 0x596(r31)
/* 8057A79C  4B AC D2 DD */	bl endCheck__16dEvent_manager_cFs
/* 8057A7A0  2C 03 00 00 */	cmpwi r3, 0
/* 8057A7A4  40 82 00 0C */	bne lbl_8057A7B0
/* 8057A7A8  7F E3 FB 78 */	mr r3, r31
/* 8057A7AC  48 00 02 E9 */	bl demoProc__15daObjBossWarp_cFv
lbl_8057A7B0:
/* 8057A7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A7B8  7C 08 03 A6 */	mtlr r0
/* 8057A7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A7C0  4E 80 00 20 */	blr 
