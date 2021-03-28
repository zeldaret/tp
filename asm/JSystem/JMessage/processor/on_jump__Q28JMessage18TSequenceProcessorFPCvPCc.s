lbl_802A8610:
/* 802A8610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A8614  7C 08 02 A6 */	mflr r0
/* 802A8618  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A861C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A8620  48 0B 9B BD */	bl _savegpr_29
/* 802A8624  7C 7D 1B 78 */	mr r29, r3
/* 802A8628  7C 9E 23 78 */	mr r30, r4
/* 802A862C  7C BF 2B 78 */	mr r31, r5
/* 802A8630  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802A8634  38 00 00 00 */	li r0, 0
/* 802A8638  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A863C  3C 80 80 2B */	lis r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 802A8640  38 04 82 8C */	addi r0, r4, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 802A8644  90 03 00 24 */	stw r0, 0x24(r3)
/* 802A8648  7F E4 FB 78 */	mr r4, r31
/* 802A864C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8650  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A8654  7D 89 03 A6 */	mtctr r12
/* 802A8658  4E 80 04 21 */	bctrl 
/* 802A865C  7F A3 EB 78 */	mr r3, r29
/* 802A8660  7F C4 F3 78 */	mr r4, r30
/* 802A8664  7F E5 FB 78 */	mr r5, r31
/* 802A8668  81 9D 00 00 */	lwz r12, 0(r29)
/* 802A866C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802A8670  7D 89 03 A6 */	mtctr r12
/* 802A8674  4E 80 04 21 */	bctrl 
/* 802A8678  39 61 00 20 */	addi r11, r1, 0x20
/* 802A867C  48 0B 9B AD */	bl _restgpr_29
/* 802A8680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8684  7C 08 03 A6 */	mtlr r0
/* 802A8688  38 21 00 20 */	addi r1, r1, 0x20
/* 802A868C  4E 80 00 20 */	blr 
