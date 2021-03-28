lbl_80B9FD20:
/* 80B9FD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FD24  7C 08 02 A6 */	mflr r0
/* 80B9FD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FD2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9FD30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9FD34  41 82 00 10 */	beq lbl_80B9FD44
/* 80B9FD38  7C 80 07 35 */	extsh. r0, r4
/* 80B9FD3C  40 81 00 08 */	ble lbl_80B9FD44
/* 80B9FD40  4B 72 EF FC */	b __dl__FPv
lbl_80B9FD44:
/* 80B9FD44  7F E3 FB 78 */	mr r3, r31
/* 80B9FD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9FD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FD50  7C 08 03 A6 */	mtlr r0
/* 80B9FD54  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FD58  4E 80 00 20 */	blr 
