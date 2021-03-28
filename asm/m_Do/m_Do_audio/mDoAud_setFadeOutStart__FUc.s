lbl_80007224:
/* 80007224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007228  7C 08 02 A6 */	mflr r0
/* 8000722C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007230  7C 60 1B 78 */	mr r0, r3
/* 80007234  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80007238  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8000723C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80007240  48 2A F7 3D */	bl setFadeOutStart__10Z2SceneMgrFUc
/* 80007244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007248  7C 08 03 A6 */	mtlr r0
/* 8000724C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007250  4E 80 00 20 */	blr 
