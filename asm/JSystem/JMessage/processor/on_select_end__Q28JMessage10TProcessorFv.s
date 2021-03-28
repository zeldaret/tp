lbl_802A7EDC:
/* 802A7EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A7EE0  7C 08 02 A6 */	mflr r0
/* 802A7EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7EE8  3C 80 80 2B */	lis r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 802A7EEC  38 04 82 8C */	addi r0, r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 802A7EF0  90 03 00 24 */	stw r0, 0x24(r3)
/* 802A7EF4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A7EF8  54 00 10 3A */	slwi r0, r0, 2
/* 802A7EFC  7C 83 02 14 */	add r4, r3, r0
/* 802A7F00  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802A7F04  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A7F08  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802A7F0C  38 04 FF FF */	addi r0, r4, -1
/* 802A7F10  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A7F14  81 83 00 00 */	lwz r12, 0(r3)
/* 802A7F18  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802A7F1C  7D 89 03 A6 */	mtctr r12
/* 802A7F20  4E 80 04 21 */	bctrl 
/* 802A7F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7F28  7C 08 03 A6 */	mtlr r0
/* 802A7F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7F30  4E 80 00 20 */	blr 
