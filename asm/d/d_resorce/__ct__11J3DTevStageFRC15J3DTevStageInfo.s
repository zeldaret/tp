lbl_8003AACC:
/* 8003AACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003AAD0  7C 08 02 A6 */	mflr r0
/* 8003AAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003AAD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003AADC  7C 7F 1B 78 */	mr r31, r3
/* 8003AAE0  4B FD 37 B9 */	bl setTevStageInfo__11J3DTevStageFRC15J3DTevStageInfo
/* 8003AAE4  88 1F 00 07 */	lbz r0, 7(r31)
/* 8003AAE8  54 04 07 B6 */	rlwinm r4, r0, 0, 0x1e, 0x1b
/* 8003AAEC  38 62 C9 E4 */	la r3, j3dDefaultTevSwapMode(r2) /* 804563E4-_SDA2_BASE_ */
/* 8003AAF0  88 03 00 01 */	lbz r0, 1(r3)
/* 8003AAF4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8003AAF8  7C 80 03 78 */	or r0, r4, r0
/* 8003AAFC  98 1F 00 07 */	stb r0, 7(r31)
/* 8003AB00  88 1F 00 07 */	lbz r0, 7(r31)
/* 8003AB04  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 8003AB08  88 02 C9 E4 */	lbz r0, j3dDefaultTevSwapMode(r2)
/* 8003AB0C  7C 60 03 78 */	or r0, r3, r0
/* 8003AB10  98 1F 00 07 */	stb r0, 7(r31)
/* 8003AB14  7F E3 FB 78 */	mr r3, r31
/* 8003AB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003AB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003AB20  7C 08 03 A6 */	mtlr r0
/* 8003AB24  38 21 00 10 */	addi r1, r1, 0x10
/* 8003AB28  4E 80 00 20 */	blr 
