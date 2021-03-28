lbl_800B26B8:
/* 800B26B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B26BC  7C 08 02 A6 */	mflr r0
/* 800B26C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B26C4  38 80 00 08 */	li r4, 8
/* 800B26C8  4B FF FF 05 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B26CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B26D0  7C 08 03 A6 */	mtlr r0
/* 800B26D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B26D8  4E 80 00 20 */	blr 
