lbl_800E7F18:
/* 800E7F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7F1C  7C 08 02 A6 */	mflr r0
/* 800E7F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7F24  38 80 00 40 */	li r4, 0x40
/* 800E7F28  4B FC A6 C1 */	bl itemButtonCheck__9daAlink_cFUc
/* 800E7F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7F30  7C 08 03 A6 */	mtlr r0
/* 800E7F34  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7F38  4E 80 00 20 */	blr 
