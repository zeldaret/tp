lbl_8029DA6C:
/* 8029DA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DA70  7C 08 02 A6 */	mflr r0
/* 8029DA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DA78  80 6D 8D 68 */	lwz r3, CH_BUF__6JASDsp(r13)
/* 8029DA7C  38 80 60 00 */	li r4, 0x6000
/* 8029DA80  48 09 DB 2D */	bl DCFlushRange
/* 8029DA84  80 6D 8D 6C */	lwz r3, FX_BUF__6JASDsp(r13)
/* 8029DA88  38 80 00 80 */	li r4, 0x80
/* 8029DA8C  48 09 DB 21 */	bl DCFlushRange
/* 8029DA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DA94  7C 08 03 A6 */	mtlr r0
/* 8029DA98  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DA9C  4E 80 00 20 */	blr 
