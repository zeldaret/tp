lbl_802AA8C8:
/* 802AA8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA8CC  7C 08 02 A6 */	mflr r0
/* 802AA8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA8D8  7C 7F 1B 78 */	mr r31, r3
/* 802AA8DC  38 7F 00 04 */	addi r3, r31, 4
/* 802AA8E0  4B FF 59 C1 */	bl stop__8JAISeMgrFv
/* 802AA8E4  38 7F 07 28 */	addi r3, r31, 0x728
/* 802AA8E8  4B FF 75 15 */	bl stop__9JAISeqMgrFv
/* 802AA8EC  38 7F 07 9C */	addi r3, r31, 0x79c
/* 802AA8F0  4B FF 97 39 */	bl stop__12JAIStreamMgrFv
/* 802AA8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AA8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AA8FC  7C 08 03 A6 */	mtlr r0
/* 802AA900  38 21 00 10 */	addi r1, r1, 0x10
/* 802AA904  4E 80 00 20 */	blr 
