lbl_80AAC28C:
/* 80AAC28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC290  7C 08 02 A6 */	mflr r0
/* 80AAC294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC29C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC2A0  41 82 00 10 */	beq lbl_80AAC2B0
/* 80AAC2A4  7C 80 07 35 */	extsh. r0, r4
/* 80AAC2A8  40 81 00 08 */	ble lbl_80AAC2B0
/* 80AAC2AC  4B 82 2A 91 */	bl __dl__FPv
lbl_80AAC2B0:
/* 80AAC2B0  7F E3 FB 78 */	mr r3, r31
/* 80AAC2B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC2B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC2BC  7C 08 03 A6 */	mtlr r0
/* 80AAC2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC2C4  4E 80 00 20 */	blr 
