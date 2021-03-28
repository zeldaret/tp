lbl_807E2858:
/* 807E2858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E285C  7C 08 02 A6 */	mflr r0
/* 807E2860  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2864  7C 60 1B 78 */	mr r0, r3
/* 807E2868  7C 85 23 78 */	mr r5, r4
/* 807E286C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E2870  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E2874  7C 04 03 78 */	mr r4, r0
/* 807E2878  4B B6 44 F4 */	b PSMTXMultVec
/* 807E287C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2880  7C 08 03 A6 */	mtlr r0
/* 807E2884  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2888  4E 80 00 20 */	blr 
