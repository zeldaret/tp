lbl_80B0D018:
/* 80B0D018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D01C  7C 08 02 A6 */	mflr r0
/* 80B0D020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0D028  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0D02C  41 82 00 10 */	beq lbl_80B0D03C
/* 80B0D030  7C 80 07 35 */	extsh. r0, r4
/* 80B0D034  40 81 00 08 */	ble lbl_80B0D03C
/* 80B0D038  4B 7C 1D 05 */	bl __dl__FPv
lbl_80B0D03C:
/* 80B0D03C  7F E3 FB 78 */	mr r3, r31
/* 80B0D040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0D044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D048  7C 08 03 A6 */	mtlr r0
/* 80B0D04C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D050  4E 80 00 20 */	blr 
