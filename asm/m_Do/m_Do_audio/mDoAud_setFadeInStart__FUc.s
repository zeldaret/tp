lbl_80007254:
/* 80007254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007258  7C 08 02 A6 */	mflr r0
/* 8000725C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007260  7C 60 1B 78 */	mr r0, r3
/* 80007264  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80007268  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8000726C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80007270  48 2A F7 A9 */	bl setFadeInStart__10Z2SceneMgrFUc
/* 80007274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007278  7C 08 03 A6 */	mtlr r0
/* 8000727C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007280  4E 80 00 20 */	blr 
