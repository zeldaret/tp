lbl_802A8C24:
/* 802A8C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8C28  7C 08 02 A6 */	mflr r0
/* 802A8C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8C30  48 00 00 15 */	bl getMessageText_messageCode__Q28JMessage10TProcessorCFUl
/* 802A8C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8C38  7C 08 03 A6 */	mtlr r0
/* 802A8C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8C40  4E 80 00 20 */	blr 
