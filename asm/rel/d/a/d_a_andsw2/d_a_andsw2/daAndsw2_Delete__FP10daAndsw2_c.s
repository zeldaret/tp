lbl_804D6A78:
/* 804D6A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6A7C  7C 08 02 A6 */	mflr r0
/* 804D6A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6A84  38 80 FF FF */	li r4, -1
/* 804D6A88  4B FF F6 45 */	bl __dt__10daAndsw2_cFv
/* 804D6A8C  38 60 00 01 */	li r3, 1
/* 804D6A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6A94  7C 08 03 A6 */	mtlr r0
/* 804D6A98  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6A9C  4E 80 00 20 */	blr 
