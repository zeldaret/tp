lbl_80074DAC:
/* 80074DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074DB0  7C 08 02 A6 */	mflr r0
/* 80074DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074DB8  A0 04 00 02 */	lhz r0, 2(r4)
/* 80074DBC  1C C0 00 14 */	mulli r6, r0, 0x14
/* 80074DC0  7C A3 32 14 */	add r5, r3, r6
/* 80074DC4  88 05 00 04 */	lbz r0, 4(r5)
/* 80074DC8  28 00 00 00 */	cmplwi r0, 0
/* 80074DCC  41 82 00 20 */	beq lbl_80074DEC
/* 80074DD0  7C 63 30 2E */	lwzx r3, r3, r6
/* 80074DD4  A0 84 00 00 */	lhz r4, 0(r4)
/* 80074DD8  81 83 00 04 */	lwz r12, 4(r3)
/* 80074DDC  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 80074DE0  7D 89 03 A6 */	mtctr r12
/* 80074DE4  4E 80 04 21 */	bctrl 
/* 80074DE8  48 00 00 08 */	b lbl_80074DF0
lbl_80074DEC:
/* 80074DEC  38 60 00 00 */	li r3, 0
lbl_80074DF0:
/* 80074DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074DF4  7C 08 03 A6 */	mtlr r0
/* 80074DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80074DFC  4E 80 00 20 */	blr 
