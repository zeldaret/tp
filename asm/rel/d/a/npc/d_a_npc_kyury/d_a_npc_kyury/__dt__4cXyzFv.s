lbl_80A629F8:
/* 80A629F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A629FC  7C 08 02 A6 */	mflr r0
/* 80A62A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62A08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62A0C  41 82 00 10 */	beq lbl_80A62A1C
/* 80A62A10  7C 80 07 35 */	extsh. r0, r4
/* 80A62A14  40 81 00 08 */	ble lbl_80A62A1C
/* 80A62A18  4B 86 C3 25 */	bl __dl__FPv
lbl_80A62A1C:
/* 80A62A1C  7F E3 FB 78 */	mr r3, r31
/* 80A62A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62A28  7C 08 03 A6 */	mtlr r0
/* 80A62A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62A30  4E 80 00 20 */	blr 
