lbl_80AD2870:
/* 80AD2870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2874  7C 08 02 A6 */	mflr r0
/* 80AD2878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD287C  38 63 10 D8 */	addi r3, r3, 0x10d8
/* 80AD2880  4B 88 F7 C9 */	bl __ptmf_cmpr
/* 80AD2884  7C 60 00 34 */	cntlzw r0, r3
/* 80AD2888  54 03 D9 7E */	srwi r3, r0, 5
/* 80AD288C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD2890  7C 08 03 A6 */	mtlr r0
/* 80AD2894  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD2898  4E 80 00 20 */	blr 
