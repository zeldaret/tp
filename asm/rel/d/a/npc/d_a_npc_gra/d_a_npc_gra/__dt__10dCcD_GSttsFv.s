lbl_809C9968:
/* 809C9968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C996C  7C 08 02 A6 */	mflr r0
/* 809C9970  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9978  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C997C  41 82 00 30 */	beq lbl_809C99AC
/* 809C9980  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha /* 0x809CB284@ha */
/* 809C9984  38 03 B2 84 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809CB284@l */
/* 809C9988  90 1F 00 00 */	stw r0, 0(r31)
/* 809C998C  41 82 00 10 */	beq lbl_809C999C
/* 809C9990  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha /* 0x809CB278@ha */
/* 809C9994  38 03 B2 78 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809CB278@l */
/* 809C9998  90 1F 00 00 */	stw r0, 0(r31)
lbl_809C999C:
/* 809C999C  7C 80 07 35 */	extsh. r0, r4
/* 809C99A0  40 81 00 0C */	ble lbl_809C99AC
/* 809C99A4  7F E3 FB 78 */	mr r3, r31
/* 809C99A8  4B 90 53 95 */	bl __dl__FPv
lbl_809C99AC:
/* 809C99AC  7F E3 FB 78 */	mr r3, r31
/* 809C99B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C99B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C99B8  7C 08 03 A6 */	mtlr r0
/* 809C99BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809C99C0  4E 80 00 20 */	blr 
