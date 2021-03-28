lbl_800B26FC:
/* 800B26FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B2700  7C 08 02 A6 */	mflr r0
/* 800B2704  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2708  4B FF FF 81 */	bl spActionTrigger__9daAlink_cFv
/* 800B270C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B2710  7C 08 03 A6 */	mtlr r0
/* 800B2714  38 21 00 10 */	addi r1, r1, 0x10
/* 800B2718  4E 80 00 20 */	blr 
