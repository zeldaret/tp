lbl_802A7B90:
/* 802A7B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A7B94  7C 08 02 A6 */	mflr r0
/* 802A7B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A7BA0  7C 7F 1B 78 */	mr r31, r3
/* 802A7BA4  38 00 00 00 */	li r0, 0
/* 802A7BA8  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A7BAC  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A7BB0  3C 80 80 2B */	lis r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha /* 0x802A828C@ha */
/* 802A7BB4  38 04 82 8C */	addi r0, r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l /* 0x802A828C@l */
/* 802A7BB8  90 03 00 24 */	stw r0, 0x24(r3)
/* 802A7BBC  38 80 00 00 */	li r4, 0
/* 802A7BC0  81 83 00 00 */	lwz r12, 0(r3)
/* 802A7BC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A7BC8  7D 89 03 A6 */	mtctr r12
/* 802A7BCC  4E 80 04 21 */	bctrl 
/* 802A7BD0  7F E3 FB 78 */	mr r3, r31
/* 802A7BD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A7BD8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A7BDC  7D 89 03 A6 */	mtctr r12
/* 802A7BE0  4E 80 04 21 */	bctrl 
/* 802A7BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A7BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7BEC  7C 08 03 A6 */	mtlr r0
/* 802A7BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7BF4  4E 80 00 20 */	blr 
