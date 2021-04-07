lbl_80ACEEFC:
/* 80ACEEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACEF00  7C 08 02 A6 */	mflr r0
/* 80ACEF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACEF08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACEF0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACEF10  41 82 00 10 */	beq lbl_80ACEF20
/* 80ACEF14  7C 80 07 35 */	extsh. r0, r4
/* 80ACEF18  40 81 00 08 */	ble lbl_80ACEF20
/* 80ACEF1C  4B 7F FE 21 */	bl __dl__FPv
lbl_80ACEF20:
/* 80ACEF20  7F E3 FB 78 */	mr r3, r31
/* 80ACEF24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACEF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACEF2C  7C 08 03 A6 */	mtlr r0
/* 80ACEF30  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACEF34  4E 80 00 20 */	blr 
