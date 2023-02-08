lbl_801D241C:
/* 801D241C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D2420  7C 08 02 A6 */	mflr r0
/* 801D2424  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D2428  7C A9 2B 78 */	mr r9, r5
/* 801D242C  7C C0 33 78 */	mr r0, r6
/* 801D2430  7C E8 3B 78 */	mr r8, r7
/* 801D2434  88 A3 12 27 */	lbz r5, 0x1227(r3)
/* 801D2438  7D 26 4B 78 */	mr r6, r9
/* 801D243C  7C 07 03 78 */	mr r7, r0
/* 801D2440  48 00 00 15 */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcUcPCcfffUcb
/* 801D2444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D2448  7C 08 03 A6 */	mtlr r0
/* 801D244C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D2450  4E 80 00 20 */	blr 
