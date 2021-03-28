lbl_8033EC6C:
/* 8033EC6C  7C 08 02 A6 */	mflr r0
/* 8033EC70  2C 03 00 00 */	cmpwi r3, 0
/* 8033EC74  90 01 00 04 */	stw r0, 4(r1)
/* 8033EC78  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033EC7C  41 82 00 18 */	beq lbl_8033EC94
/* 8033EC80  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC004010@ha */
/* 8033EC84  38 00 00 FF */	li r0, 0xff
/* 8033EC88  B0 03 40 10 */	sth r0, 0x4010(r3)
/* 8033EC8C  3C 60 F0 00 */	lis r3, 0xf000
/* 8033EC90  4B FF EE 2D */	bl __OSMaskInterrupts
lbl_8033EC94:
/* 8033EC94  38 60 00 01 */	li r3, 1
/* 8033EC98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033EC9C  38 21 00 08 */	addi r1, r1, 8
/* 8033ECA0  7C 08 03 A6 */	mtlr r0
/* 8033ECA4  4E 80 00 20 */	blr 
