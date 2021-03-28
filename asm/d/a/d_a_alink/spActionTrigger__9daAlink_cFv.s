lbl_800B2688:
/* 800B2688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B268C  7C 08 02 A6 */	mflr r0
/* 800B2690  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2694  38 80 00 40 */	li r4, 0x40
/* 800B2698  4B FF FF 35 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B269C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B26A0  7C 08 03 A6 */	mtlr r0
/* 800B26A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B26A8  4E 80 00 20 */	blr 
