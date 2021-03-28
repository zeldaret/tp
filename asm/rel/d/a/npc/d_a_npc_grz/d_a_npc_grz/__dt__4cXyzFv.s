lbl_809EEA18:
/* 809EEA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EEA1C  7C 08 02 A6 */	mflr r0
/* 809EEA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EEA24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EEA28  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EEA2C  41 82 00 10 */	beq lbl_809EEA3C
/* 809EEA30  7C 80 07 35 */	extsh. r0, r4
/* 809EEA34  40 81 00 08 */	ble lbl_809EEA3C
/* 809EEA38  4B 8E 03 04 */	b __dl__FPv
lbl_809EEA3C:
/* 809EEA3C  7F E3 FB 78 */	mr r3, r31
/* 809EEA40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EEA44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EEA48  7C 08 03 A6 */	mtlr r0
/* 809EEA4C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EEA50  4E 80 00 20 */	blr 
