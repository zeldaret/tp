lbl_80C51D2C:
/* 80C51D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51D30  7C 08 02 A6 */	mflr r0
/* 80C51D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51D3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51D40  41 82 00 10 */	beq lbl_80C51D50
/* 80C51D44  7C 80 07 35 */	extsh. r0, r4
/* 80C51D48  40 81 00 08 */	ble lbl_80C51D50
/* 80C51D4C  4B 67 CF F0 */	b __dl__FPv
lbl_80C51D50:
/* 80C51D50  7F E3 FB 78 */	mr r3, r31
/* 80C51D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51D5C  7C 08 03 A6 */	mtlr r0
/* 80C51D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51D64  4E 80 00 20 */	blr 
