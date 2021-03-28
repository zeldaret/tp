lbl_8002CA70:
/* 8002CA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CA74  7C 08 02 A6 */	mflr r0
/* 8002CA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CA7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002CA80  7C 7F 1B 78 */	mr r31, r3
/* 8002CA84  80 63 4E 08 */	lwz r3, 0x4e08(r3)
/* 8002CA88  28 03 00 00 */	cmplwi r3, 0
/* 8002CA8C  41 82 00 24 */	beq lbl_8002CAB0
/* 8002CA90  41 82 00 18 */	beq lbl_8002CAA8
/* 8002CA94  38 80 00 01 */	li r4, 1
/* 8002CA98  81 83 00 00 */	lwz r12, 0(r3)
/* 8002CA9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8002CAA0  7D 89 03 A6 */	mtctr r12
/* 8002CAA4  4E 80 04 21 */	bctrl 
lbl_8002CAA8:
/* 8002CAA8  38 00 00 00 */	li r0, 0
/* 8002CAAC  90 1F 4E 08 */	stw r0, 0x4e08(r31)
lbl_8002CAB0:
/* 8002CAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002CAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CAB8  7C 08 03 A6 */	mtlr r0
/* 8002CABC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CAC0  4E 80 00 20 */	blr 
