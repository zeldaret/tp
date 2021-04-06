lbl_807CEC04:
/* 807CEC04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CEC08  7C 08 02 A6 */	mflr r0
/* 807CEC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CEC10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CEC14  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CEC18  41 82 00 10 */	beq lbl_807CEC28
/* 807CEC1C  7C 80 07 35 */	extsh. r0, r4
/* 807CEC20  40 81 00 08 */	ble lbl_807CEC28
/* 807CEC24  4B B0 01 19 */	bl __dl__FPv
lbl_807CEC28:
/* 807CEC28  7F E3 FB 78 */	mr r3, r31
/* 807CEC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CEC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CEC34  7C 08 03 A6 */	mtlr r0
/* 807CEC38  38 21 00 10 */	addi r1, r1, 0x10
/* 807CEC3C  4E 80 00 20 */	blr 
