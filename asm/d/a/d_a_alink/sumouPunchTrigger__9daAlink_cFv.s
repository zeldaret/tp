lbl_800EA908:
/* 800EA908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA90C  7C 08 02 A6 */	mflr r0
/* 800EA910  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA914  38 80 00 08 */	li r4, 8
/* 800EA918  4B FC 7C B5 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800EA91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA920  7C 08 03 A6 */	mtlr r0
/* 800EA924  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA928  4E 80 00 20 */	blr 
