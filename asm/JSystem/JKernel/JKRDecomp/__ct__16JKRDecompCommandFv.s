lbl_802DBD70:
/* 802DBD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBD74  7C 08 02 A6 */	mflr r0
/* 802DBD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBD7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBD80  7C 7F 1B 78 */	mr r31, r3
/* 802DBD84  38 7F 00 28 */	addi r3, r31, 0x28
/* 802DBD88  38 9F 00 48 */	addi r4, r31, 0x48
/* 802DBD8C  38 A0 00 01 */	li r5, 1
/* 802DBD90  48 06 2C 05 */	bl OSInitMessageQueue
/* 802DBD94  38 00 00 00 */	li r0, 0
/* 802DBD98  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802DBD9C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802DBDA0  93 FF 00 18 */	stw r31, 0x18(r31)
/* 802DBDA4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802DBDA8  7F E3 FB 78 */	mr r3, r31
/* 802DBDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBDB4  7C 08 03 A6 */	mtlr r0
/* 802DBDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBDBC  4E 80 00 20 */	blr 
