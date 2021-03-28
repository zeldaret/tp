lbl_80D0E910:
/* 80D0E910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E914  7C 08 02 A6 */	mflr r0
/* 80D0E918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E91C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E920  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0E924  41 82 00 1C */	beq lbl_80D0E940
/* 80D0E928  3C A0 80 D1 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80D0E92C  38 05 F1 5C */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80D0E930  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0E934  7C 80 07 35 */	extsh. r0, r4
/* 80D0E938  40 81 00 08 */	ble lbl_80D0E940
/* 80D0E93C  4B 5C 04 00 */	b __dl__FPv
lbl_80D0E940:
/* 80D0E940  7F E3 FB 78 */	mr r3, r31
/* 80D0E944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E94C  7C 08 03 A6 */	mtlr r0
/* 80D0E950  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E954  4E 80 00 20 */	blr 
