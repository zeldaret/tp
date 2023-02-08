lbl_80237AE0:
/* 80237AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237AE4  7C 08 02 A6 */	mflr r0
/* 80237AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237AEC  7C 64 1B 78 */	mr r4, r3
/* 80237AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237AF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237AF8  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80237AFC  48 00 00 15 */	bl setTalkHeapLocal__12dMsgObject_cFPv
/* 80237B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237B04  7C 08 03 A6 */	mtlr r0
/* 80237B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80237B0C  4E 80 00 20 */	blr 
