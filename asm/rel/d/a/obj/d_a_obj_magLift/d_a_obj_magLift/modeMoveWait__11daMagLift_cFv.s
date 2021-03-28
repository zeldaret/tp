lbl_80C8E2C4:
/* 80C8E2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E2C8  7C 08 02 A6 */	mflr r0
/* 80C8E2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E2D4  7C 7F 1B 78 */	mr r31, r3
/* 80C8E2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8E2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C8E2E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C8E2E4  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80C8E2E8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C8E2EC  7C 05 07 74 */	extsb r5, r0
/* 80C8E2F0  4B 3A 70 70 */	b isSwitch__10dSv_info_cCFii
/* 80C8E2F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C8E2F8  41 82 00 0C */	beq lbl_80C8E304
/* 80C8E2FC  7F E3 FB 78 */	mr r3, r31
/* 80C8E300  4B FF FF 61 */	bl init_modeWaitInit__11daMagLift_cFv
lbl_80C8E304:
/* 80C8E304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8E308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E30C  7C 08 03 A6 */	mtlr r0
/* 80C8E310  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E314  4E 80 00 20 */	blr 
