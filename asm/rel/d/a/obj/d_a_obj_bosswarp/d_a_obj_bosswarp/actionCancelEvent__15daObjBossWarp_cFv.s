lbl_8057AA2C:
/* 8057AA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057AA30  7C 08 02 A6 */	mflr r0
/* 8057AA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057AA38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057AA3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057AA40  7C 7E 1B 78 */	mr r30, r3
/* 8057AA44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057AA48  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8057AA4C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8057AA50  A8 9E 06 1E */	lha r4, 0x61e(r30)
/* 8057AA54  4B AC D0 24 */	b endCheck__16dEvent_manager_cFs
/* 8057AA58  2C 03 00 00 */	cmpwi r3, 0
/* 8057AA5C  41 82 00 18 */	beq lbl_8057AA74
/* 8057AA60  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8057AA64  4B AC 7A 04 */	b reset__14dEvt_control_cFv
/* 8057AA68  38 00 00 03 */	li r0, 3
/* 8057AA6C  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057AA70  48 00 00 0C */	b lbl_8057AA7C
lbl_8057AA74:
/* 8057AA74  7F C3 F3 78 */	mr r3, r30
/* 8057AA78  48 00 00 1D */	bl demoProc__15daObjBossWarp_cFv
lbl_8057AA7C:
/* 8057AA7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057AA80  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057AA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057AA88  7C 08 03 A6 */	mtlr r0
/* 8057AA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057AA90  4E 80 00 20 */	blr 
