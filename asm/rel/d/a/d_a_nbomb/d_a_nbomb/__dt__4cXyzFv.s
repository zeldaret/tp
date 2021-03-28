lbl_804C6F78:
/* 804C6F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6F7C  7C 08 02 A6 */	mflr r0
/* 804C6F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C6F88  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C6F8C  41 82 00 10 */	beq lbl_804C6F9C
/* 804C6F90  7C 80 07 35 */	extsh. r0, r4
/* 804C6F94  40 81 00 08 */	ble lbl_804C6F9C
/* 804C6F98  4B E0 7D A4 */	b __dl__FPv
lbl_804C6F9C:
/* 804C6F9C  7F E3 FB 78 */	mr r3, r31
/* 804C6FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C6FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6FA8  7C 08 03 A6 */	mtlr r0
/* 804C6FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6FB0  4E 80 00 20 */	blr 
