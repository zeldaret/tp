lbl_8015F438:
/* 8015F438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F43C  7C 08 02 A6 */	mflr r0
/* 8015F440  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F444  7C 66 1B 78 */	mr r6, r3
/* 8015F448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F44C  38 E3 61 C0 */	addi r7, r3, g_dComIfG_gameInfo@l
/* 8015F450  80 67 5D B4 */	lwz r3, 0x5db4(r7)
/* 8015F454  88 E7 4F AD */	lbz r7, 0x4fad(r7)
/* 8015F458  30 07 FF FF */	addic r0, r7, -1
/* 8015F45C  7C 00 39 10 */	subfe r0, r0, r7
/* 8015F460  54 07 06 3E */	clrlwi r7, r0, 0x18
/* 8015F464  4B F5 EA FD */	bl startRestartRoom__9daAlink_cFUliii
/* 8015F468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F46C  7C 08 03 A6 */	mtlr r0
/* 8015F470  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F474  4E 80 00 20 */	blr 
