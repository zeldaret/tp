lbl_800B2634:
/* 800B2634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B2638  7C 08 02 A6 */	mflr r0
/* 800B263C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2640  38 80 00 01 */	li r4, 1
/* 800B2644  88 03 2F 9C */	lbz r0, 0x2f9c(r3)
/* 800B2648  7C 80 00 30 */	slw r0, r4, r0
/* 800B264C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800B2650  4B FF FF 7D */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B2654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B2658  7C 08 03 A6 */	mtlr r0
/* 800B265C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B2660  4E 80 00 20 */	blr 
