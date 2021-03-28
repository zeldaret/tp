lbl_802947BC:
/* 802947BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802947C0  7C 08 02 A6 */	mflr r0
/* 802947C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802947C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802947CC  7C 9F 23 78 */	mr r31, r4
/* 802947D0  7F E3 FB 78 */	mr r3, r31
/* 802947D4  48 00 1A DD */	bl readMidiValue__12JASSeqReaderFv
/* 802947D8  90 7F 00 40 */	stw r3, 0x40(r31)
/* 802947DC  38 60 00 00 */	li r3, 0
/* 802947E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802947E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802947E8  7C 08 03 A6 */	mtlr r0
/* 802947EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802947F0  4E 80 00 20 */	blr 
