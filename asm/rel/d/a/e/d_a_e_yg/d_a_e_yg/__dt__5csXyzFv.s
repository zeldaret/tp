lbl_807FCC28:
/* 807FCC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FCC2C  7C 08 02 A6 */	mflr r0
/* 807FCC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FCC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FCC38  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FCC3C  41 82 00 10 */	beq lbl_807FCC4C
/* 807FCC40  7C 80 07 35 */	extsh. r0, r4
/* 807FCC44  40 81 00 08 */	ble lbl_807FCC4C
/* 807FCC48  4B AD 20 F5 */	bl __dl__FPv
lbl_807FCC4C:
/* 807FCC4C  7F E3 FB 78 */	mr r3, r31
/* 807FCC50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FCC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FCC58  7C 08 03 A6 */	mtlr r0
/* 807FCC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 807FCC60  4E 80 00 20 */	blr 
