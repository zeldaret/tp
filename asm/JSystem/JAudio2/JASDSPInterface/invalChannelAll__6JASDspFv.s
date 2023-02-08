lbl_8029DAA0:
/* 8029DAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DAA4  7C 08 02 A6 */	mflr r0
/* 8029DAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DAAC  80 6D 8D 68 */	lwz r3, CH_BUF__6JASDsp(r13)
/* 8029DAB0  38 80 60 00 */	li r4, 0x6000
/* 8029DAB4  48 09 DA CD */	bl DCInvalidateRange
/* 8029DAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DABC  7C 08 03 A6 */	mtlr r0
/* 8029DAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DAC4  4E 80 00 20 */	blr 
