lbl_8037214C:
/* 8037214C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372150  7C 08 02 A6 */	mflr r0
/* 80372154  38 60 00 00 */	li r3, 0
/* 80372158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037215C  4B FF D9 A5 */	bl TRKTargetSetStopped
/* 80372160  4B FF FB A9 */	bl UnreserveEXI2Port
/* 80372164  4B FF D7 51 */	bl TRKSwapAndGo
/* 80372168  4B FF FB D1 */	bl ReserveEXI2Port
/* 8037216C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372170  38 60 00 00 */	li r3, 0
/* 80372174  7C 08 03 A6 */	mtlr r0
/* 80372178  38 21 00 10 */	addi r1, r1, 0x10
/* 8037217C  4E 80 00 20 */	blr 
