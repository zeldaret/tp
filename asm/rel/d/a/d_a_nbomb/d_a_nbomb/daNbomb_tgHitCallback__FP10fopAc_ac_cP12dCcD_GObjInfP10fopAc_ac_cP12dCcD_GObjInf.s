lbl_804C6FB4:
/* 804C6FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6FB8  7C 08 02 A6 */	mflr r0
/* 804C6FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6FC0  7C C4 33 78 */	mr r4, r6
/* 804C6FC4  4B FF FE 71 */	bl tgHitCallback__9daNbomb_cFP12dCcD_GObjInf
/* 804C6FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6FCC  7C 08 03 A6 */	mtlr r0
/* 804C6FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6FD4  4E 80 00 20 */	blr 
