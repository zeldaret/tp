lbl_80486858:
/* 80486858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048685C  7C 08 02 A6 */	mflr r0
/* 80486860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486868  7C 7F 1B 78 */	mr r31, r3
/* 8048686C  4B FF F7 8D */	bl getSwNo__10daSwhit0_cFv
/* 80486870  7C 64 1B 78 */	mr r4, r3
/* 80486874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048687C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486880  7C 05 07 74 */	extsb r5, r0
/* 80486884  4B BA EA 2C */	b offSwitch__10dSv_info_cFii
/* 80486888  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 8048688C  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80486890  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80486894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048689C  7C 08 03 A6 */	mtlr r0
/* 804868A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804868A4  4E 80 00 20 */	blr 
