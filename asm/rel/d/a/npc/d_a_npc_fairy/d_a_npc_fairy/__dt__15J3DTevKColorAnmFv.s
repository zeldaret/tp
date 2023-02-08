lbl_809B2988:
/* 809B2988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B298C  7C 08 02 A6 */	mflr r0
/* 809B2990  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B2998  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B299C  41 82 00 10 */	beq lbl_809B29AC
/* 809B29A0  7C 80 07 35 */	extsh. r0, r4
/* 809B29A4  40 81 00 08 */	ble lbl_809B29AC
/* 809B29A8  4B 91 C3 95 */	bl __dl__FPv
lbl_809B29AC:
/* 809B29AC  7F E3 FB 78 */	mr r3, r31
/* 809B29B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B29B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B29B8  7C 08 03 A6 */	mtlr r0
/* 809B29BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B29C0  4E 80 00 20 */	blr 
