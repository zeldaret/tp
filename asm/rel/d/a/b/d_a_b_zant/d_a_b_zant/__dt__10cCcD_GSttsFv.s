lbl_8064E94C:
/* 8064E94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E950  7C 08 02 A6 */	mflr r0
/* 8064E954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E95C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8064E960  41 82 00 1C */	beq lbl_8064E97C
/* 8064E964  3C A0 80 65 */	lis r5, __vt__10cCcD_GStts@ha
/* 8064E968  38 05 F5 08 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8064E96C  90 1F 00 00 */	stw r0, 0(r31)
/* 8064E970  7C 80 07 35 */	extsh. r0, r4
/* 8064E974  40 81 00 08 */	ble lbl_8064E97C
/* 8064E978  4B C8 03 C4 */	b __dl__FPv
lbl_8064E97C:
/* 8064E97C  7F E3 FB 78 */	mr r3, r31
/* 8064E980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E988  7C 08 03 A6 */	mtlr r0
/* 8064E98C  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E990  4E 80 00 20 */	blr 
