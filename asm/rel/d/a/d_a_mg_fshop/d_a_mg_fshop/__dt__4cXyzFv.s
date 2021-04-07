lbl_8086CC30:
/* 8086CC30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086CC34  7C 08 02 A6 */	mflr r0
/* 8086CC38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086CC3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086CC40  7C 7F 1B 79 */	or. r31, r3, r3
/* 8086CC44  41 82 00 10 */	beq lbl_8086CC54
/* 8086CC48  7C 80 07 35 */	extsh. r0, r4
/* 8086CC4C  40 81 00 08 */	ble lbl_8086CC54
/* 8086CC50  4B A6 20 ED */	bl __dl__FPv
lbl_8086CC54:
/* 8086CC54  7F E3 FB 78 */	mr r3, r31
/* 8086CC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086CC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086CC60  7C 08 03 A6 */	mtlr r0
/* 8086CC64  38 21 00 10 */	addi r1, r1, 0x10
/* 8086CC68  4E 80 00 20 */	blr 
