lbl_80CCF6BC:
/* 80CCF6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCF6C0  7C 08 02 A6 */	mflr r0
/* 80CCF6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCF6C8  88 03 10 C8 */	lbz r0, 0x10c8(r3)
/* 80CCF6CC  2C 00 00 00 */	cmpwi r0, 0
/* 80CCF6D0  41 82 00 0C */	beq lbl_80CCF6DC
/* 80CCF6D4  41 80 00 1C */	blt lbl_80CCF6F0
/* 80CCF6D8  48 00 00 18 */	b lbl_80CCF6F0
lbl_80CCF6DC:
/* 80CCF6DC  38 00 00 07 */	li r0, 7
/* 80CCF6E0  B0 03 0E 30 */	sth r0, 0xe30(r3)
/* 80CCF6E4  4B 47 AB 41 */	bl evtChange__8daNpcT_cFv
/* 80CCF6E8  38 60 00 01 */	li r3, 1
/* 80CCF6EC  48 00 00 08 */	b lbl_80CCF6F4
lbl_80CCF6F0:
/* 80CCF6F0  38 60 00 00 */	li r3, 0
lbl_80CCF6F4:
/* 80CCF6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCF6F8  7C 08 03 A6 */	mtlr r0
/* 80CCF6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCF700  4E 80 00 20 */	blr 
