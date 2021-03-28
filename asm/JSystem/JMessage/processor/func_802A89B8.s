lbl_802A89B8:
/* 802A89B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A89BC  7C 08 02 A6 */	mflr r0
/* 802A89C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A89C4  80 83 00 08 */	lwz r4, 8(r3)
/* 802A89C8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802A89CC  A0 84 00 0C */	lhz r4, 0xc(r4)
/* 802A89D0  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802A89D4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802A89D8  4B FF FF 6D */	bl process_setMessageCode___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUsUs
/* 802A89DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A89E0  7C 08 03 A6 */	mtlr r0
/* 802A89E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A89E8  4E 80 00 20 */	blr 
