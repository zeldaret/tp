lbl_802A8A50:
/* 802A8A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8A54  7C 08 02 A6 */	mflr r0
/* 802A8A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8A5C  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802A8A60  54 80 10 3A */	slwi r0, r4, 2
/* 802A8A64  7C 05 00 2E */	lwzx r0, r5, r0
/* 802A8A68  54 04 84 3E */	srwi r4, r0, 0x10
/* 802A8A6C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802A8A70  4B FF FE D5 */	bl process_setMessageCode___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUsUs
/* 802A8A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8A78  7C 08 03 A6 */	mtlr r0
/* 802A8A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8A80  4E 80 00 20 */	blr 
