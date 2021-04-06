lbl_80B2FD5C:
/* 80B2FD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FD60  7C 08 02 A6 */	mflr r0
/* 80B2FD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2FD6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2FD70  41 82 00 10 */	beq lbl_80B2FD80
/* 80B2FD74  7C 80 07 35 */	extsh. r0, r4
/* 80B2FD78  40 81 00 08 */	ble lbl_80B2FD80
/* 80B2FD7C  4B 79 EF C1 */	bl __dl__FPv
lbl_80B2FD80:
/* 80B2FD80  7F E3 FB 78 */	mr r3, r31
/* 80B2FD84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2FD88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FD8C  7C 08 03 A6 */	mtlr r0
/* 80B2FD90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FD94  4E 80 00 20 */	blr 
