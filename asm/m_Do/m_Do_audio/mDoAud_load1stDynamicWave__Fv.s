lbl_800071F8:
/* 800071F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800071FC  7C 08 02 A6 */	mflr r0
/* 80007200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007204  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80007208  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8000720C  48 2B 2B 35 */	bl load1stDynamicWave__10Z2SceneMgrFv
/* 80007210  38 60 00 01 */	li r3, 1
/* 80007214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007218  7C 08 03 A6 */	mtlr r0
/* 8000721C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007220  4E 80 00 20 */	blr 
