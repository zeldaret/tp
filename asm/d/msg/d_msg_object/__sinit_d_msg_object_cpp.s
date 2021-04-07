lbl_80238B58:
/* 80238B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238B5C  7C 08 02 A6 */	mflr r0
/* 80238B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238B64  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80238B68  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80238B6C  4B FF A2 01 */	bl __ct__16dMsgObject_HIO_cFv
/* 80238B70  3C 80 80 24 */	lis r4, __dt__16dMsgObject_HIO_cFv@ha /* 0x80238BDC@ha */
/* 80238B74  38 84 8B DC */	addi r4, r4, __dt__16dMsgObject_HIO_cFv@l /* 0x80238BDC@l */
/* 80238B78  3C A0 80 43 */	lis r5, lit_4011@ha /* 0x80430280@ha */
/* 80238B7C  38 A5 02 80 */	addi r5, r5, lit_4011@l /* 0x80430280@l */
/* 80238B80  48 12 90 A5 */	bl __register_global_object
/* 80238B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238B88  7C 08 03 A6 */	mtlr r0
/* 80238B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80238B90  4E 80 00 20 */	blr 
