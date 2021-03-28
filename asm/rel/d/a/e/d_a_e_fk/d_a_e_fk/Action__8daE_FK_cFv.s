lbl_806BA004:
/* 806BA004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BA008  7C 08 02 A6 */	mflr r0
/* 806BA00C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BA010  4B FF FF 11 */	bl RunAction__8daE_FK_cFv
/* 806BA014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BA018  7C 08 03 A6 */	mtlr r0
/* 806BA01C  38 21 00 10 */	addi r1, r1, 0x10
/* 806BA020  4E 80 00 20 */	blr 
