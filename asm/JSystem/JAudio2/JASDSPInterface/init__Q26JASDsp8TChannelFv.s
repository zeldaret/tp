lbl_8029DCA4:
/* 8029DCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DCA8  7C 08 02 A6 */	mflr r0
/* 8029DCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DCB0  38 00 00 00 */	li r0, 0
/* 8029DCB4  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8029DCB8  B0 03 00 02 */	sth r0, 2(r3)
/* 8029DCBC  B0 03 01 0A */	sth r0, 0x10a(r3)
/* 8029DCC0  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DCC4  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8029DCC8  90 03 00 68 */	stw r0, 0x68(r3)
/* 8029DCCC  48 00 02 E5 */	bl initFilter__Q26JASDsp8TChannelFv
/* 8029DCD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DCD4  7C 08 03 A6 */	mtlr r0
/* 8029DCD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DCDC  4E 80 00 20 */	blr 
