lbl_807A7EFC:
/* 807A7EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7F00  7C 08 02 A6 */	mflr r0
/* 807A7F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A7F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A7F0C  7C 7F 1B 78 */	mr r31, r3
/* 807A7F10  80 03 07 08 */	lwz r0, 0x708(r3)
/* 807A7F14  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807A7F18  41 82 00 28 */	beq lbl_807A7F40
/* 807A7F1C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 807A7F20  A8 1F 07 34 */	lha r0, 0x734(r31)
/* 807A7F24  7C 03 00 50 */	subf r0, r3, r0
/* 807A7F28  7C 03 07 34 */	extsh r3, r0
/* 807A7F2C  4B BB D1 A4 */	b abs
/* 807A7F30  2C 03 70 00 */	cmpwi r3, 0x7000
/* 807A7F34  40 81 00 0C */	ble lbl_807A7F40
/* 807A7F38  38 60 00 01 */	li r3, 1
/* 807A7F3C  48 00 00 38 */	b lbl_807A7F74
lbl_807A7F40:
/* 807A7F40  80 1F 07 48 */	lwz r0, 0x748(r31)
/* 807A7F44  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807A7F48  41 82 00 28 */	beq lbl_807A7F70
/* 807A7F4C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 807A7F50  A8 1F 07 74 */	lha r0, 0x774(r31)
/* 807A7F54  7C 03 00 50 */	subf r0, r3, r0
/* 807A7F58  7C 03 07 34 */	extsh r3, r0
/* 807A7F5C  4B BB D1 74 */	b abs
/* 807A7F60  2C 03 70 00 */	cmpwi r3, 0x7000
/* 807A7F64  40 81 00 0C */	ble lbl_807A7F70
/* 807A7F68  38 60 00 01 */	li r3, 1
/* 807A7F6C  48 00 00 08 */	b lbl_807A7F74
lbl_807A7F70:
/* 807A7F70  38 60 00 00 */	li r3, 0
lbl_807A7F74:
/* 807A7F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A7F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7F7C  7C 08 03 A6 */	mtlr r0
/* 807A7F80  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7F84  4E 80 00 20 */	blr 
