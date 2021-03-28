lbl_800071BC:
/* 800071BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800071C0  7C 08 02 A6 */	mflr r0
/* 800071C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800071C8  7C 67 1B 78 */	mr r7, r3
/* 800071CC  7C 80 23 78 */	mr r0, r4
/* 800071D0  7C A6 2B 78 */	mr r6, r5
/* 800071D4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800071D8  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 800071DC  7C E4 3B 78 */	mr r4, r7
/* 800071E0  7C 05 03 78 */	mr r5, r0
/* 800071E4  48 2A F9 15 */	bl setSceneName__10Z2SceneMgrFPcll
/* 800071E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800071EC  7C 08 03 A6 */	mtlr r0
/* 800071F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800071F4  4E 80 00 20 */	blr 
