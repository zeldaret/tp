lbl_800E7EF4:
/* 800E7EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7EF8  7C 08 02 A6 */	mflr r0
/* 800E7EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7F00  38 80 00 40 */	li r4, 0x40
/* 800E7F04  4B FC A6 C9 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800E7F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7F0C  7C 08 03 A6 */	mtlr r0
/* 800E7F10  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7F14  4E 80 00 20 */	blr 
