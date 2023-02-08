lbl_80BC9F64:
/* 80BC9F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9F68  7C 08 02 A6 */	mflr r0
/* 80BC9F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC9F74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC9F78  41 82 00 1C */	beq lbl_80BC9F94
/* 80BC9F7C  3C A0 80 BD */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BCA180@ha */
/* 80BC9F80  38 05 A1 80 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BCA180@l */
/* 80BC9F84  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC9F88  7C 80 07 35 */	extsh. r0, r4
/* 80BC9F8C  40 81 00 08 */	ble lbl_80BC9F94
/* 80BC9F90  4B 70 4D AD */	bl __dl__FPv
lbl_80BC9F94:
/* 80BC9F94  7F E3 FB 78 */	mr r3, r31
/* 80BC9F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC9F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9FA0  7C 08 03 A6 */	mtlr r0
/* 80BC9FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9FA8  4E 80 00 20 */	blr 
