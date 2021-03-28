lbl_802CE500:
/* 802CE500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE504  7C 08 02 A6 */	mflr r0
/* 802CE508  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE50C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CE510  7C 7F 1B 78 */	mr r31, r3
/* 802CE514  28 04 00 00 */	cmplwi r4, 0
/* 802CE518  40 82 00 10 */	bne lbl_802CE528
/* 802CE51C  48 00 03 21 */	bl findFromRoot__7JKRHeapFPv
/* 802CE520  7C 64 1B 79 */	or. r4, r3, r3
/* 802CE524  41 82 00 10 */	beq lbl_802CE534
lbl_802CE528:
/* 802CE528  7C 83 23 78 */	mr r3, r4
/* 802CE52C  7F E4 FB 78 */	mr r4, r31
/* 802CE530  48 00 00 19 */	bl free__7JKRHeapFPv
lbl_802CE534:
/* 802CE534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CE538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE53C  7C 08 03 A6 */	mtlr r0
/* 802CE540  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE544  4E 80 00 20 */	blr 
