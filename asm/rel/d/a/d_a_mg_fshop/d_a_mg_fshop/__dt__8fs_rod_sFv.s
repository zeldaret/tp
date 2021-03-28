lbl_8086FF84:
/* 8086FF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FF88  7C 08 02 A6 */	mflr r0
/* 8086FF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FF90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FF94  7C 7F 1B 79 */	or. r31, r3, r3
/* 8086FF98  41 82 00 10 */	beq lbl_8086FFA8
/* 8086FF9C  7C 80 07 35 */	extsh. r0, r4
/* 8086FFA0  40 81 00 08 */	ble lbl_8086FFA8
/* 8086FFA4  4B A5 ED 98 */	b __dl__FPv
lbl_8086FFA8:
/* 8086FFA8  7F E3 FB 78 */	mr r3, r31
/* 8086FFAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FFB4  7C 08 03 A6 */	mtlr r0
/* 8086FFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FFBC  4E 80 00 20 */	blr 
