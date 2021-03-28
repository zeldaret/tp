lbl_802A89EC:
/* 802A89EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A89F0  7C 08 02 A6 */	mflr r0
/* 802A89F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A89F8  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802A89FC  54 04 84 3E */	srwi r4, r0, 0x10
/* 802A8A00  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802A8A04  4B FF FF 41 */	bl process_setMessageCode___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUsUs
/* 802A8A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8A0C  7C 08 03 A6 */	mtlr r0
/* 802A8A10  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8A14  4E 80 00 20 */	blr 
