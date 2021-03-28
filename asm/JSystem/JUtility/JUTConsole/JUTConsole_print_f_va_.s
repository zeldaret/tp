lbl_802E7F30:
/* 802E7F30  94 21 FB F0 */	stwu r1, -0x410(r1)
/* 802E7F34  7C 08 02 A6 */	mflr r0
/* 802E7F38  90 01 04 14 */	stw r0, 0x414(r1)
/* 802E7F3C  93 E1 04 0C */	stw r31, 0x40c(r1)
/* 802E7F40  7C 7F 1B 78 */	mr r31, r3
/* 802E7F44  7C 80 23 78 */	mr r0, r4
/* 802E7F48  7C A6 2B 78 */	mr r6, r5
/* 802E7F4C  38 61 00 08 */	addi r3, r1, 8
/* 802E7F50  38 80 04 00 */	li r4, 0x400
/* 802E7F54  7C 05 03 78 */	mr r5, r0
/* 802E7F58  48 07 E7 39 */	bl vsnprintf
/* 802E7F5C  7F E3 FB 78 */	mr r3, r31
/* 802E7F60  38 81 00 08 */	addi r4, r1, 8
/* 802E7F64  4B FF FC D5 */	bl print__10JUTConsoleFPCc
/* 802E7F68  83 E1 04 0C */	lwz r31, 0x40c(r1)
/* 802E7F6C  80 01 04 14 */	lwz r0, 0x414(r1)
/* 802E7F70  7C 08 03 A6 */	mtlr r0
/* 802E7F74  38 21 04 10 */	addi r1, r1, 0x410
/* 802E7F78  4E 80 00 20 */	blr 
