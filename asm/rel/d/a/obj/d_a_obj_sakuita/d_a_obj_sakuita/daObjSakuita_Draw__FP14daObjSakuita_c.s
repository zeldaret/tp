lbl_80CC4BD4:
/* 80CC4BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4BD8  7C 08 02 A6 */	mflr r0
/* 80CC4BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4BE0  7C 65 1B 78 */	mr r5, r3
/* 80CC4BE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC4BE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC4BEC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC4BF0  80 85 05 68 */	lwz r4, 0x568(r5)
/* 80CC4BF4  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80CC4BF8  7C 05 07 74 */	extsb r5, r0
/* 80CC4BFC  4B 36 7F 6C */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80CC4C00  38 60 00 01 */	li r3, 1
/* 80CC4C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4C08  7C 08 03 A6 */	mtlr r0
/* 80CC4C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4C10  4E 80 00 20 */	blr 
