lbl_80D139FC:
/* 80D139FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13A00  7C 08 02 A6 */	mflr r0
/* 80D13A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D13A0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D13A10  41 82 00 10 */	beq lbl_80D13A20
/* 80D13A14  7C 80 07 35 */	extsh. r0, r4
/* 80D13A18  40 81 00 08 */	ble lbl_80D13A20
/* 80D13A1C  4B 5B B3 21 */	bl __dl__FPv
lbl_80D13A20:
/* 80D13A20  7F E3 FB 78 */	mr r3, r31
/* 80D13A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D13A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13A2C  7C 08 03 A6 */	mtlr r0
/* 80D13A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13A34  4E 80 00 20 */	blr 
