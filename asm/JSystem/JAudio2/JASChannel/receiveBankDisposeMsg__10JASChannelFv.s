lbl_8029BC48:
/* 8029BC48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029BC4C  7C 08 02 A6 */	mflr r0
/* 8029BC50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029BC54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029BC58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029BC5C  38 00 00 00 */	li r0, 0
/* 8029BC60  90 0D 8D 18 */	stw r0, sBankDisposeListSize__10JASChannel(r13)
/* 8029BC64  3C 60 80 43 */	lis r3, sBankDisposeList__10JASChannel@ha
/* 8029BC68  3B C3 1B F0 */	addi r30, r3, sBankDisposeList__10JASChannel@l
/* 8029BC6C  3C 60 80 43 */	lis r3, sBankDisposeMsgQ__10JASChannel@ha
/* 8029BC70  3B E3 1B 90 */	addi r31, r3, sBankDisposeMsgQ__10JASChannel@l
/* 8029BC74  48 00 00 1C */	b lbl_8029BC90
lbl_8029BC78:
/* 8029BC78  80 81 00 08 */	lwz r4, 8(r1)
/* 8029BC7C  80 6D 8D 18 */	lwz r3, sBankDisposeListSize__10JASChannel(r13)
/* 8029BC80  54 60 10 3A */	slwi r0, r3, 2
/* 8029BC84  7C 9E 01 2E */	stwx r4, r30, r0
/* 8029BC88  38 03 00 01 */	addi r0, r3, 1
/* 8029BC8C  90 0D 8D 18 */	stw r0, sBankDisposeListSize__10JASChannel(r13)
lbl_8029BC90:
/* 8029BC90  7F E3 FB 78 */	mr r3, r31
/* 8029BC94  38 81 00 08 */	addi r4, r1, 8
/* 8029BC98  38 A0 00 00 */	li r5, 0
/* 8029BC9C  48 0A 2E 21 */	bl OSReceiveMessage
/* 8029BCA0  2C 03 00 00 */	cmpwi r3, 0
/* 8029BCA4  40 82 FF D4 */	bne lbl_8029BC78
/* 8029BCA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029BCAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029BCB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029BCB4  7C 08 03 A6 */	mtlr r0
/* 8029BCB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029BCBC  4E 80 00 20 */	blr 
