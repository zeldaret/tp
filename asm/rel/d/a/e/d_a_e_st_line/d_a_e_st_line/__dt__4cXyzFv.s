lbl_807A6F60:
/* 807A6F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6F64  7C 08 02 A6 */	mflr r0
/* 807A6F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A6F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A6F70  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A6F74  41 82 00 10 */	beq lbl_807A6F84
/* 807A6F78  7C 80 07 35 */	extsh. r0, r4
/* 807A6F7C  40 81 00 08 */	ble lbl_807A6F84
/* 807A6F80  4B B2 7D BD */	bl __dl__FPv
lbl_807A6F84:
/* 807A6F84  7F E3 FB 78 */	mr r3, r31
/* 807A6F88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A6F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6F90  7C 08 03 A6 */	mtlr r0
/* 807A6F94  38 21 00 10 */	addi r1, r1, 0x10
/* 807A6F98  4E 80 00 20 */	blr 
