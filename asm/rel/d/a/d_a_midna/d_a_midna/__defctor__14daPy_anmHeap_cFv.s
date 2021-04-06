lbl_804BD8F8:
/* 804BD8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD8FC  7C 08 02 A6 */	mflr r0
/* 804BD900  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD904  38 80 00 00 */	li r4, 0
/* 804BD908  4B CA 14 09 */	bl __ct__14daPy_anmHeap_cFUl
/* 804BD90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD910  7C 08 03 A6 */	mtlr r0
/* 804BD914  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD918  4E 80 00 20 */	blr 
