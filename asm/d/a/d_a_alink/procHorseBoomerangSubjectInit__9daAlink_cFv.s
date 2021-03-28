lbl_800F2454:
/* 800F2454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2458  7C 08 02 A6 */	mflr r0
/* 800F245C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2464  7C 7F 1B 78 */	mr r31, r3
/* 800F2468  38 80 00 48 */	li r4, 0x48
/* 800F246C  4B FD 09 39 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2470  2C 03 00 00 */	cmpwi r3, 0
/* 800F2474  40 82 00 0C */	bne lbl_800F2480
/* 800F2478  38 60 00 00 */	li r3, 0
/* 800F247C  48 00 00 38 */	b lbl_800F24B4
lbl_800F2480:
/* 800F2480  7F E3 FB 78 */	mr r3, r31
/* 800F2484  4B FF B5 A1 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2488  7F E3 FB 78 */	mr r3, r31
/* 800F248C  4B FF C9 0D */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2490  7F E3 FB 78 */	mr r3, r31
/* 800F2494  38 80 00 01 */	li r4, 1
/* 800F2498  4B FE DF 39 */	bl initBoomerangUpperAnimeSpeed__9daAlink_cFi
/* 800F249C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F24A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F24A4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F24A8  64 00 00 08 */	oris r0, r0, 8
/* 800F24AC  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F24B0  38 60 00 01 */	li r3, 1
lbl_800F24B4:
/* 800F24B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F24B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F24BC  7C 08 03 A6 */	mtlr r0
/* 800F24C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F24C4  4E 80 00 20 */	blr 
