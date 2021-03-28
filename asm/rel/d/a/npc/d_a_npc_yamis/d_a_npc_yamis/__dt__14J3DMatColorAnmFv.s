lbl_80B46D54:
/* 80B46D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46D58  7C 08 02 A6 */	mflr r0
/* 80B46D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B46D64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B46D68  41 82 00 10 */	beq lbl_80B46D78
/* 80B46D6C  7C 80 07 35 */	extsh. r0, r4
/* 80B46D70  40 81 00 08 */	ble lbl_80B46D78
/* 80B46D74  4B 78 7F C8 */	b __dl__FPv
lbl_80B46D78:
/* 80B46D78  7F E3 FB 78 */	mr r3, r31
/* 80B46D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B46D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46D84  7C 08 03 A6 */	mtlr r0
/* 80B46D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46D8C  4E 80 00 20 */	blr 
