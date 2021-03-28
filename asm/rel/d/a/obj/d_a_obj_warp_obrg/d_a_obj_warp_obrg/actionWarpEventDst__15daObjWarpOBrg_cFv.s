lbl_80D2A9E4:
/* 80D2A9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2A9E8  7C 08 02 A6 */	mflr r0
/* 80D2A9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2A9F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2A9F4  7C 7F 1B 78 */	mr r31, r3
/* 80D2A9F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2A9FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2AA00  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D2AA04  A8 9F 06 34 */	lha r4, 0x634(r31)
/* 80D2AA08  4B 31 D0 70 */	b endCheck__16dEvent_manager_cFs
/* 80D2AA0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D2AA10  40 82 00 0C */	bne lbl_80D2AA1C
/* 80D2AA14  7F E3 FB 78 */	mr r3, r31
/* 80D2AA18  48 00 00 1D */	bl demoProc__15daObjWarpOBrg_cFv
lbl_80D2AA1C:
/* 80D2AA1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2AA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2AA24  7C 08 03 A6 */	mtlr r0
/* 80D2AA28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2AA2C  4E 80 00 20 */	blr 
