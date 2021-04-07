lbl_802553FC:
/* 802553FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80255400  7C 08 02 A6 */	mflr r0
/* 80255404  90 01 00 24 */	stw r0, 0x24(r1)
/* 80255408  39 61 00 20 */	addi r11, r1, 0x20
/* 8025540C  48 10 CD D1 */	bl _savegpr_29
/* 80255410  7C 7D 1B 78 */	mr r29, r3
/* 80255414  7C FE 3B 78 */	mr r30, r7
/* 80255418  7D 1F 43 78 */	mr r31, r8
/* 8025541C  3C 60 80 3C */	lis r3, __vt__13CPaneMgrAlpha@ha /* 0x803C2E28@ha */
/* 80255420  38 03 2E 28 */	addi r0, r3, __vt__13CPaneMgrAlpha@l /* 0x803C2E28@l */
/* 80255424  90 1D 00 00 */	stw r0, 0(r29)
/* 80255428  7C 83 23 78 */	mr r3, r4
/* 8025542C  81 84 00 00 */	lwz r12, 0(r4)
/* 80255430  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80255434  7D 89 03 A6 */	mtctr r12
/* 80255438  4E 80 04 21 */	bctrl 
/* 8025543C  7C 64 1B 78 */	mr r4, r3
/* 80255440  9B DD 00 19 */	stb r30, 0x19(r29)
/* 80255444  7F A3 EB 78 */	mr r3, r29
/* 80255448  7F E5 FB 78 */	mr r5, r31
/* 8025544C  48 00 00 95 */	bl initiateAlpha__13CPaneMgrAlphaFP7J2DPaneP10JKRExpHeap
/* 80255450  7F A3 EB 78 */	mr r3, r29
/* 80255454  39 61 00 20 */	addi r11, r1, 0x20
/* 80255458  48 10 CD D1 */	bl _restgpr_29
/* 8025545C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80255460  7C 08 03 A6 */	mtlr r0
/* 80255464  38 21 00 20 */	addi r1, r1, 0x20
/* 80255468  4E 80 00 20 */	blr 
