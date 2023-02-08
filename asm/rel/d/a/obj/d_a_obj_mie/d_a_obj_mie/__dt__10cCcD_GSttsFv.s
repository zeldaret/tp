lbl_80C95968:
/* 80C95968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9596C  7C 08 02 A6 */	mflr r0
/* 80C95970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C95978  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9597C  41 82 00 1C */	beq lbl_80C95998
/* 80C95980  3C A0 80 C9 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C95C64@ha */
/* 80C95984  38 05 5C 64 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C95C64@l */
/* 80C95988  90 1F 00 00 */	stw r0, 0(r31)
/* 80C9598C  7C 80 07 35 */	extsh. r0, r4
/* 80C95990  40 81 00 08 */	ble lbl_80C95998
/* 80C95994  4B 63 93 A9 */	bl __dl__FPv
lbl_80C95998:
/* 80C95998  7F E3 FB 78 */	mr r3, r31
/* 80C9599C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C959A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C959A4  7C 08 03 A6 */	mtlr r0
/* 80C959A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C959AC  4E 80 00 20 */	blr 
