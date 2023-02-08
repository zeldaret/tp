lbl_802A8A18:
/* 802A8A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8A1C  7C 08 02 A6 */	mflr r0
/* 802A8A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8A24  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802A8A28  54 80 08 3C */	slwi r0, r4, 1
/* 802A8A2C  7C A5 02 2E */	lhzx r5, r5, r0
/* 802A8A30  80 83 00 08 */	lwz r4, 8(r3)
/* 802A8A34  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802A8A38  A0 84 00 0C */	lhz r4, 0xc(r4)
/* 802A8A3C  4B FF FF 09 */	bl process_setMessageCode___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUsUs
/* 802A8A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8A44  7C 08 03 A6 */	mtlr r0
/* 802A8A48  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8A4C  4E 80 00 20 */	blr 
