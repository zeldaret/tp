lbl_8086FE98:
/* 8086FE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FE9C  7C 08 02 A6 */	mflr r0
/* 8086FEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FEA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8086FEAC  41 82 00 10 */	beq lbl_8086FEBC
/* 8086FEB0  7C 80 07 35 */	extsh. r0, r4
/* 8086FEB4  40 81 00 08 */	ble lbl_8086FEBC
/* 8086FEB8  4B A5 EE 85 */	bl __dl__FPv
lbl_8086FEBC:
/* 8086FEBC  7F E3 FB 78 */	mr r3, r31
/* 8086FEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FEC8  7C 08 03 A6 */	mtlr r0
/* 8086FECC  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FED0  4E 80 00 20 */	blr 
