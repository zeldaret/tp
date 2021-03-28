lbl_807CE244:
/* 807CE244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE248  7C 08 02 A6 */	mflr r0
/* 807CE24C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE250  4B FF F4 19 */	bl create__8daE_VA_cFv
/* 807CE254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE258  7C 08 03 A6 */	mtlr r0
/* 807CE25C  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE260  4E 80 00 20 */	blr 
