lbl_80C816A8:
/* 80C816A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C816AC  7C 08 02 A6 */	mflr r0
/* 80C816B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C816B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C816B8  7C 7F 1B 78 */	mr r31, r3
/* 80C816BC  80 63 0A 50 */	lwz r3, 0xa50(r3)
/* 80C816C0  28 03 00 00 */	cmplwi r3, 0
/* 80C816C4  41 82 00 30 */	beq lbl_80C816F4
/* 80C816C8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C816CC  60 00 00 01 */	ori r0, r0, 1
/* 80C816D0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C816D4  38 00 00 01 */	li r0, 1
/* 80C816D8  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C816DC  80 7F 0A 50 */	lwz r3, 0xa50(r31)
/* 80C816E0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C816E4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C816E8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C816EC  38 00 00 00 */	li r0, 0
/* 80C816F0  90 1F 0A 50 */	stw r0, 0xa50(r31)
lbl_80C816F4:
/* 80C816F4  80 7F 0A 54 */	lwz r3, 0xa54(r31)
/* 80C816F8  28 03 00 00 */	cmplwi r3, 0
/* 80C816FC  41 82 00 30 */	beq lbl_80C8172C
/* 80C81700  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C81704  60 00 00 01 */	ori r0, r0, 1
/* 80C81708  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C8170C  38 00 00 01 */	li r0, 1
/* 80C81710  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C81714  80 7F 0A 54 */	lwz r3, 0xa54(r31)
/* 80C81718  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C8171C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C81720  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C81724  38 00 00 00 */	li r0, 0
/* 80C81728  90 1F 0A 54 */	stw r0, 0xa54(r31)
lbl_80C8172C:
/* 80C8172C  38 60 00 00 */	li r3, 0
/* 80C81730  38 C0 00 01 */	li r6, 1
/* 80C81734  7C 64 1B 78 */	mr r4, r3
/* 80C81738  38 00 00 02 */	li r0, 2
/* 80C8173C  7C 09 03 A6 */	mtctr r0
lbl_80C81740:
/* 80C81740  38 E3 0A 38 */	addi r7, r3, 0xa38
/* 80C81744  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C81748  28 05 00 00 */	cmplwi r5, 0
/* 80C8174C  41 82 00 28 */	beq lbl_80C81774
/* 80C81750  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C81754  60 00 00 01 */	ori r0, r0, 1
/* 80C81758  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C8175C  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C81760  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C81764  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C81768  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C8176C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C81770  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80C81774:
/* 80C81774  38 63 00 04 */	addi r3, r3, 4
/* 80C81778  42 00 FF C8 */	bdnz lbl_80C81740
/* 80C8177C  38 60 00 00 */	li r3, 0
/* 80C81780  38 C0 00 01 */	li r6, 1
/* 80C81784  38 80 00 00 */	li r4, 0
/* 80C81788  38 00 00 04 */	li r0, 4
/* 80C8178C  7C 09 03 A6 */	mtctr r0
lbl_80C81790:
/* 80C81790  38 E3 0A 40 */	addi r7, r3, 0xa40
/* 80C81794  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C81798  28 05 00 00 */	cmplwi r5, 0
/* 80C8179C  41 82 00 28 */	beq lbl_80C817C4
/* 80C817A0  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C817A4  60 00 00 01 */	ori r0, r0, 1
/* 80C817A8  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C817AC  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C817B0  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C817B4  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C817B8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C817BC  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C817C0  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80C817C4:
/* 80C817C4  38 63 00 04 */	addi r3, r3, 4
/* 80C817C8  42 00 FF C8 */	bdnz lbl_80C81790
/* 80C817CC  38 7F 0A 7C */	addi r3, r31, 0xa7c
/* 80C817D0  4B 63 C8 28 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C817D4  38 7F 0A 9C */	addi r3, r31, 0xa9c
/* 80C817D8  4B 63 C8 20 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C817DC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C817E0  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C817E4  38 84 1D 24 */	addi r4, r4, l_arcName@l
/* 80C817E8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C817EC  4B 3A B8 1C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C817F0  38 60 00 01 */	li r3, 1
/* 80C817F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C817F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C817FC  7C 08 03 A6 */	mtlr r0
/* 80C81800  38 21 00 10 */	addi r1, r1, 0x10
/* 80C81804  4E 80 00 20 */	blr 
