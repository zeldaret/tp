lbl_8086FD78:
/* 8086FD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FD7C  7C 08 02 A6 */	mflr r0
/* 8086FD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FD88  7C 7F 1B 79 */	or. r31, r3, r3
/* 8086FD8C  41 82 00 10 */	beq lbl_8086FD9C
/* 8086FD90  7C 80 07 35 */	extsh. r0, r4
/* 8086FD94  40 81 00 08 */	ble lbl_8086FD9C
/* 8086FD98  4B A5 EF A5 */	bl __dl__FPv
lbl_8086FD9C:
/* 8086FD9C  7F E3 FB 78 */	mr r3, r31
/* 8086FDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FDA8  7C 08 03 A6 */	mtlr r0
/* 8086FDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FDB0  4E 80 00 20 */	blr 
