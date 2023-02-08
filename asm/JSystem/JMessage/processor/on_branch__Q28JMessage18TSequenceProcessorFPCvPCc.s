lbl_802A8700:
/* 802A8700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A8704  7C 08 02 A6 */	mflr r0
/* 802A8708  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A870C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A8710  48 0B 9A CD */	bl _savegpr_29
/* 802A8714  7C 7D 1B 78 */	mr r29, r3
/* 802A8718  7C 9E 23 78 */	mr r30, r4
/* 802A871C  7C BF 2B 78 */	mr r31, r5
/* 802A8720  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802A8724  38 00 00 00 */	li r0, 0
/* 802A8728  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A872C  3C 80 80 2B */	lis r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha /* 0x802A828C@ha */
/* 802A8730  38 04 82 8C */	addi r0, r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l /* 0x802A828C@l */
/* 802A8734  90 03 00 24 */	stw r0, 0x24(r3)
/* 802A8738  7F E4 FB 78 */	mr r4, r31
/* 802A873C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8740  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A8744  7D 89 03 A6 */	mtctr r12
/* 802A8748  4E 80 04 21 */	bctrl 
/* 802A874C  7F A3 EB 78 */	mr r3, r29
/* 802A8750  7F C4 F3 78 */	mr r4, r30
/* 802A8754  7F E5 FB 78 */	mr r5, r31
/* 802A8758  81 9D 00 00 */	lwz r12, 0(r29)
/* 802A875C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 802A8760  7D 89 03 A6 */	mtctr r12
/* 802A8764  4E 80 04 21 */	bctrl 
/* 802A8768  39 61 00 20 */	addi r11, r1, 0x20
/* 802A876C  48 0B 9A BD */	bl _restgpr_29
/* 802A8770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8774  7C 08 03 A6 */	mtlr r0
/* 802A8778  38 21 00 20 */	addi r1, r1, 0x20
/* 802A877C  4E 80 00 20 */	blr 
